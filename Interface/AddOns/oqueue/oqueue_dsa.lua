--[[ 
  @file       oqueue_dsa.lua
  @brief      digital signature authentication for oqueue

  @author     rmcinnis
  @date       june 14, 2013
  @copyright  Solid ICE Technologies
              this file may be distributed so long as it remains unaltered
              if this file is posted to a web site, credit must be given to me along with a link to my web page
              no code in this file may be used in other works without expressed permission  
]]--
local addonName, OQ = ... ;
local oq = OQ:mod() ; -- thank goodness i stumbled across this trick
if (oq.ds == nil) then
  oq.ds = {} ;
end
local ds = oq.ds ;
local _ ; -- throw away (was getting taint warning; what happened blizz?)

--------------------------------------------------------------------------
-- asn.1  start
--------------------------------------------------------------------------

local function tCopy( table )
	copy = {}
	for k,v in pairs( table ) do
		copy[k] = v;
	end
	return copy;
end

Stream = {

	new = function( enc, pos )
		self = self or {}
		if type(enc) == "table" then
			self.enc = enc.enc;
			self.pos = enc.pos;
		else
			self.enc = enc;
			self.pos = pos;
		end
		return self;
	end,
	
	get = function( self, pos )
	    if not pos then
			pos = self.pos;
			self.pos = self.pos + 1
		end
		if pos >= strlen(self.enc) then
			print('Requesting byte offset ' .. pos .. ' on a stream of length ' .. strlen(self.enc));
		end
		--print(string.byte( self.enc:sub(pos+1,pos+1) ), pos)
		return string.byte( self.enc:sub(pos+1,pos+1) );
	end,
	
}


