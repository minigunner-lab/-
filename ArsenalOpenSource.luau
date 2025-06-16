local Luna = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Luna-Interface-Suite/refs/heads/main/source.lua", true))()

local Window = Luna:CreateWindow({
    Name = "Volt Hub | Arsenal",
    Subtitle = "Empowering creativity!",
    LogoID = nil,
    LoadingEnabled = true,
    LoadingTitle = "Volt Hub.",
    LoadingSubtitle = "Loading..",
    ConfigSettings = {
        RootFolder = nil,
        ConfigFolder = "VoltHubArsenalScript"
    },
    KeySystem = false,
})

local Tab = Window:CreateTab({
    Name = "Main",
    Icon = nil,
    -- ImageSource = nil,
    ShowTitle = true
})

Tab:CreateSection("Weapon Modifiers")

local fireRateToggle = Tab:CreateToggle({
    Name = "Ultra Fast FireRate",
    Description = "Sets FireRate to 0.02",
    CurrentValue = false,
    Callback = function(state)
        for _, v in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
            if v.Name == "FireRate" or v.Name == "BFireRate" then
                v.Value = state and 0.02 or 1
            end
        end
    end
}, "fireRateToggle")

local recoilToggle = Tab:CreateToggle({
    Name = "No Recoil",
    Description = "Sets Recoil to 0",
    CurrentValue = false,
    Callback = function(state)
        for _, v in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
            if v.Name == "Recoil" or v.Name == "RecoilControl" then
                v.Value = state and 0 or 1
            end
        end
    end
}, "recoilToggle")

local spreadToggle = Tab:CreateToggle({
    Name = "No Spread",
    Description = "Sets spread to 0",
    CurrentValue = false,
    Callback = function(state)
        for _, v in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
            if v.Name == "MaxSpread" or v.Name == "Spread" or v.Name == "SpreadControl" then
                v.Value = state and 0 or 1
            end
        end
    end
}, "spreadToggle")

local autoFireToggle = Tab:CreateToggle({
    Name = "Auto Fire",
    Description = "Sets Auto, AutoFire, Automatic, AutoShoot, AutoGun to true/false",
    CurrentValue = false,
    Callback = function(state)
        for _, v in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
            if v.Name == "Auto" or v.Name == "AutoFire" or v.Name == "Automatic" or v.Name == "AutoShoot" or v.Name == "AutoGun" then
                v.Value = state
            end
        end
    end
}, "autoFireToggle")

local infiniteAmmoToggle = Tab:CreateToggle({
    Name = "Infinite Ammo",
    Description = "Gives you infinite ammo.",
    CurrentValue = false,
    Callback = function(state)
        if state then
            getgenv().AmmoInfinite = true
            task.spawn(function()
                while getgenv().AmmoInfinite do
                    local player = game:GetService("Players").LocalPlayer
                    local gui = player.PlayerGui:FindFirstChild("GUI")
                    if gui and gui:FindFirstChild("Client") and gui.Client:FindFirstChild("Variables") then
                        local vars = gui.Client.Variables
                        if vars:FindFirstChild("ammocount") then
                            vars.ammocount.Value = 999
                        end
                        if vars:FindFirstChild("ammocount2") then
                            vars.ammocount2.Value = 999
                        end
                    end
                    task.wait(0.5)
                end
            end)
        else
            getgenv().AmmoInfinite = false
        end
    end
}, "infiniteAmmoToggle")

Tab:BuildConfigSection()

Luna:LoadAutoloadConfig()
