local gmod_mcore_test = GetConVarString("gmod_mcore_test")
local mat_queue_mode = GetConVarString("mat_queue_mode")
local cl_threaded_bone_setup = GetConVarString("cl_threaded_bone_setup")

RunConsoleCommand("gmod_mcore_test", "1")
RunConsoleCommand("mat_queue_mode", "-1")
RunConsoleCommand("cl_threaded_bone_setup", "1")
	
hook.Add("ShutDown", "mcore", function()
	RunConsoleCommand("gmod_mcore_test", gmod_mcore_test)
	RunConsoleCommand("mat_queue_mode", mat_queue_mode)
	RunConsoleCommand("cl_threaded_bone_setup", cl_threaded_bone_setup)
end)