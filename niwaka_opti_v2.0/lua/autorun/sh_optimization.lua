hook.Add( "PreGamemodeLoaded", "widgets_disabler_cpu", function()
	function widgets.PlayerTick()

	end
	hook.Remove( "PlayerTick", "TickWidgets" )
end )
hook.Add("Initialize","NoWidgets",function()
 
 	if SERVER then
 		if timer.Exists("CheckHookTimes") then
 			timer.Remove("CheckHookTimes")
 		end
 	end
 	hook.Remove("PlayerTick","TickWidgets")
	hook.Remove( "Think", "CheckSchedules")
	timer.Destroy("HostnameThink")
	hook.Remove("LoadGModSave", "LoadGModSave")
		
	for k, v in pairs(ents.FindByClass("env_fire")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("trigger_hurt")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("prop_physics")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("prop_ragdoll")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("light")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("spotlight_end")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("beam")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("point_spotlight")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("env_sprite")) do v:Remove() end
	for k,v in pairs(ents.FindByClass("func_tracktrain")) do v:Remove() end
	for k,v in pairs(ents.FindByClass("light_spot")) do v:Remove() end
	for k,v in pairs(ents.FindByClass("point_template")) do v:Remove() end
	

	
	
	 if CLIENT then

 		hook.Remove("RenderScreenspaceEffects", "RenderColorModify")
 		hook.Remove("RenderScreenspaceEffects", "RenderBloom")
 		hook.Remove("RenderScreenspaceEffects", "RenderToyTown")
 		hook.Remove("RenderScreenspaceEffects", "RenderTexturize")
 		hook.Remove("RenderScreenspaceEffects", "RenderSunbeams")
 		hook.Remove("RenderScreenspaceEffects", "RenderSobel")
 		hook.Remove("RenderScreenspaceEffects", "RenderSharpen")
 		hook.Remove("RenderScreenspaceEffects", "RenderMaterialOverlay")
 		hook.Remove("RenderScreenspaceEffects", "RenderMotionBlur")
 		hook.Remove("RenderScene", "RenderStereoscopy")
 		hook.Remove("RenderScene", "RenderSuperDoF")
 		hook.Remove("GUIMousePressed", "SuperDOFMouseDown")
 		hook.Remove("GUIMouseReleased", "SuperDOFMouseUp")
 		hook.Remove("PreventScreenClicks", "SuperDOFPreventClicks")
 		hook.Remove("PostRender", "RenderFrameBlend")
 		hook.Remove("PreRender", "PreRenderFrameBlend")
 		hook.Remove("Think", "DOFThink")
 		hook.Remove("RenderScreenspaceEffects", "RenderBokeh")
 		hook.Remove("NeedsDepthPass", "NeedsDepthPass_Bokeh")
 		hook.Remove("PostDrawEffects", "RenderWidgets")  		
 		hook.Remove("PostDrawEffects", "RenderHalos") 		
 	end
	
end)

hook.Add("OnEntityCreated","WidgetInit",function(ent) 
	if ent:IsWidget() then
		hook.Add( "PlayerTick", "TickWidgets", function( pl, mv ) widgets.PlayerTick( pl, mv ) end ) 
		hook.Remove("OnEntityCreated","WidgetInit")
	end
end)


