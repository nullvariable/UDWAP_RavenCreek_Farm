local basements = {
    dwap_ravencreek_farm = { width=20, height=24, stairx=13, stairy=11, stairDir="W" },
}

local basement_access = {
    ba_dwap_ravencreek_farm = { width=4, height=2, stairx=1, stairy=0, stairDir="W" },
    ba_dwap_ravencreek_farm_solar = { width=6, height=4, stairx=1, stairy=0, stairDir="W" },
}

local doSolar = getActivatedMods():contains("\\ISA") and SandboxVars.DWAP.EnableGenSystemSolar
local fullConfig = table.newarray()
fullConfig[1] = {
    locations = {
        {x=6386, y = 16218, z=0, stairDir="W", choices={"dwap_ravencreek_farm"}, access="ba_dwap_ravencreek_farm", },
    },
}
if doSolar then
    fullConfig[1].locations[1].access = "ba_dwap_ravencreek_farm_solar"
end

local locations = {}

for i = 1, #fullConfig do
    for j = 1, #fullConfig[i].locations do
        table.insert(locations, fullConfig[i].locations[j])
    end
end

local api = Basements.getAPIv1()
api:addAccessDefinitions('Raven Creek B42', basement_access)
api:addBasementDefinitions('Raven Creek B42', basements)
api:addSpawnLocations('Raven Creek B42', locations)

print("DWAP Raven Creek Farm basements.lua loaded")
