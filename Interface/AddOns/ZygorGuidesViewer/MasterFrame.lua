local ZGV=ZygorGuidesViewer
if not ZGV then return end

function ZygorGuidesViewerFrameMaster_OnUpdate(self,elapsed)
	if ZGV.loading and ZGV.db and ZGV.db.char.maint_startguides then
		ZGV.master_forceupdate=nil
		local st=GetTime()
		repeat
			ZGV:StartupStep()
			if not ZGV.loading then break end
		until GetTime()-st>0.05  or ZGV.master_forceupdate
		ZGV:UpdateFrame(true)
	elseif ZGV.guidesloaded then
		ZygorGuidesViewerFrameMaster:SetScript("OnUpdate",nil)
	end
end
