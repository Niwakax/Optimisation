net.Receive("ClearLags", function()
	RunConsoleCommand("fading_door_swap", 1)

	RunConsoleCommand("r_shadows", 1)
	RunConsoleCommand("r_shadowrendertotexture", 0)
	RunConsoleCommand("r_shadowmaxrendered", 0)
	RunConsoleCommand("mat_shadowstate", 0)

	RunConsoleCommand("cl_interp", 0.116700)
	RunConsoleCommand("cl_interp_ratio", 2)
	RunConsoleCommand("cl_updaterate", 16)
	RunConsoleCommand("cl_cmdrate", 16)

	RunConsoleCommand("cl_phys_props_enable", 0)
	RunConsoleCommand("cl_phys_props_max", 0)
	RunConsoleCommand("props_break_max_pieces", 0)
	RunConsoleCommand("r_propsmaxdist", 1)
	RunConsoleCommand("violence_agibs", 0)
	RunConsoleCommand("violence_hgibs", 0)

	RunConsoleCommand("cl_threaded_bone_setup", 1)
	RunConsoleCommand("cl_threaded_client_leaf_system" , 1)
	RunConsoleCommand("r_threaded_client_shadow_manager", 1)
	RunConsoleCommand("r_threaded_particles", 1)
	RunConsoleCommand("r_threaded_renderables", 1)
	RunConsoleCommand("r_queued_ropes", 1)
	RunConsoleCommand("studio_queue_mode", 1)
	RunConsoleCommand("gmod_mcore_test", 1)

	hook.Remove("NeedsDepthPass", "NeedsDepthPass_Bokeh")
	hook.Remove("Think", "DOFThink")
	hook.Remove("CalcView", "rp_deathPOV")
	hook.Remove("PreRender", "PreRenderFrameBlend")
	hook.Remove("DrawOverlay","sandbox_search_progress")
	hook.Remove("PostDrawEffects", "RenderWidgets")
		
	if hook.GetTable()["RenderScreenspaceEffects"] then
		for k, v in pairs(hook.GetTable()["RenderScreenspaceEffects"]) do
		hook.Remove("RenderScreenspaceEffects", k)
		end 
	end
		
	if hook.GetTable()["PostRender"] then
		for k, v in pairs(hook.GetTable()["PostRender"]) do
		hook.Remove("PostRender", k)
		end
	end
		
	if hook.GetTable()["RenderScene"] then
		for k, v in pairs(hook.GetTable()["RenderScene"]) do
		hook.Remove("RenderScene", k)
		end
	end
end)