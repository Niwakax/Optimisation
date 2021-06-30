local badhooks = {
    RenderScreenspaceEffects = {
        'RenderBloom',
        'RenderBokeh',
        --'RenderColorModify',
        --'RenderMotionBlur',
        'RenderMaterialOverlay',
        'RenderSharpen',
        'RenderSobel',
        'RenderStereoscopy',
        'RenderSunbeams',
        'RenderTexturize',
        'RenderToyTown',
    },
    PreDrawHalos = {
        'PropertiesHover'
    },
    RenderScene = {
        'RenderSuperDoF',
        'RenderStereoscopy',
    },
    PreRender = {
        'PreRenderFlameBlend',
    },
    PostRender = {
        'RenderFrameBlend',
        'PreRenderFrameBlend',
    },
    PostDrawEffects = {
        'RenderWidgets',
        'RenderHalos',
    },
    GUIMousePressed = {
        'SuperDOFMouseDown',
        'SuperDOFMouseUp'
    },
    Think = {
        'DOFThink',
    },
    PlayerTick = {
        'TickWidgets',
    },
    PlayerBindPress = {
        'PlayerOptionInput'
    },
    NeedsDepthPass = {
        'NeedsDepthPassBokeh',
    },
    OnGamemodeLoaded = {
        'CreateMenuBar',
    }
}

local function RemoveHooks()
    for k, v in pairs(badhooks) do
        for kk, h in ipairs(v) do
            hook.Remove(k, h)
        end
    end
end

hook.Add('InitPostEntity', 'RemoveHooks', RemoveHooks)
RemoveHooks()