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
