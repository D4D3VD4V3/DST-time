GLOBAL.CHEATS_ENABLED = true
GLOBAL.require( 'debugkeys' )
os_module = GLOBAL.require "os"
modimport "lib_ver.lua"

local show_time = GetModConfigData("show_time")

if not TUNING.SHOW_TIME then
	TUNING.SHOW_TIME = true
	AddPlayersAfterInit(function(inst)
		if inst == _G.ThePlayer and not show_time then
			return
		end
		inst.GetMyDisplayName = function(inst)
			return inst:GetDisplayName()
		end
		local label = inst.entity:AddLabel()
	   
		label:SetFontSize(18)         
		label:SetFont(_G.BODYTEXTFONT)
		label:SetWorldOffset(0, 0, 0)
		--label:SetUIOffset(0, 0, 0)
		ctime = os_module.date("*t")
		label:SetText(("%02d:%02d:%02d"):format(ctime.hour, ctime.min, ctime.sec))
		label:SetColour(255/255,255/255,255/255)
		label:Enable(true)
		inst:DoPeriodicTask(1,function()
			ctime = os_module.date("*t")
				label:SetText(("%02d:%02d:%02d"):format(ctime.hour, ctime.min, ctime.sec))
		end)
	end)
end
