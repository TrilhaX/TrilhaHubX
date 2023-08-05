if game.PlaceId == 6299805723 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Trilha Hub | AFS", HidePremium = false, IntroText = "Trilha Hub", SaveConfig = true, ConfigFolder = "Trilha Hub"})


getgenv().autoAttack = true

getgenv().autoBleachEgg = true




function autoAttack()
    while getgenv().autoAttack == true do
        game:GetService("ReplicatedStorage").Remote.ClickerDamage:FireServer()
        wait(0.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010)
    end
end


function autoSlayer2Egg()
    while getgenv().autoSlayer2Egg == true do
        wait()
        local args = {
            [1] = "DemonSlayer2Egg"
        }
        
        game:GetService("ReplicatedStorage").Remote.AttemptMultiOpen:FireServer(unpack(args))                                                
        
    end
end



function autoBleach2Egg()
    while getgenv().autoBleach2Egg == true do
        wait()
        local args = {
            [1] = "BTYBWEgg"
        }
        
        game:GetService("ReplicatedStorage").Remote.AttemptMultiOpen:FireServer(unpack(args))                                                
        
    end
end


function autoBleachEgg()
    while getgenv().autoBleachEgg == true do
        wait()
        local args = {
            [1] = workspace.Worlds.BTYBW.BTYBWEgg,
            [2] = 999
        }
        
        game:GetService("ReplicatedStorage").Remote.OpenEgg:InvokeServer(unpack(args))                                                          
        
    end
end


function autoSlayerEgg()
    while getgenv().autoSlayerEgg == true do
        wait()
        local args = {
            [1] = workspace.Worlds.DemonSlayer2.DemonSlayer2Egg,
            [2] = 999
        }
        
        game:GetService("ReplicatedStorage").Remote.OpenEgg:InvokeServer(unpack(args))                                                                  
                                         
        
    end
end


