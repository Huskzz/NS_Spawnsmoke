local isSmoking = false

local function DrawSmokingText(text)
    SetTextFont(4)                  
    SetTextProportional(1)
    SetTextScale(0.45, 0.45)        
    SetTextColour(255, 255, 255, 255) 
    SetTextDropShadow()
    SetTextEdge(4, 0, 0, 0, 255)
    SetTextOutline()                
    
    SetTextRightJustify(true)
    SetTextWrap(0.0, 0.95)          
    
    BeginTextCommandDisplayText("STRING")
    AddTextComponentString(text)
    EndTextCommandDisplayText(0.95, 0.5) 
end

RegisterNetEvent('playerSpawned')
AddEventHandler('playerSpawned', function()
    -- Instant activation: No wait timer
    local playerPed = PlayerPedId()
    
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING", 0, true)
    isSmoking = true
end)

CreateThread(function()
    while true do
        if isSmoking then
            Wait(0) 
            
            DrawSmokingText("Press ~y~X~w~ to stop smoking")
            
            -- 73 is the Control ID for the 'X' key
            if IsControlJustPressed(0, 73) then 
                local playerPed = PlayerPedId()
                
                ClearPedTasks(playerPed) 
                isSmoking = false
            end
        else
            Wait(500)
        end
    end
end)