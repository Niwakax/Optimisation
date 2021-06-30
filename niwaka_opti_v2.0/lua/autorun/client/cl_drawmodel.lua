local orig_drawmodel = GetConVarNumber("r_drawmodeldecals")

RunConsoleCommand("r_drawmodeldecals", 0)

hook.Add("ShutDown", "drawmps", function()
	RunConsoleCommand("r_drawmodeldecals", orig_drawmodel)
end)