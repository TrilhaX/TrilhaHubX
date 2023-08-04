if game.PlaceId == 6299805723 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Trilha Hub | AFS", HidePremium = false, IntroText = "Trilha Hub", SaveConfig = true, ConfigFolder = "Trilha Hub"})


getgenv().autoAttack = true

getgenv().autoEgg = true

getgenv().SpinWheel = true

function autoAttack()
    while getgenv().autoAttack == true do
        game:GetService("ReplicatedStorage").Remote.ClickerDamage:FireServer()
        wait(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
    end
end

function autoEgg()
    while getgenv().autoEgg do
        wait()
        local args = {
            [1] = workspace.Worlds.Naruto.NarutoEgg,
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Remote.OpenEgg:InvokeServer(unpack(args))
        end
    end    


    function SpinWheel()
        while getgenv().SpinWheel == true do
            game:GetService("ReplicatedStorage").Remote.DailySpin:FireServer()     
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

local EggTab = Window:MakeTab({
    Name = "Egg",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})



EggTab:AddToggle({
Name = "Auto Hatch Naruto Egg",
Default = false,
Callback = function(Value)
    getgenv().autoEgg = Value
    autoEgg()
end    
})

local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})



MiscTab:AddButton({
Name = "Spin Wheel",
Default = false,
Callback = function(Value)
    getgenv().SpinWheel = Values
    SpinWheel()
end    
})

end
