hook.Add( "LVS:ARMED:Initialize", "[LVS] - Armed [Fake Physics]", function()
	if SERVER then
		AddCSLuaFile("lvs_fakephysics/cl_armedvehicles_specialcam.lua")
		AddCSLuaFile("lvs_fakephysics/cl_armedvehicles_tankextras.lua")
		AddCSLuaFile("lvs_fakephysics/cl_armedvehicles_xhair.lua")

		include("lvs_fakephysics/sv_armedvehicles_handler.lua")

		return
	end

	include("lvs_fakephysics/cl_armedvehicles_specialcam.lua")
	include("lvs_fakephysics/cl_armedvehicles_tankextras.lua")
	include("lvs_fakephysics/cl_armedvehicles_xhair.lua")
end)