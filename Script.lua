if game.PlaceId == 6299805723 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Trilha Hub | AFS", HidePremium = false, IntroText = "Trilha Hub", SaveConfig = true, ConfigFolder = "Trilha Hub"})


getgenv().autoAttack = true

getgenv().autoNarutoEgg = true

getgenv().SpinWheel = true

getgenv().ClaimGift = true

function autoAttack()
    while getgenv().autoAttack == true do
        game:GetService("ReplicatedStorage").Remote.ClickerDamage:FireServer()
        wait(0.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010)
    end
end
 
    function SpinWheel()
        while getgenv().SpinWheel == true do
            game:GetService("ReplicatedStorage").Remote.DailySpin:FireServer()     
            end
        end

        function ClaimGift()
            while getgenv().ClaimGift == true do
                wait()
                local args = {
                    [1] = 1
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))
                
                local args = {
                    [1] = 2
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))
                
                local args = {
                    [1] = 3
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))
                
                local args = {
                    [1] = 4
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))
                
                local args = {
                    [1] = 5
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))

                local args = {
                    [1] = 6
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))
                
                local args = {
                    [1] = 7
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))

                local args = {
                    [1] = 8
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))

                local args = {
                    [1] = 9
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))

                local args = {
                    [1] = 10
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))

                local args = {
                    [1] = 11
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))

                local args = {
                    [1] = 12
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))

                local args = {
                    [1] = 13
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))

                local args = {
                    [1] = 14
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))

                local args = {
                    [1] = 15
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))
                
                local args = {
                    [1] = 16
                }
                
                game:GetService("ReplicatedStorage").Remote.ClaimGift:FireServer(unpack(args))

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

local args = {
    [1] = 1
}


MiscTab:AddToggle({
    Name = "Claim Gift",
    Default = false,
    Callback = function(Value)
        getgenv().ClaimGift = Values
        ClaimGift()
    end    
    })


end
OrionLib:Init()
