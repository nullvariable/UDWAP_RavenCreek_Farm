local DWAPUtils = require "DWAPUtils"
Events.OnLoadRadioScripts.Add(function()
    local config = {
        minimumVersion = 17,
        file = "DWAP_RavenCreek_Farm/configs/RCF",
        overrides = {
            makePrimary = SandboxVars.DWAP_RavenCreek_Farm.MakePrimary,
            keyAndMap = SandboxVars.DWAP_RavenCreek_Farm.KeyAndMap,
            essentialLoot = SandboxVars.DWAP_RavenCreek_Farm.EssentialLoot,
            regularLoot = SandboxVars.DWAP_RavenCreek_Farm.RegularLoot,
        },
    }
    if SandboxVars.DWAP_RavenCreek_Farm.ExtraLoot then
        config.file = "DWAP_RavenCreek_Farm/configs/RCF_ExtraLoot"
    end
    DWAPUtils.dprint("Loading DWAP_RavenCreek_Farm config")
    DWAPUtils.addExternalConfig(config)
end)