local FarmTab = Window:MakeTab({
    Name = "Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


FarmTab:AddToggle({
Name = "Auto Clicker (OP)",
Default = false,
Callback = function(Value)
    getgenv().autoAttack = Value
    autoAttack()
end    
})




local MaxTab = Window:MakeTab({
    Name = "Max Open",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


MaxTab:AddToggle({
    Name = "Auto Max Open Slayer Egg",
    Default = false,
    Callback = function(Value)
        getgenv().autoSlayer2Egg = Value
        autoSlayer2Egg()
    end    
    })



MaxTab:AddToggle({
Name = "Auto Max Open BTYW Egg",
Default = false,
Callback = function(Value)
    getgenv().autoBleach2Egg = Value
    autoBleach2Egg()
end    
})

local MultiTab = Window:MakeTab({
    Name = "Multi Open",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})



MultiTab:AddToggle({
    Name = "Auto Multi Open Slayer",
    Default = false,
    Callback = function(Value)
        getgenv().autoSlayerEgg = Value
        autoSlayerEgg()
    end    
    })





MultiTab:AddToggle({
	Name = "Auto Multi Open BTYW",
	Default = false,
	Callback = function(Value)
		getgenv().autoBleachEgg = Value
        autoBleachEgg()
	end    
})


local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})



end
OrionLib:Init()

if game.PlaceId == 8304191830 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Trilha Hub | [🏖️SUMMER] Anime Adventures", HidePremium = false, IntroText = "Trilha Hub", SaveConfig = true, ConfigFolder = "Trilha Hub"})
    
    
    function autoRejoin()
        while getgenv().autoRejoin == true do
            wait()
            local args = {
                [1] = "_lobbytemplategreen1"
            }
            
            game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(unpack(args))                                                                     
            wait(1)
            local args = {
                [1] = "_lobbytemplategreen1",
                [2] = "aot_level_1",
                [3] = false,
                [4] = "Normal"
            }
            
            game:GetService("ReplicatedStorage").endpoints.client_to_server.request_lock_level:InvokeServer(unpack(args))
            
        end
    end

    function autoBuyPortalSummer()
        while getgenv().autoBuyPortalSummer == true do
            wait()
            local args = {
                [1] = "summer_portal_item_contract",
                [2] = "event",
                [3] = "event_shop",
                [4] = "1"
            }
            
            game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_item_generic:InvokeServer(unpack(args))
            wait(10)
    end
end

function autoOpenPortalSummer()
    while getgenv().autoOpenPortalSummer == true do
        wait()
        local args = {
            [1] = "{76f1b2b0-6f7f-4dec-9460-027cbbb5618d}",
            [2] = {
                ["friends_only"] = true
            }
        }
        
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_portal:InvokeServer(unpack(args))
        wait(1)
        local args = {
            [1] = "_lobbytemplateportal24"
        }
        
        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(unpack(args))
        wait(20)        
end
end

function autoNextPortalSummer()
    while getgenv().autoNextPortalSummer == true do
        wait()
        
        local args = {
            [1] = "replay",
            [2] = {
                ["item_uuid"] = "{c8114ecf-21da-4fee-b9d4-73d25107ba6d}"
            }
        }
        
        game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(args))
       
end
end

function autoSkip()
    while getgenv().autoSkip == true do
        wait()
        game:GetService("ReplicatedStorage").endpoints.client_to_server.vote_start:InvokeServer()
        wait(1)
        game:GetService("ReplicatedStorage").endpoints.client_to_server.vote_wave_skip:InvokeServer()
        wait(1)
end
end

function autoLeave()
    while getgenv().autoLeave == true do
        wait()
        game:GetService("ReplicatedStorage").endpoints.client_to_server.teleport_back_to_lobby:InvokeServer()

end
end


    local FarmTab = Window:MakeTab({
        Name = "Farm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })


    FarmTab:AddToggle({
        Name = "Auto Rejoin(Not Working)",
        Default = false,
        Callback = function(Value)
            getgenv().autoRejoin = Value
            autoRejoin()
        end    
    })


    FarmTab:AddToggle({
        Name = "Auto Buy Portal Summer(Only Buy Tier 0)",
        Default = false,
        Callback = function(Value)
            getgenv().autoBuyPortalSummer = Value
            autoBuyPortalSummer()
        end    
    })
    

    FarmTab:AddToggle({
        Name = "Auto Open Portal Summer",
        Default = false,
        Callback = function(Value)
            getgenv().autoOpenPortalSummer = Value
            autoOpenPortalSummer()
        end    
    })

    FarmTab:AddToggle({
        Name = "Auto Next Portal Summer",
        Default = false,
        Callback = function(Value)
            getgenv().autoNextPortalSummer = Value
            autoNextPortalSummer()
        end    
    })


    FarmTab:AddToggle({
        Name = "Auto Skip Wave",
        Default = false,
        Callback = function(Value)
            getgenv().autoSkip = Value
            autoSkip()
        end    
    })

    FarmTab:AddToggle({
        Name = "Auto Leave",
        Default = false,
        Callback = function(Value)
            getgenv().autoLeave = Value
            autoLeave()
        end    
    })



    local MiscTab = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    MiscTab:AddToggle({
        Name = "THE VERSION OF THE SCRIPT IS THE SUMMER UPDATE",
        Default = false,
        Callback = function(Value)
            print(Value)
        end    
    })    

    end

if game.PlaceId == 14229762361 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Trilha Hub | [🏖️SUMMER] Anime Adventures", HidePremium = false, IntroText = "Trilha Hub", SaveConfig = true, ConfigFolder = "Trilha Hub"})
    
    
    function autoRejoin()
        while getgenv().autoRejoin == true do
            wait()
            local args = {
                [1] = "_lobbytemplategreen1"
            }
            
            game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(unpack(args))                                                                     
            wait(1)
            local args = {
                [1] = "_lobbytemplategreen1",
                [2] = "aot_level_1",
                [3] = false,
                [4] = "Normal"
            }
            
            game:GetService("ReplicatedStorage").endpoints.client_to_server.request_lock_level:InvokeServer(unpack(args))
            
        end
    end

    function autoBuyPortalSummer()
        while getgenv().autoBuyPortalSummer == true do
            wait()
            local args = {
                [1] = "summer_portal_item_contract",
                [2] = "event",
                [3] = "event_shop",
                [4] = "1"
            }
            
            game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_item_generic:InvokeServer(unpack(args))
            wait(10)
    end
end

function autoOpenPortalSummer()
    while getgenv().autoOpenPortalSummer == true do
        wait()
        local args = {
            [1] = "{76f1b2b0-6f7f-4dec-9460-027cbbb5618d}",
            [2] = {
                ["friends_only"] = true
            }
        }
        
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_portal:InvokeServer(unpack(args))
        wait(1)
        local args = {
            [1] = "_lobbytemplateportal24"
        }
        
        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(unpack(args))
        wait(20)        
end
end

function autoNextPortalSummer()
    while getgenv().autoNextPortalSummer == true do
        wait()
        
        local args = {
            [1] = "replay",
            [2] = {
                ["item_uuid"] = "{c8114ecf-21da-4fee-b9d4-73d25107ba6d}"
            }
        }
        
        game:GetService("ReplicatedStorage").endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(args))
       
end
end

function autoSkip()
    while getgenv().autoSkip == true do
        wait()
        game:GetService("ReplicatedStorage").endpoints.client_to_server.vote_start:InvokeServer()
        wait(1)
        game:GetService("ReplicatedStorage").endpoints.client_to_server.vote_wave_skip:InvokeServer()
        wait(1)
end
end

function autoLeave()
    while getgenv().autoLeave == true do
        wait()
        game:GetService("ReplicatedStorage").endpoints.client_to_server.teleport_back_to_lobby:InvokeServer()

end
end


    local FarmTab = Window:MakeTab({
        Name = "Farm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })


    FarmTab:AddToggle({
        Name = "Auto Rejoin(Not Working)",
        Default = false,
        Callback = function(Value)
            getgenv().autoRejoin = Value
            autoRejoin()
        end    
    })


    FarmTab:AddToggle({
        Name = "Auto Buy Portal Summer(Only Buy Tier 0)",
        Default = false,
        Callback = function(Value)
            getgenv().autoBuyPortalSummer = Value
            autoBuyPortalSummer()
        end    
    })
    

    FarmTab:AddToggle({
        Name = "Auto Open Portal Summer",
        Default = false,
        Callback = function(Value)
            getgenv().autoOpenPortalSummer = Value
            autoOpenPortalSummer()
        end    
    })

    FarmTab:AddToggle({
        Name = "Auto Next Portal Summer",
        Default = false,
        Callback = function(Value)
            getgenv().autoNextPortalSummer = Value
            autoNextPortalSummer()
        end    
    })


    FarmTab:AddToggle({
        Name = "Auto Skip Wave",
        Default = false,
        Callback = function(Value)
            getgenv().autoSkip = Value
            autoSkip()
        end    
    })

    FarmTab:AddToggle({
        Name = "Auto Leave",
        Default = false,
        Callback = function(Value)
            getgenv().autoLeave = Value
            autoLeave()
        end    
    })



    local MiscTab = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    MiscTab:AddToggle({
        Name = "THE VERSION OF THE SCRIPT IS THE SUMMER UPDATE",
        Default = false,
        Callback = function(Value)
            print(Value)
        end    
    })    

    end
