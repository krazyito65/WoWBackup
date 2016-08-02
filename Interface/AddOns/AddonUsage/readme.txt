This is a simple mod to display comparative memory and cpu usage of addons.

This is an addon to compare the memory and cpu usage of all enabled addons.

=== How to Use

To summon or dismiss the window:
* /addonusage
* or set up a key binding in the default key binding interface

You can click column headers to sort the table by one of the columns.

=== Why to Use

If you're thinking of downloading this addon, you're probably trying to optimize your UI so it can run as efficiently as possible or you're experiencing fps loss and suspect an addon may be the cause.

I recommend, for the most part, ignoring the memory usage of addons unless you're on a low-end system. Even garbage memory creation (the memory creep active addons appear to be doing) is not really an issue if it happens slowly. If you watch closely you'll see the addons' memory usage reset back after a while. WoW's Lua implementation does this over time in a low-impact cleanup.

Instead you'll want to focus on the CPU usage of your addons. Everything your addons do, everything, happens between the frames rendered on your screen. The more work your addons are doing, the longer the game waits to render your next frame and your fps drops.

The best way to troubleshoot fps issues is to turn on CPU monitoring and go out and play. You can forget about it until later in the session. Bring up the window and see how they all behaved.

If you're experiencing a noticable fps drop in certain situations, like in one encounter in a raid (which is almost always graphic related and not addon related), or flying around looking at the map, or doing tradeskills, etc, you can hit Reset before you know the fps drop is about to hit. Then look for any abnormally high cpu usage among your addons.

The reason CPU monitoring isn't on by default is because the act of monitoring how much work your addons are doing causes a bit more work that will slow you down even more unless you're on a high end system or have few addons. You should only have CPU monitoring enabled when you're testing.

That said, some things to consider when looking at the numbers:
* The percentages are all relative to each other. If you're spending 80% of your time making bandages, 10% of your time chatting and 10% of your time raiding, expect your tradeskill/inventory addons to share a bulk of the usage. If you notice in this situation a map addon taking up an abnormally huge share of cpu time, then that's something to investigate.
* The initial memory/CPU usage will include some, but not all, of the loading times when you login/reload. This often includes spikes in housekeeping memory/CPU that will get freed up over time. It's negligible over a whole session, but something to consider in specific troubleshooting. You can hit 'Reset' at any time to start fresh.
* A lot of addons share libraries of code. The "blame" for who owns that code isn't as clear cut. If you run many addons that share libraries, treat them all as one huge mass for overall troubleshooting purposes. If you disable one addon and a seemingly unrelated addon has suddenly taken up the former addon's share of work, it's likely the two were sharing a library and the first one may be blameless.
* Remember to turn off CPU monitoring when you're done testing!

2.0.8 6/22/15 toc update for 6.2 patch
2.0.7 2/24/15 toc update for 6.1 patch
2.0.6 11/05/14 fix for load-on-demand addons not showing up and lua error when turning off real-time updates
2.0.5 10/11/14 total mb/cpu usage summary added
2.0.4 10/2/14 mouseing over long addon names will show whole addon name
2.0.3 9/14/14 update for WoD, fix for WoD-specific bug where cpu profiling wouldn't enable
2.0.1 10/25/13 rewrite/facelift, realtime cpu monitoring option
1.14 9/11/13 toc update for 5.4
1.13 5/21/13 toc update for 5.3
1.12 8/28/12 fixed _ tainting
1.11 8/27/12 5.0 (Mists of Pandaria) update
1.1 4/10/09 belated fix for scrollbar change in 3.02
1.0 7/14/08 initial release
