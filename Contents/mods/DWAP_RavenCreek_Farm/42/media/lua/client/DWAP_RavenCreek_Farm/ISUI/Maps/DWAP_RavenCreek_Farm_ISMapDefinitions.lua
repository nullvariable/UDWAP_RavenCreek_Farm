print("DWAP RCF StashDesc.lua loaded")
LootMaps.Init.DWAP_RCF_StashMap1 = function(mapUI)
    print("Initializing DWAP_RCF_StashMap1")
    local mapAPI = mapUI.javaObject:getAPIv1()
    MapUtils.initDirectoryMapData(mapUI, 'media/maps/Muldraugh, KY')
    MapUtils.initDefaultStyleV1(mapUI)
    mapAPI:setBoundsInSquares(6146, 15877, 6650, 16379)
end