ASN1 = {
	
	TagNames = {
		[0x30] = "SEQUENCE",
		[0x06] = "OBJECT_IDENTIFIER",
		[0x02] = "INTEGER",
		[0x03] = "BIT STRING",
	};
	
	new = function( stream, header, length, tag, sub )
		self = self or {}; -- TODO: tidy
		self.stream = stream;
		self.header = header;
		self.length = length;
		self.tag = tag;
		self.sub = sub;
		return self;
	end,
	
	decode = function( stream )
		if type(stream) ~= "table" then
			stream = Stream.new(stream, 0);
		end
		local streamStart = tCopy(Stream.new(stream));
		local tag = Stream.get(stream);
		local len = ASN1.decodeLength(stream);
		--print(stream.pos .."-".. streamStart.pos);
		local header = stream.pos - streamStart.pos;
		local sub = nil;
		if ASN1.hasContent( tag, len, stream ) then
			-- it has content, so we decode it
			local start = stream.pos;
			
			if tag == 0x03 then Stream.get(stream); end -- skip BitString unused bits, must be in [0, 7]
			
			sub = {};
			if len >= 0 then
				-- definite length
				local endp = start + len;
				while stream.pos < endp do
					tinsert( sub, ASN1.decode(stream) );
				end
				if stream.pos ~= endp then
					print("Content size is not correct for container starting at offset ",start);
					return false;
				end
			else
				-- undefined length
				while true do
					local s = ASN1.decode(stream);
					if s == false then return end
					if s.tag == 0 then
						break;
					end
					sub[#sub] = s;
				end
				len = start - stream.pos;
				
				print("Exception while decoding undefined length content: ",e);
				return false;
				
			end
		else
			stream.pos = stream.pos + len; -- skip content
		end
		return tCopy(ASN1.new( streamStart, header, len, tag, sub ));
	end,
	
	decodeLength = function( stream )
		local buf = Stream.get(stream);
		local len = bit.band( buf, 0x7F );
		if len == buf then -- TODO: simplify this block
			return len;
		elseif len > 3 then
			print("Length over 24 bits not supported at position ",(stream.pos - 1));
			return false;
		elseif len == 0 then
			return -1; -- undefined
		end
		buf = 0;
		for i = 0,len-1 do
			buf = bit.bor( bit.lshift(buf,8), Stream.get(stream) );
		end
		return buf;
	end,
	
	hasContent = function( tag, len, stream )
		if bit.band( tag, 0x20 ) ~= 0 then -- constructed
			return true;
		elseif ( tag < 0x03 ) or ( tag > 0x04 ) then
			return false;
		end
		local p = tCopy(Stream.new(stream));
		if tag == 0x03 then Stream.get(p); end -- BitString unused bits, must be in [0, 7]
		local subTag = Stream.get(p);
		if bit.band( bit.rshift( subTag, 6 ), 0x01 ) ~= 0 then -- not (universal or context)
			return false;
		end
		local subLength = ASN1.decodeLength(p);
		if subLength == false then
			return false;
		end
		return ((p.pos - stream.pos) + subLength == len);
	end,
	
	getSequentialValues = function( self )
		local values = {};
		ASN1.iterate( self, function( t, n )
			if not t.sub then -- has no children, must be a value
				tinsert( values, ASN1.getValue(t) );
			end
		end)
		return unpack(values);
	end,
	
	toString = function( self )
		return ASN1.getTagName( self.tag ) .. "@" .. self.stream.pos .. "[header:" .. self.header .. ",length:" .. self.length .. ",sub:" .. (self.sub and #self.sub or "nil") .. "]";
	end,
	
	iterate = function( t, f, n )
		if type(t) ~= "table" or type(f) ~= "function" then return; end
		n = n or 0;
		f(t,n);
		for k,v in pairs(t.sub or {}) do
			ASN1.iterate( v, f, n+1 );
		end
	end,
	
	getValue = function( self )
		local start = self.stream.pos + self.header;
		return self.stream.enc:sub( start+1, start + self.length );
	end,
	
	getTagName = function( tag )
		return ASN1.TagNames[tag] or "Universal_"..tag
	end,
}

--------------------------------------------------------------------------
-- asn.1  end
--------------------------------------------------------------------------
--------------------------------------------------------------------------
-- sha-2  start
--------------------------------------------------------------------------
-- SHA-256 code in Lua 5.2; based on the pseudo-code from
-- Wikipedia (http://en.wikipedia.org/wiki/SHA-2)

local band, bxor, rshift, bnot =
  bit.band, bit.bxor, bit.rshift, bit.bnot
local string, setmetatable, assert = string, setmetatable, assert

-- Initialize table of round constants
-- (first 32 bits of the fractional parts of the cube roots of the first
-- 64 primes 2..311):
local k = {
   0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5,
   0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
   0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3,
   0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
   0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc,
   0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
   0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7,
   0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
   0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13,
   0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
   0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3,
   0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
   0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5,
   0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
   0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208,
   0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2,
}

-- bit rotate right
local function rrotate(x, disp) -- Lua5.2 inspired
  disp = disp % 32
  local low = bit.band(x, 2^disp-1)
  return bit.rshift(x, disp) + bit.lshift(low, 32-disp)
end

-- transform number 'l' in a big-endian sequence of 'n' bytes
-- (coded as a string)
local function num2s (l, n)
  local s = ""
  for i = 1, n do
    local rem = l % 256
    s = string.char(rem) .. s
    l = (l - rem) / 256
  end
  return s
end

-- transform the big-endian sequence of four bytes starting at
-- index 'i' in 's' into a number
local function s232num (s, i)
  local n = 0
  for i = i, i + 3 do
    n = n*256 + string.byte(s, i)
  end
  return n
end


-- append the bit '1' to the message
-- append k bits '0', where k is the minimum number >= 0 such that the
-- resulting message length (in bits) is congruent to 448 (mod 512)
-- append length of message (before pre-processing), in bits, as 64-bit
-- big-endian integer
local function preproc (msg, len)
  local extra = 64 - ((len + 1 + 8) % 64)
  len = num2s(8 * len, 8)    -- original len in bits, coded
  msg = msg .. "\128" .. string.rep("\0", extra) .. len
  assert(#msg % 64 == 0)
  return msg
end

local function digestblock (msg, i, H)
    -- break chunk into sixteen 32-bit big-endian words w[1..16]
    local w = {}
    for j = 1, 16 do
      w[j] = s232num(msg, i + (j - 1)*4)
    end

    -- Extend the sixteen 32-bit words into sixty-four 32-bit words:
    for j = 17, 64 do
      local v = w[j - 15]
      local s0 = bxor(rrotate(v, 7), rrotate(v, 18), rshift(v, 3))
      v = w[j - 2]
      local s1 = bxor(rrotate(v, 17), rrotate(v, 19), rshift(v, 10))
      w[j] = w[j - 16] + s0 + w[j - 7] + s1
    end

    -- Initialize hash value for this chunk:
    local a, b, c, d, e, f, g, h =
        H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8]

    -- Main loop:
    for i = 1, 64 do
      local s0 = bxor(rrotate(a, 2), rrotate(a, 13), rrotate(a, 22))
      local maj = bxor(band(a, b), band(a, c), band(b, c))
      local t2 = s0 + maj
      local s1 = bxor(rrotate(e, 6), rrotate(e, 11), rrotate(e, 25))
      local ch = bxor (band(e, f), band(bnot(e), g))
      local t1 = h + s1 + ch + k[i] + w[i]

      h = g
      g = f
      f = e
      e = d + t1
      d = c
      c = b
      b = a
      a = t1 + t2
    end

    -- Add (mod 2^32) this chunk's hash to result so far:
    H[1] = band(H[1] + a)
    H[2] = band(H[2] + b)
    H[3] = band(H[3] + c)
    H[4] = band(H[4] + d)
    H[5] = band(H[5] + e)
    H[6] = band(H[6] + f)
    H[7] = band(H[7] + g)
    H[8] = band(H[8] + h)
end

local function Sha256 (msg)
  msg = preproc(msg, #msg)
  local H = {0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a,0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19}
  -- Process the message in successive 512-bit (64 bytes) chunks:
  for i = 1, #msg, 64 do
    digestblock(msg, i, H)
  end
  return BinToHex(num2s(H[1], 4)..num2s(H[2], 4)..num2s(H[3], 4)..num2s(H[4], 4)..num2s(H[5], 4)..num2s(H[6], 4)..num2s(H[7], 4)..num2s(H[8], 4))
end
--------------------------------------------------------------------------
--  sha-2  end
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--  base-64  start
--------------------------------------------------------------------------
-- Lua 5.1+ base64 v3.0 (c) 2009 by Alex Kloss <alexthkloss@web.de>
-- licensed under the terms of the LGPL2

-- character table string
local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'

-- encoding
local function Base64_Encode(data)
    return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

-- decoding
local function Base64_Decode(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(7-i) or 0) end
        return string.char(c*2)
    end))
end
--------------------------------------------------------------------------
--  base-64  end
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--  bignum  start
--------------------------------------------------------------------------
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%{{{1
--
--  File Name:              bignum.lua
--  Package Name:           BigNum 
--
--  Project:    Big Numbers library for Lua
--  Mantainers: fmp - Frederico Macedo Pessoa
--              msm - Marco Serpa Molinaro
--
--  History:
--     Version      Autor       Date            Notes
--      1.1      fmp/msm    12/11/2004   Some bug fixes (thanks Isaac Gouy)
--      alfa     fmp/msm    03/22/2003   Start of Development
--      beta     fmp/msm    07/11/2003   Release
--
--  Description:
--    Big numbers manipulation library for Lua.
--    A Big Number is a table with as many numbers as necessary to represent
--       its value in base 'RADIX'. It has a field 'len' containing the num-
--       ber of such numbers and a field 'signal' that may assume the values
--       '+' and '-'.
--
--$.%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

--%%%%%%%%  Constants used in the file %%%%%%%%--{{{1
   RADIX = 10^7 ;
   RADIX_LEN = math.floor( math.log10 ( RADIX ) ) ;


--%%%%%%%%        Start of Code        %%%%%%%%--

BigNum = {} ;
BigNum.mt = {} ;

local error = print;
math.mod = math.fmod;
-- because lazy
function BigNum.mod( bnum1, bnum2 )
	_, result = BigNum.mt.div( bnum1, bnum2 )
	return result;
end
-- Modular exponentiation using the Right-to-left binary method
function BigNum.mpow( base, exponent, modulus, yield )
	local yield = yield or function()end;
	
	local result = BigNum.new(1);
	while BigNum.lt( BigNum.new(0), exponent ) do
		exponent, remainder = BigNum.mt.div( exponent, 2 );
		if remainder[0] == 1 then
			_, result = BigNum.mt.div( BigNum.mt.mul( result, base ), modulus );
		end
		_, base = BigNum.mt.div( BigNum.mt.mul( base, base ), modulus )
		yield(exponent)
	end
	return result
end

function BigNum.exGCD( p, q )
	if BigNum.mt.eq( q, 0 ) then return p, BigNum.new(1), BigNum.new(0); end
    local vals = { BigNum.exGCD( q, BigNum.mod( p, q ) ) };
	local d = vals[1];
    local a = vals[3];
    local b = BigNum.mt.sub( vals[2], BigNum.mt.mul( BigNum.mt.div( p, q ), vals[3] ) );
    return d, a, b;
end

--BigNum.new{{{1
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--
--  Function: New 
--
--
--  Description:
--     Creates a new Big Number based on the parameter num.
--
--  Parameters:
--     num - a string, number or BigNumber.
--
--  Returns:
--     A Big Number, or a nil value if an error occured.
--
--
--  %%%%%%%% --

function BigNum.new( num ) --{{{2
   local bignum = {} ;
   setmetatable( bignum , BigNum.mt ) ;
   BigNum.change( bignum , num ) ;
   return bignum ;
end

--%%%%%%%%%%%%%%%%%%%% Functions for metatable %%%%%%%%%%%%%%%%%%%%--{{{1
--BigNum.mt.sub{{{2
function BigNum.mt.sub( num1 , num2 )
   local temp = BigNum.new() ;
   local bnum1 = BigNum.new( num1 ) ;
   local bnum2 = BigNum.new( num2 ) ;
   BigNum.sub( bnum1 , bnum2 , temp ) ;
   return temp ;
end

--BigNum.mt.add{{{2
function BigNum.mt.add( num1 , num2 )
   local temp = BigNum.new() ;
   local bnum1 = BigNum.new( num1 ) ;
   local bnum2 = BigNum.new( num2 ) ;
   BigNum.add( bnum1 , bnum2 , temp ) ;
   return temp ;
end

--BigNum.mt.mul{{{2
function BigNum.mt.mul( num1 , num2 )
   local temp = BigNum.new() ;
   local bnum1 = BigNum.new( num1 ) ;
   local bnum2 = BigNum.new( num2 ) ;
   BigNum.mul( bnum1 , bnum2 , temp ) ;
   return temp ;
end

--BigNum.mt.div{{{2
function BigNum.mt.div( num1 , num2 )
   local bnum1 = {} ;
   local bnum2 = {} ;
   local bnum3 = BigNum.new() ;
   local bnum4 = BigNum.new() ;
   bnum1 = BigNum.new( num1 ) ;
   bnum2 = BigNum.new( num2 ) ;
   BigNum.div( bnum1 , bnum2 , bnum3 , bnum4 ) ;
   return bnum3 , bnum4 ;
end

--BigNum.mt.tostring{{{2
function BigNum.mt.tostring( bnum )
   local i = 0 ;
   local j = 0 ;
   local str = "" ;
   local temp = "" ;
   if bnum == nil then
      return "nil" ;
   elseif bnum.len > 0 then
      for i = bnum.len - 2 , 0 , -1  do
         for j = 0 , RADIX_LEN - string.len( bnum[i] ) - 1 do
            temp = temp .. '0' ;
         end
         temp = temp .. bnum[i] ;
      end
      temp = bnum[bnum.len - 1] .. temp ;
      if bnum.signal == '-' then
         temp = bnum.signal .. temp ;
      end
      return temp ;
   else
      return "" ;
   end
end

--BigNum.mt.pow{{{2
function BigNum.mt.pow( num1 , num2 )
   local bnum1 = BigNum.new( num1 ) ;
   local bnum2 = BigNum.new( num2 ) ;
   return BigNum.pow( bnum1 , bnum2 ) ;
end

--BigNum.mt.eq{{{2
function BigNum.mt.eq( num1 , num2 )
   local bnum1 = BigNum.new( num1 ) ;
   local bnum2 = BigNum.new( num2 ) ;
   return BigNum.eq( bnum1 , bnum2 ) ;
end

--BigNum.mt.lt{{{2
function BigNum.mt.lt( num1 , num2 )
   local bnum1 = BigNum.new( num1 ) ;
   local bnum2 = BigNum.new( num2 ) ;
   return BigNum.lt( bnum1 , bnum2 ) ;
end

--BigNum.mt.le{{{2
function BigNum.mt.le( num1 , num2 )
   local bnum1 = BigNum.new( num1 ) ;
   local bnum2 = BigNum.new( num2 ) ;
   return BigNum.le( bnum1 , bnum2 ) ;
end

--BigNum.mt.unm{{{2
function BigNum.mt.unm( num )
   local ret = BigNum.new( num )
   if ret.signal == '+' then
      ret.signal = '-'
   else
      ret.signal = '+'
   end
   return ret
end

--%%%%%%%%%%%%%%%%%%%% Metatable Definitions %%%%%%%%%%%%%%%%%%%%--{{{1

BigNum.mt.__metatable = "hidden"           ; -- answer to getmetatable(aBignum)
-- BigNum.mt.__index     = "inexistent field" ; -- attempt to acess nil valued field 
-- BigNum.mt.__newindex  = "not available"    ; -- attempt to create new field
BigNum.mt.__tostring  = BigNum.mt.tostring ;
-- arithmetics
BigNum.mt.__add = BigNum.mt.add ;
BigNum.mt.__sub = BigNum.mt.sub ;
BigNum.mt.__mul = BigNum.mt.mul ;
BigNum.mt.__div = BigNum.mt.div ;
BigNum.mt.__pow = BigNum.mt.pow ;
BigNum.mt.__unm = BigNum.mt.unm ;
-- Comparisons
BigNum.mt.__eq = BigNum.mt.eq   ; 
BigNum.mt.__le = BigNum.mt.le   ;
BigNum.mt.__lt = BigNum.mt.lt   ;
--concatenation
-- BigNum.me.__concat = ???

setmetatable( BigNum.mt, { __index = "inexistent field", __newindex = "not available", __metatable="hidden" } ) ;

--%%%%%%%%%%%%%%%%%%%% Basic Functions %%%%%%%%%%%%%%%%%%%%--{{{1
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%{{{2
--
--  Function: ADD 
--
--
--  Description:
--     Adds two Big Numbers.
--
--  Parameters:
--     bnum1, bnum2 - Numbers to be added.
--     bnum3 - result
--
--  Returns:
--     0
--
--  Exit assertions:
--     bnum3 is the result of the sum.
--
--  %%%%%%%% --
--Funcao BigNum.add{{{2
function BigNum.add( bnum1 , bnum2 , bnum3 )
   local maxlen = 0 ;
   local i = 0 ;
   local carry = 0 ;
   local signal = '+' ;
   local old_len = 0 ;
   --Handle the signals
   if bnum1 == nil or bnum2 == nil or bnum3 == nil then
      error("Function BigNum.add: parameter nil") ;
   elseif bnum1.signal == '-' and bnum2.signal == '+' then
      bnum1.signal = '+' ;
      BigNum.sub( bnum2 , bnum1 , bnum3 ) ;

      if not rawequal(bnum1, bnum3) then
         bnum1.signal = '-' ;
      end
      return 0 ;
   elseif bnum1.signal == '+' and bnum2.signal == '-' then   
      bnum2.signal = '+' ;
      BigNum.sub( bnum1 , bnum2 , bnum3 ) ;
      if not rawequal(bnum2, bnum3) then
         bnum2.signal = '-' ;
      end
      return 0 ;
   elseif bnum1.signal == '-' and bnum2.signal == '-' then
      signal = '-' ;
   end
   --
   old_len = bnum3.len ;
   if bnum1.len > bnum2.len then
      maxlen = bnum1.len ;
   else
      maxlen = bnum2.len ;
      bnum1 , bnum2 = bnum2 , bnum1 ;
   end
   --School grade sum
   for i = 0 , maxlen - 1 do
      if bnum2[i] ~= nil then
         bnum3[i] = bnum1[i] + bnum2[i] + carry ;
      else
         bnum3[i] = bnum1[i] + carry ;
      end
      if bnum3[i] >= RADIX then
         bnum3[i] = bnum3[i] - RADIX ;
         carry = 1 ;
      else
         carry = 0 ;
      end
   end
   --Update the answer's size
   if carry == 1 then
      bnum3[maxlen] = 1 ;
   end
   bnum3.len = maxlen + carry ;
   bnum3.signal = signal ;
   for i = bnum3.len, old_len do
      bnum3[i] = nil ;
   end
   return 0 ;
end


--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%{{{2
--
--  Function: SUB 
--
--
--  Description:
--     Subtracts two Big Numbers.
--
--  Parameters:
--     bnum1, bnum2 - Numbers to be subtracted.
--     bnum3 - result
--
--  Returns:
--     0
--
--  Exit assertions:
--     bnum3 is the result of the subtraction.
--
--  %%%%%%%% --
--Funcao BigNum.sub{{{2
function BigNum.sub( bnum1 , bnum2 , bnum3 )
   local maxlen = 0 ;
   local i = 0 ;
   local carry = 0 ;
   local old_len = 0 ;
   --Handle the signals
   
   if bnum1 == nil or bnum2 == nil or bnum3 == nil then
      error("Function BigNum.sub: parameter nil") ;
   elseif bnum1.signal == '-' and bnum2.signal == '+' then
      bnum1.signal = '+' ;
      BigNum.add( bnum1 , bnum2 , bnum3 ) ;
      bnum3.signal = '-' ;
      if not rawequal(bnum1, bnum3) then
         bnum1.signal = '-' ;
      end
      return 0 ;
   elseif bnum1.signal == '-' and bnum2.signal == '-' then
      bnum1.signal = '+' ;
      bnum2.signal = '+' ;
      BigNum.sub( bnum2, bnum1 , bnum3 ) ;
      if not rawequal(bnum1, bnum3) then
         bnum1.signal = '-' ;
      end
      if not rawequal(bnum2, bnum3) then
         bnum2.signal = '-' ;
      end
      return 0 ;
   elseif bnum1.signal == '+' and bnum2.signal == '-' then
      bnum2.signal = '+' ;
      BigNum.add( bnum1 , bnum2 , bnum3 ) ;
      if not rawequal(bnum2, bnum3) then
         bnum2.signal = '-' ;
      end
      return 0 ;
   end
   --Tests if bnum2 > bnum1
   if BigNum.compareAbs( bnum1 , bnum2 ) == 2 then
      BigNum.sub( bnum2 , bnum1 , bnum3 ) ;
      bnum3.signal = '-' ;
      return 0 ;
   else
      maxlen = bnum1.len ;
   end
   old_len = bnum3.len ;
   bnum3.len = 0 ;
   --School grade subtraction
   for i = 0 , maxlen - 1 do
      if bnum2[i] ~= nil then
         bnum3[i] = bnum1[i] - bnum2[i] - carry ;
      else
         bnum3[i] = bnum1[i] - carry ;
      end
      if bnum3[i] < 0 then
         bnum3[i] = RADIX + bnum3[i] ;
         carry = 1 ;
      else
         carry = 0 ;
      end

      if bnum3[i] ~= 0 then
         bnum3.len = i + 1 ;
      end
   end
   bnum3.signal = '+' ;
   --Check if answer's size if zero
   if bnum3.len == 0 then
      bnum3.len = 1 ;
      bnum3[0]  = 0 ;
   end
   if carry == 1 then
      error( "Error in function sub" ) ;
   end
   for i = bnum3.len , max( old_len , maxlen - 1 ) do
      bnum3[i] = nil ;
   end
   return 0 ;
end


--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%{{{2
--
--  Function: MUL 
--
--
--  Description:
--     Multiplies two Big Numbers.
--
--  Parameters:
--     bnum1, bnum2 - Numbers to be multiplied.
--     bnum3 - result
--
--  Returns:
--     0
--
--  Exit assertions:
--     bnum3 is the result of the multiplication.
--
--  %%%%%%%% --
--BigNum.mul{{{2
--can't be made in place
function BigNum.mul( bnum1 , bnum2 , bnum3 )
   local i = 0 ; j = 0 ;
   local temp = BigNum.new( ) ;
   local temp2 = 0 ;
   local carry = 0 ;
   local oldLen = bnum3.len ;
   if bnum1 == nil or bnum2 == nil or bnum3 == nil then
      error("Function BigNum.mul: parameter nil") ;
   --Handle the signals
   elseif bnum1.signal ~= bnum2.signal then
      BigNum.mul( bnum1 , -bnum2 , bnum3 ) ;
      bnum3.signal = '-' ;
      return 0 ;
   end
   bnum3.len =  ( bnum1.len ) + ( bnum2.len ) ;
   --Fill with zeros
   for i = 1 , bnum3.len do
      bnum3[i - 1] = 0 ;
   end
   --Places nil where passes through this
   for i = bnum3.len , oldLen do
      bnum3[i] = nil ;
   end
   --School grade multiplication
   for i = 0 , bnum1.len - 1 do
      for j = 0 , bnum2.len - 1 do
         carry =  ( bnum1[i] * bnum2[j] + carry ) ;
         carry = carry + bnum3[i + j] ;
         bnum3[i + j] = math.mod ( carry , RADIX ) ;
         temp2 = bnum3[i + j] ;
         carry =  math.floor ( carry / RADIX ) ;
      end
      if carry ~= 0 then
         bnum3[i + bnum2.len] = carry ;
      end
      carry = 0 ;
   end

   --Update the answer's size
   for i = bnum3.len - 1 , 1 , -1 do
      if bnum3[i] ~= nil and bnum3[i] ~= 0 then
         break ;
      else
         bnum3[i] = nil ;
      end
      bnum3.len = bnum3.len - 1 ;
   end
   return 0 ; 
end


--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%{{{2
--
--  Function: DIV 
--
--
--  Description:
--     Divides bnum1 by bnum2.
--
--  Parameters:
--     bnum1, bnum2 - Numbers to be divided.
--     bnum3 - result
--     bnum4 - remainder
--
--  Returns:
--     0
--
--  Exit assertions:
--     bnum3 is the result of the division.
--     bnum4 is the remainder of the division.
--
--  %%%%%%%% --
--BigNum.div{{{2
function BigNum.div( bnum1 , bnum2 , bnum3 , bnum4 )
   local temp = BigNum.new() ;
   local temp2 = BigNum.new() ;
   
    -- elci
   local one = BigNum.new( "1" ) ;
   local zero = BigNum.new( "0" ) ;
   --Check division by zero
   if BigNum.compareAbs( bnum2 , zero ) == 0 then
      error( "Function BigNum.div: Division by zero" ) ;
   end     
   --Handle the signals
   if bnum1 == nil or bnum2 == nil or bnum3 == nil or bnum4 == nil then
      error( "Function BigNum.div: parameter nil" ) ;
   elseif bnum1.signal == "+" and bnum2.signal == "-" then
      bnum2.signal = "+" ;
      BigNum.div( bnum1 , bnum2 , bnum3 , bnum4 ) ;
      bnum2.signal = "-" ;
      bnum3.signal = "-" ;
      return 0 ;
   elseif bnum1.signal == "-" and bnum2.signal == "+" then
      bnum1.signal = "+" ;
      BigNum.div( bnum1 , bnum2 , bnum3 , bnum4 ) ;
      bnum1.signal = "-" ;
      if bnum4 < zero then --Check if remainder is negative
         BigNum.add( bnum3 , one , bnum3 ) ;
         BigNum.sub( bnum2 , bnum4 , bnum4 ) ;
      end
      bnum3.signal = "-" ;
      return 0 ;
   elseif bnum1.signal == "-" and bnum2.signal == "-" then
      bnum1.signal = "+" ;
      bnum2.signal = "+" ;
      BigNum.div( bnum1 , bnum2 , bnum3 , bnum4 ) ;
      bnum1.signal = "-" ;
      if bnum4 < zero then --Check if remainder is negative      
         BigNum.add( bnum3 , one , bnum3 ) ;
         BigNum.sub( bnum2 , bnum4 , bnum4 ) ;
      end
      bnum2.signal = "-" ;
      return 0 ;
   end
   
   
   temp.len = bnum1.len - bnum2.len - 1 ;

   --Reset variables
   BigNum.change( bnum3 , "0" ) ;
   BigNum.change( bnum4 , "0" ) ; 

   BigNum.copy( bnum1 , bnum4 ) ;

   --Check if can continue dividing
   while( BigNum.compareAbs( bnum4 , bnum2 ) ~= 2 ) do
      if bnum4[bnum4.len - 1] >= bnum2[bnum2.len - 1] then
         BigNum.put( temp , math.floor( bnum4[bnum4.len - 1] / bnum2[bnum2.len - 1] ) , bnum4.len - bnum2.len ) ;
         temp.len = bnum4.len - bnum2.len + 1 ;
      else
         BigNum.put( temp , math.floor( ( bnum4[bnum4.len - 1] * RADIX + bnum4[bnum4.len - 2] ) / bnum2[bnum2.len -1] ) , bnum4.len - bnum2.len - 1 ) ;
         temp.len = bnum4.len - bnum2.len ;
      end
    
      if bnum4.signal ~= bnum2.signal then
         temp.signal = "-";
      else
         temp.signal = "+";
      end
      BigNum.add( temp , bnum3 , bnum3 )  ;
      temp = temp * bnum2 ;
      BigNum.sub( bnum4 , temp , bnum4 ) ;
   end

   --Update if the remainder is negative
   if bnum4.signal == '-' then
      decr( bnum3 ) ;
      BigNum.add( bnum2 , bnum4 , bnum4 ) ;
   end
   return 0 ;
end

--%%%%%%%%%%%%%%%%%%%% Compound Functions %%%%%%%%%%%%%%%%%%%%--{{{1

--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%{{{2
--
--  Function: POW / EXP  
--
--
--  Description:
--     Computes a big number which represents the bnum2-th power of bnum1.
--
--  Parameters:
--     bnum1 - base
--     bnum2 - expoent
--
--  Returns:
--     Returns a big number which represents the bnum2-th power of bnum1.
--
--  %%%%%%%% --
--BigNum.exp{{{2
function BigNum.pow( bnum1 , bnum2 )
   local n = BigNum.new( bnum2 ) ;
   local y = BigNum.new( 1 ) ;
   local z = BigNum.new( bnum1 ) ;
   local zero = BigNum.new( "0" ) ;
   if bnum2 < zero then
      error( "Function BigNum.exp: domain error" ) ;
   elseif bnum2 == zero then
      return y ;
   end
   while 1 do
      if math.mod( n[0] , 2 ) == 0 then
         n = n / 2 ;
      else
         n = n / 2 ;
         y = z * y  ;
         if n == zero then
            return y ;
         end
      end
      z = z * z ;
   end
end
-- Português :
BigNum.exp = BigNum.pow

--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%{{{2
--
--  Function: GCD / MMC
--
--
--  Description:
--     Computes the greatest commom divisor of bnum1 and bnum2.
--
--  Parameters:
--     bnum1, bnum2 - positive numbers
--
--  Returns:
--     Returns a big number witch represents the gcd between bnum1 and bnum2.
--
--  %%%%%%%% --
--BigNum.gcd{{{2
function BigNum.gcd( bnum1 , bnum2 )
   local a = {} ;
   local b = {} ;
   local c = {} ;
   local d = {} ;
   local zero = {} ;
   zero = BigNum.new( "0" ) ;
   if bnum1 == zero or bnum2 == zero then
      return BigNum.new( "1" ) ;
   end
   a = BigNum.new( bnum1 ) ;
   b = BigNum.new( bnum2 ) ;
   a.signal = '+' ;
   b.signal = '+' ;
   c = BigNum.new() ;
   d = BigNum.new() ;
   while b > zero do
      BigNum.div( a , b , c , d ) ;
      a , b , d = b , d , a ;
   end
   return a ;
end
-- Português: 
BigNum.mmc = BigNum.gcd

--%%%%%%%%%%%%%%%%%%%% Comparison Functions %%%%%%%%%%%%%%%%%%%%--{{{1

--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%{{{2
--
--  Function: EQ
--
--
--  Description:
--     Compares two Big Numbers.
--
--  Parameters:
--     bnum1, bnum2 - numbers
--
--  Returns:
--     Returns true if they are equal or false otherwise.
--
--  %%%%%%%% --
--BigNum.eq{{{2
function BigNum.eq( bnum1 , bnum2 )
   if BigNum.compare( bnum1 , bnum2 ) == 0 then
      return true ;
   else
      return false ;
   end
end

--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%{{{2
--
--  Function: LT
--
--
--  Description:
--     Verifies if bnum1 is lesser than bnum2.
--
--  Parameters:
--     bnum1, bnum2 - numbers
--
--  Returns:
--     Returns true if bnum1 is lesser than bnum2 or false otherwise.
--
--  %%%%%%%% --
--BigNum.lt{{{2
function BigNum.lt( bnum1 , bnum2 )
   if BigNum.compare( bnum1 , bnum2 ) == 2 then
      return true ;
   else
      return false ;
   end
end


--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%{{{2
--
--  Function: LE
--
--
--  Description:
--     Verifies if bnum1 is lesser or equal than bnum2.
--
--  Parameters:
--     bnum1, bnum2 - numbers
--
--  Returns:
--     Returns true if bnum1 is lesser or equal than bnum2 or false otherwise.
--
--  %%%%%%%% --
--BigNum.le{{{2
function BigNum.le( bnum1 , bnum2 )
   local temp = -1 ;
   temp = BigNum.compare( bnum1 , bnum2 )
   if temp == 0 or temp == 2 then
      return true ;
   else
      return false ;
   end
end

--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%{{{2
--
--  Function: Compare Absolute Values
--
--
--  Description:
--     Compares absolute values of bnum1 and bnum2.
--
--  Parameters:
--     bnum1, bnum2 - numbers
--
--  Returns:
--     1 - |bnum1| > |bnum2|
--     2 - |bnum1| < |bnum2|
--     0 - |bnum1| = |bnum2|
--
--  %%%%%%%% --
--BigNum.compareAbs{{{2
function BigNum.compareAbs( bnum1 , bnum2 )
   if bnum1 == nil or bnum2 == nil then
      error("Function compare: parameter nil") ;
   elseif bnum1.len > bnum2.len then
      return 1 ;
   elseif bnum1.len < bnum2.len then
      return 2 ;
   else
      local i ;
      for i = bnum1.len - 1 , 0 , -1 do
         if bnum1[i] > bnum2[i] then
            return 1 ;
         elseif bnum1[i] < bnum2[i] then
            return 2 ;
         end
      end
   end
   return 0 ;
end


--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%{{{2
--
--  Function: Compare 
--
--
--  Description:
--     Compares values of bnum1 and bnum2.
--
--  Parameters:
--     bnum1, bnum2 - numbers
--
--  Returns:
--     1 - |bnum1| > |bnum2|
--     2 - |bnum1| < |bnum2|
--     0 - |bnum1| = |bnum2|
--
--  %%%%%%%% --
--BigNum.compare{{{2
function BigNum.compare( bnum1 , bnum2 )
   local signal = 0 ;
   
   if bnum1 == nil or bnum2 == nil then
      error("Funtion BigNum.compare: parameter nil") ;
   elseif bnum1.signal == '+' and bnum2.signal == '-' then
      return 1 ;
   elseif bnum1.signal == '-' and bnum2.signal == '+' then
      return 2 ;
   elseif bnum1.signal == '-' and bnum2.signal == '-' then
      signal = 1 ;
   end
   if bnum1.len > bnum2.len then
      return 1 + signal ;
   elseif bnum1.len < bnum2.len then
      return 2 - signal ;
   else
      local i ;
      for i = bnum1.len - 1 , 0 , -1 do
         if bnum1[i] > bnum2[i] then
            return 1 + signal ;
	 elseif bnum1[i] < bnum2[i] then
	    return 2 - signal ;
	 end
      end
   end
   return 0 ;
end         


--%%%%%%%%%%%%%%%%%%%% Low level Functions %%%%%%%%%%%%%%%%%%%%--{{{1
--BigNum.copy{{{2
function BigNum.copy( bnum1 , bnum2 )
   if bnum1 ~= nil and bnum2 ~= nil then
      local i ;
      for i = 0 , bnum1.len - 1 do
         bnum2[i] = bnum1[i] ;
      end
      bnum2.len = bnum1.len ;
   else
      error("Function BigNum.copy: parameter nil") ;
   end
end


--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%{{{2
--
--  Function: Change
--
--  Description:
--     Changes the value of a BigNum.
--     This function is called by BigNum.new.
--
--  Parameters:
--     bnum1, bnum2 - numbers
--
--  Returns:
--     1 - |bnum1| > |bnum2|
--     2 - |bnum1| < |bnum2|
--     0 - |bnum1| = |bnum2|
--
--  %%%%%%%% --
--BigNum.change{{{2
function BigNum.change( bnum1 , num )
   local j = 0 ;
   local len = 0  ;
   local num = num ;
   local l ;
   local oldLen = 0 ;
   if bnum1 == nil then
      error( "BigNum.change: parameter nil" ) ;
   elseif type( bnum1 ) ~= "table" then
      error( "BigNum.change: parameter error, type unexpected" ) ;
   elseif num == nil then
      bnum1.len = 1 ;
      bnum1[0] = 0 ;
      bnum1.signal = "+";
   elseif type( num ) == "table" and num.len ~= nil then  --check if num is a big number
      --copy given table to the new one
      for i = 0 , num.len do
         bnum1[i] = num[i] ;
      end
      if num.signal ~= '-' and num.signal ~= '+' then
         bnum1.signal = '+' ;
      else
         bnum1.signal = num.signal ;
      end
      oldLen = bnum1.len ;
      bnum1.len = num.len ;
   elseif type( num ) == "string" or type( num ) == "number" then
      if string.sub( num , 1 , 1 ) == '+' or string.sub( num , 1 , 1 ) == '-' then
         bnum1.signal = string.sub( num , 1 , 1 ) ;
         num = string.sub(num, 2) ;
      else
         bnum1.signal = '+' ;
      end
      num = string.gsub( num , " " , "" ) ;
      local sf = string.find( num , "e" ) ;
      --Handles if the number is in exp notation
      if sf ~= nil then
         num = string.gsub( num , "%." , "" ) ;
         local e = string.sub( num , sf + 1 ) ;
         e = tonumber(e) ;
         if e ~= nil and e > 0 then 
            e = tonumber(e) ;
         else
            error( "Function BigNum.change: string is not a valid number" ) ;
         end
         num = string.sub( num , 1 , sf - 2 ) ;
         for i = string.len( num ) , e do
            num = num .. "0" ;
         end
      else
         sf = string.find( num , "%." ) ;
         if sf ~= nil then
            num = string.sub( num , 1 , sf - 1 ) ;
         end
      end

      l = string.len( num ) ;
      oldLen = bnum1.len ;
      if (l > RADIX_LEN) then
         local mod = l-( math.floor( l / RADIX_LEN ) * RADIX_LEN ) ;
         for i = 1 , l-mod, RADIX_LEN do
            bnum1[j] = tonumber( string.sub( num, -( i + RADIX_LEN - 1 ) , -i ) );
            --Check if string dosn't represents a number
            if bnum1[j] == nil then
               error( "Function BigNum.change: string is not a valid number" ) ;
               bnum1.len = 0 ;
               return 1 ;
            end
            j = j + 1 ; 
            len = len + 1 ;
         end
         if (mod ~= 0) then
            bnum1[j] = tonumber( string.sub( num , 1 , mod ) ) ;
            bnum1.len = len + 1 ;
         else
            bnum1.len = len ;            
         end
         --Eliminate trailing zeros
         for i = bnum1.len - 1 , 1 , -1 do
            if bnum1[i] == 0 then
               bnum1[i] = nil ;
               bnum1.len = bnum1.len - 1 ;
            else
               break ;
            end
         end
         
      else     
         -- string.len(num) <= RADIX_LEN
         bnum1[j] = tonumber( num ) ;
         bnum1.len = 1 ;
      end
   else
      error( "Function BigNum.change: parameter error, type unexpected" ) ;
   end

   --eliminates the deprecated higher order 'algarisms'
   if oldLen ~= nil then
      for i = bnum1.len , oldLen do
         bnum1[i] = nil ;
      end
   end

   return 0 ;
end 

--BigNum.put{{{2
--Places int in the position pos of bignum, fills before with zeroes and
--after with nil.
function BigNum.put( bnum , int , pos )
   if bnum == nil then
      error("Function BigNum.put: parameter nil") ;
   end
   local i = 0 ;
   for i = 0 , pos - 1 do
      bnum[i] = 0 ;
   end
   bnum[pos] = int ;
   for i = pos + 1 , bnum.len do
      bnum[i] = nil ;
   end
   bnum.len = pos ;
   return 0 ;
end

--printraw{{{2
function printraw( bnum )
   local i = 0 ;
   if bnum == nil then
      error( "Function printraw: parameter nil" ) ;
   end
   while 1 == 1 do
      if bnum[i] == nil then
         io.write( ' len '..bnum.len ) ;
         if i ~= bnum.len then
            io.write( ' ERRO!!!!!!!!' ) ;
         end
         io.write( "\n" ) ;
         return 0 ;
      end
      io.write( 'r'..bnum[i] ) ;
      i = i + 1 ;
   end
end

--decr{{{2
function decr( bnum1 )
   local temp = {} ;
   temp = BigNum.new( "1" ) ;
   BigNum.sub( bnum1 , temp , bnum1 ) ;
   return 0 ;
end

--------------------------------------------------------------------------
--  bignum  end
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--  dsa_test  start
--------------------------------------------------------------------------

-- https://en.wikipedia.org/wiki/Digital_Signature_Algorithm#Signing
local function DSA_sign_main( payload, privkey )
  local w = BNmodInverse( s, q );
  local u1 = BigNum.mod( BigNum.mt.mul( M, w ), q ); 
  local u2 = BigNum.mod( BigNum.mt.mul( r, w ), q );
  local remainder = 0; 
  local gu1 = BigNum.new(1); 
  while BigNum.lt( BigNum.new(0), u1 ) do 
    print(strlen(BigNum.mt.tostring(u1))); 
    u1, remainder = BigNum.mt.div( u1, 2 ); 
    if remainder[0] == 1 then 
      _, gu1 = BigNum.mt.div( BigNum.mt.mul( gu1, g ), p ); 
    end 
    _, g = BigNum.mt.div( BigNum.mt.mul( g, g ), p ) ;
    coroutine.yield(); 
  end
  local yu2 = BigNum.new(1); 
  while BigNum.lt( BigNum.new(0), u2 ) do 
    print(strlen(BigNum.mt.tostring(u2))); 
    u2, remainder = BigNum.mt.div( u2, 2 ); 
    if remainder[0] == 1 then 
      _, yu2 = BigNum.mt.div( BigNum.mt.mul( yu2, y ), p ); 
    end 
    _, y = BigNum.mt.div( BigNum.mt.mul( y, y ), p ) ;
    coroutine.yield(); 
  end
  local v = BigNum.mod( BigNum.mod( BigNum.mt.mul( gu1, yu2 ), p ), q )
  
  print( BigNum.eq( v, r ) ); 
end

local function DSA_validate_main( payload, sig, pubkey )
print( "DSA_validate_main   payload[".. tostring(payload) .."]" ) ;
	local now = GetTime();
	-- collect values
	local public_key_asn1 = ASN1.decode( Base64_Decode( pubkey ) ); -- decode asn1 sequence
	--ASN1.iterate( public_key_asn1, function( t, n ) print(strrep(" | ",n)..ASN1.toString(t)); end)
	local _,p,q,g,y = ASN1.getSequentialValues(public_key_asn1); -- get binary values from structure
	p = HexToBigNum( BinToHex(p) );
	q = HexToBigNum( BinToHex(q) );
	g = HexToBigNum( BinToHex(g) );
	y = HexToBigNum( BinToHex(y) );
	local signature_asn1 = ASN1.decode( Base64_Decode( sig ) );
	--ASN1.iterate( signature_asn1, function( t, n ) print(strrep(" | ",n)..ASN1.toString(t)); end)
	local r,s = ASN1.getSequentialValues(signature_asn1);
	r = HexToBigNum( BinToHex(r) );
	s = HexToBigNum( BinToHex(s) );
	local M = HexToBigNum(Sha256(payload):sub(0,40));
	
	-- validate the signature
	if not ( BigNum.compareAbs( r, BigNum.new("0") ) == 1 and BigNum.lt( r, q ) -- 0 < r < q
	and BigNum.compareAbs( s, BigNum.new("0") ) == 1 and BigNum.lt( s, q ) ) then -- 0 < s < q
		print("signature out of range");
		return;
	end
	
	local w = BNmodInverse( s, q );
	local u1 = BigNum.mod( BigNum.mt.mul( M, w ), q );
	local u2 = BigNum.mod( BigNum.mt.mul( r, w ), q );
	local remainder = 0;
	local gu1 = BigNum.new(1);
	local yield_ticker = 0 ;
	while BigNum.lt( BigNum.new(0), u1 ) do
		print(strlen(BigNum.mt.tostring(u1)));
		u1, remainder = BigNum.mt.div( u1, 2 );
		if remainder[0] == 1 then
			_, gu1 = BigNum.mt.div( BigNum.mt.mul( gu1, g ), p );
		end
		_, g = BigNum.mt.div( BigNum.mt.mul( g, g ), p )
		
		yield_ticker = yield_ticker + 1 ;
		if (floor(yield_ticker % 2) == 0) then
                  coroutine.yield();
                end
	end
	
	local yu2 = BigNum.new(1);
	while BigNum.lt( BigNum.new(0), u2 ) do
		print(strlen(BigNum.mt.tostring(u2)));
		u2, remainder = BigNum.mt.div( u2, 2 );
		if remainder[0] == 1 then
			_, yu2 = BigNum.mt.div( BigNum.mt.mul( yu2, y ), p );
		end
		_, y = BigNum.mt.div( BigNum.mt.mul( y, y ), p )
		yield_ticker = yield_ticker + 1 ;
		if (floor(yield_ticker % 2) == 0) then
                  coroutine.yield();
                end
	end
	local v = BigNum.mod( BigNum.mod( BigNum.mt.mul( gu1, yu2 ), p ), q )
	local is_valid = BigNum.eq( v, r ) ;

	print( is_valid );
	print(GetTime()-now,"seconds");
	return is_valid ;
end

local function DSA_validate( payload, sig, pubkey )
  if (ds._thread_frame == nil) then
    ds._thread_frame = CreateFrame("Frame") ;
    ds._thread_frame:SetScript("OnUpdate", function(self, elapsed)
                                             local status = nil ;
                                             if (self.t) then
                                               status = coroutine.status(self.t) ;
                                             end
                                             if (self.t) and (status ~= "dead") then
                                               local flag, out = coroutine.resume(self.t, self._payload, self._sig, self._pubkey ) ;
--print( "thread resuming: ".. tostring(self.t) .."  status: ".. tostring(status) .."  flag(".. tostring(flag) ..")  out(".. tostring(out) ..")" ) ;
elseif (self.t) and (status == "dead") then
--print( "thread dead: ".. tostring(self.t) ) ;
self.t = nil ; -- how to release or reuse a thread??
                                             end
                                           end ) ;
  end

  if (ds._thread_frame.t == nil) or (coroutine.status(ds._thread_frame.t) == "dead") then
    ds._thread_frame._payload = payload ;
    ds._thread_frame._sig     = sig ;
    ds._thread_frame._pubkey  = pubkey ;
    ds._thread_frame.t = coroutine.create( DSA_validate_main ) ;
--    print( "thread created:  ".. tostring(ds._thread_frame.t) ) ;
  else
    print( "thread busy:  ".. tostring(ds._thread_frame.t) ) ;
    return nil ;
  end
  return 1 ;
end

function BNnumBits( n )
	t = {[0]=3,3,2,2,1,1,1,1};
	h = BNToHex(n);
	return (strlen(h)*4)-(t[tonumber(h:sub(1,1),16)] or 0);
end
function BNToHex( n )
	if type(n) ~= "table" then n = BigNum.new(n); end
	local k,out = "0123456789ABCDEF","";
	n.signal = "+";
	while BigNum.mt.lt( 0, n ) do
		n, r = BigNum.mt.div( n, 16 );
		r = BigNum.mt.tostring(r)+1;
		out = k:sub(r,r)..out;
	end
	return out;
end
function BNrshift( bnum1, n )
	return BigNum.mt.div( bnum1, 2^n );
end
function BNlshift( bnum1, n )
	return BigNum.mt.mul( bnum1, 2^n );
end
function BNmodInverse( B, A )
	
	local n = BigNum.new(BigNum.mt.tostring(A));
	local M,T = 0,BigNum.new(0);
	local X = 1;
	local Y = 0;
	local D = 0;
	local yield_ticker = 0 ;
	
	sign = false;
	
	while ( not BigNum.mt.eq(B,0) ) do
		if BNnumBits(A) == BNnumBits(B) then
			D = 1;
			M = BigNum.mt.sub(A, B);
		elseif BNnumBits(A) == BNnumBits(B) + 1 then
			T = BNlshift(B,1);
			if BigNum.mt.lt( A, T ) then
				D = 1;
				M = BigNum.mt.sub(A, B);
			else
				M = BigNum.mt.sub(A, T);
				D = BigNum.mt.add(T, B);
				if BigNum.mt.lt( A, D ) then
					D = 2;
				else
					D = 3;
					M = BigNum.mt.sub(M, B);
				end
			end
		else
			D,M = BigNum.mt.div(A, B);
		end
		
		local tmp = A;
		A = B;
		B = M;
		
		if BigNum.mt.eq(D,1) then
			tmp = BigNum.mt.add(X,Y);
		else
			if BigNum.mt.eq(D,2) then
				tmp = BNlshift(X,1);
			elseif BigNum.mt.eq(D,4) then
				tmp = BNlshift(X,2);
			elseif BigNum.mt.eq(D,1) then
				tmp = X;
				tmp = BigNum.mt.mul(tmp, D);
			else
				tmp = BigNum.mt.mul(D, X);
			end
			
			tmp = BigNum.mt.add(tmp,Y);
		end
		
		M=Y;
		Y=X;
		X=tmp;
		sign = not sign;
		yield_ticker = yield_ticker + 1 ;
		if (floor(yield_ticker % 2) == 0) then
                  coroutine.yield();
                end
	end
	
	if not sign then
		Y = BigNum.mt.sub(n,Y)
	end
	
	return Y;
end

-- transform a string of bytes in a string of hexadecimal digits
function BinToHex(s)
	return s:gsub(".", function(c)
		return string.format("%02x", c:byte())
	end)
end

-- converts a hex string into a big number
function HexToBigNum(h)
	local result = BigNum.new(0);
	for i = 1, strlen(h) do
		result = BigNum.mt.mul( BigNum.new(16), result );
		result = BigNum.mt.add( BigNum.new( tonumber( h:sub(i, i), 16 ) ), result );
	end
	return result
end

--------------------------------------------------------------------------
--  dsa_test  end
--------------------------------------------------------------------------

function ds.validate( m )
print( "validating [".. tostring(m) .."]" ) ;
  if (m == nil) then
    return ;
  end
end

function ds.sign( m ) 
print( "signing [".. tostring(m) .."]" ) ;
  if (m == nil) then
    return ;
  end
  local sig = "a" ;
  
  return sig ;
end

function ds.test( opts )
print( "ds.test  opts[".. tostring(opts) .."]" ) ;
  if (opts == nil) then
    return ;
  end
  local v ;
  local args = {} ;
  for v in string.gmatch(opts, "([^ ]+)") do
    table.insert(args, v);
  end
  if (args[1] == "sign") then
    ds.sign( args[2] ) ;
  elseif (args[1] == "validate") then
    ds.validate( args[2] ) ;
  else
    ds.general_test() ;
  end
end

-- unique to addon
__PUBLIC_KEY = [[MIHwMIGoBgcqhkjOOAQBMIGcAkEA3dt61Wh5fXwjy0lAUyCD0n/JLqtGUKha4P5D
drEK2S3ruxsG9w+17KpoM31a9XBBOGfo6EUVW5w275CjFqQxxQIVAMXkXigQiXPB
//OU+8juWn/R6lpZAkAdm0XR7i+SxytCpN/ZqUEFu86kzD7Ok3D/Fyv4Scz85YF9
yIMPvwpDfBsu/CErXWHHN8WGfrgQ8IPGDLTWSxbeA0MAAkAIkOn4np4NZXaRjNFL
F5pek3CL+XsZB+tawIUkYVQku4Wwf2V/uiRpOshf57f/HjyS/3DnbTwY9WtQ9KAx
BSSb]] ;

__PRIVATE_KEY = [[MIH4AgEAAkEA3dt61Wh5fXwjy0lAUyCD0n/JLqtGUKha4P5DdrEK2S3ruxsG9w+1
7KpoM31a9XBBOGfo6EUVW5w275CjFqQxxQIVAMXkXigQiXPB//OU+8juWn/R6lpZ
AkAdm0XR7i+SxytCpN/ZqUEFu86kzD7Ok3D/Fyv4Scz85YF9yIMPvwpDfBsu/CEr
XWHHN8WGfrgQ8IPGDLTWSxbeAkAIkOn4np4NZXaRjNFLF5pek3CL+XsZB+tawIUk
YVQku4Wwf2V/uiRpOshf57f/HjyS/3DnbTwY9WtQ9KAxBSSbAhUAkqeUzWQaE1wK
8+PR87twTc4dtG8=]] ;

-- unique to payload/content/update
-- __PAYLOAD = "secret";
-- __SIG = [[MCwCFFMAv7NDeZNRD7TGeeCv7HMKU21PAhQiIpUqow4KZdVRcUWMz4bnYTS3RA==]]

__PAYLOAD = "sample msg" ;
--__SIG = [[MC0CFQCDCVrac1FwzV/bvcVWPofO+yn8GAIULH5VdOgBwXx6qfjSQljRVutfuTI=]] ;
__SIG = [[MCwCFFejKOGw3DPjnYuV7irvWLfVq4HDAhQ0Vk3y1xU0CZtylFJ6tT1J1OTfpQ==]] ;

local function DSA_sign( payload, privkey )
  return __SIG ;
end

function ds.general_test()
  print( "ds.general_test" ) ;
  print( "payload [".. __PAYLOAD .."]" ) ;
  local sig = DSA_sign( __PAYLOAD, __PRIVATE_KEY ) ;
  print( "signature [".. sig .."]" ) ;
  local is_valid = DSA_validate( __PAYLOAD, sig, __PUBLIC_KEY ) ;
  print( "valid:  ".. tostring(is_valid) ) ;
end

-- hook up cmdline option
--oq.options[ "ds" ] = oq.ds.test ;
