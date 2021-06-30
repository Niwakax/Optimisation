if CLIENT then
local function init()
	if IsValid(LocalPlayer()) then
		LocalPlayer():ConCommand("gmod_mcore_test 1")
		LocalPlayer():ConCommand("mat_queue_mode -1")
		LocalPlayer():ConCommand("cl_threaded_bone_setup 1")
		LocalPlayer():ConCommand("cl_threaded_client_leaf_system 1")
		LocalPlayer():ConCommand("r_threaded_particles 1")
		LocalPlayer():ConCommand("r_threaded_renderables 1")
		LocalPlayer():ConCommand("r_queued_ropes 1")
		LocalPlayer():ConCommand("studio_queue_mode 1")
		LocalPlayer():ConCommand("threadpool_affinity 3")
		LocalPlayer():ConCommand("host_thread_mode 3")
		LocalPlayer():ConCommand("r_threaded_client_shadow_manager 1")
		
		LocalPlayer():ConCommand("cl_updaterate 32")
		LocalPlayer():ConCommand("cl_cmdrate 32")
		LocalPlayer():ConCommand("cl_interp_ratio 2")
		LocalPlayer():ConCommand("cl_interp 0")
	
		RunConsoleCommand( "cl_show_splashes", "0" )
		RunConsoleCommand( "cl_ejectbrass", "0" )
		RunConsoleCommand( "cl_detailfade", "800" )
		RunConsoleCommand( "cl_detaildist", "1" )
		RunConsoleCommand( "cl_smooth", "0" )
		RunConsoleCommand( "mat_parallaxmap", "0" )
		RunConsoleCommand( "mat_picmip", "2" )
		RunConsoleCommand( "mat_specular", "0" )
		RunConsoleCommand( "mat_softwarelighting", "1" )
		RunConsoleCommand( "mat_mipmaptextures", "0" )
		RunConsoleCommand( "mat_filtertextures", "0" )
		RunConsoleCommand( "mat_filterlightmaps", "0" )
		RunConsoleCommand( "mat_clipz", "0" )
		RunConsoleCommand( "mat_bumpmap", "0" )
		RunConsoleCommand( "mat_compressedtextures", "1" )
		RunConsoleCommand( "r_fastzreject", "-1" )
		RunConsoleCommand( "r_decal_cullsize", "1" )
		RunConsoleCommand( "r_drawflecks", "0" )
		RunConsoleCommand( "r_drawmodeldecals", "0" )
		RunConsoleCommand( "r_dynamic", "0" )
		RunConsoleCommand( "r_lod", "0" )
		RunConsoleCommand( "r_WaterDrawReflection", "0" )
		RunConsoleCommand( "r_WaterDrawRefraction", "0" )
		RunConsoleCommand( "r_waterforceexpensive", "0" )
		RunConsoleCommand( "r_cheapwaterend", "1" )
		RunConsoleCommand( "dsp_enhance_stereo", "0" )
		RunConsoleCommand( "ai_expression_optimization", "0" )
		RunConsoleCommand( "mat_queue_mode", "2" )		
		
		
	end
end
hook.Add( "Initialize", "Optimisation", init )




end