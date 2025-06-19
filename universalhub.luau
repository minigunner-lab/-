local MarketplaceService = game:GetService("MarketplaceService")
getgenv().gameName = MarketplaceService:GetProductInfo(game.PlaceId).Name
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Volt Hub - " .. getgenv().gameName,
   Icon = 0,
   LoadingTitle = "Lead the way, never follow.",
   LoadingSubtitle = "You are a sigma. I believe!",
   Theme = "Default",
   ToggleUIKeybind = "K",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, 
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "VoltUniversalScriptFree"
   },
   Discord = {
      Enabled = true,
      Invite = "8HH3TacCa6", 
      RememberJoins = false
   },
   KeySystem = false,
})

Rayfield:Notify({
   Title = "Volt Hub",
   Content = "Loaded...",
   Duration = 6.5,
   Image = 4483362458,
})

local UniversalTab = Window:CreateTab("Scripts", 0)
local Section = UniversalTab:CreateSection("Universal Scripts")

-- Universal Scripts Buttons
UniversalTab:CreateButton({
   Name = "OP Aimbot And ESP (PC)",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub-V2/main/src/Main.lua"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Jason Spy",
   Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/q6kUz9vv"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Anti IP Logger",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/minigunner-lab/-/refs/heads/main/AntiIPLogger"))()
   end,
})

UniversalTab:CreateButton({
   Name = "HttpSpy",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/Scripts/refs/heads/master/HttpsSpy.lua"))()
   end,
})

UniversalTab:CreateButton({
   Name = "RemoteSpy",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/depthso/Sigma-Spy/refs/heads/main/Main.lua"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Fly Gui",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/minigunner-lab/-/refs/heads/main/FlyGui"))()
   end,
})

UniversalTab:CreateButton({
   Name = "AnnaBypasser (Set Language To Kayak Tini In Account Info)",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/AnnaRoblox/AnnaBypasser/refs/heads/main/AnnaBypasser.lua",true))()
   end,
})

UniversalTab:CreateButton({
   Name = "KRNL Ui",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Chillz-s-scripts/refs/heads/main/KRNL%20UI%20Remake.lua"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Cubix Ui",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/1dontgiveaf/testscript69/main/Cubix"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Delta Old Ui",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/ElijahGamingRBLX/Roblox-Executor/8536d27eef4eca985572dc30fc146dfd4e55a893/DeltaExecutor.lua"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Reviz Admin",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Pa1ntex/reviz-admin-v2-script-FE/refs/heads/main/Reviz%20admin%20v2%20FE"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Orca (K To Toggle UI)",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/richie0866/orca/master/public/snapshot.lua"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Proton Admin",
   Callback = function()
       loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/5e6e6cc1bb32fd926764d064e2c60a3b.lua"))()
   end,
})

UniversalTab:CreateButton({
   Name = "FE Jerk Off (R6)",
   Callback = function()
       loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Rizzler",
   Callback = function()
       loadstring(game:HttpGet("https://robloxhackers.pages.dev/Rizzler.lua"))()
   end,
})


local Section2 = UniversalTab:CreateSection("Game Hubs")

UniversalTab:CreateButton({
   Name = "LILSKETTY SCRIPT",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/lilsketty/sketty-loader/refs/heads/main/GETSKETTY3"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Prison Life Admin Script",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/devguy100/PrizzLife/refs/heads/main/pladmin.lua"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Neox Hub CHECK CONSOLE /console IN CHAT FOR SUPPORTED GAMES F9 ON PC (Linkvertise Key System)",
   Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/cAzWVMMs"))()
       task.wait(1)
       loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader", true))()
   end,
})

UniversalTab:CreateButton({
   Name = "Forge Hub (Supported games copy to clipboard)",
   Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/MGh23PhD"))()
       task.wait(1)
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Kiciahook (Supported Games On Discord That Gets Copied To Clipboard But Also Printed)",
   Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/D3wJFKMJ"))()
       task.wait(1)
       loadstring(game:HttpGet("https://raw.githubusercontent.com/kiciahook/kiciahook/refs/heads/main/loader.luau"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Counter Blox | Soggy Hub",
   Callback = function()
       loadstring(game:HttpGet("https://soggyhubv2.vercel.app"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Counter Blox | Solaris",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/toasty-dev/pissblox/main/solaris_bootstrapper.lua",true))()
   end,
})

UniversalTab:CreateButton({
   Name = "Counter Blox | FelixWare V2",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/PuppyRoblox/FelixWareV2/main/loader.lua"))()
   end,
})

UniversalTab:CreateButton({
   Name = "Jailbreak | Universal Farm",
   Callback = function()
       setclipboard("https://discord.gg/universalfarm")
       loadstring(game:HttpGet('https://raw.githubusercontent.com/BlitzIsKing/UniversalFarm/main/Loader/Regular'))()
   end,
})

UniversalTab:CreateButton({
   Name = "Knife Ability Test | Kingz Hub (PERMANENT KEY COPIES)",
   Callback = function()
       setclipboard("KINGKEYar6sD4TxdwAygGFmMeXR3HpVvJWnf7cjYL58btNuqUzCPSZBKh")
       pcall(function()
           loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Knife-Ability-Test/main/Gui'))()
       end)
   end,
})

UniversalTab:CreateButton({
   Name = "Steal A Brainrot Anticheat Bypass",
   Callback = function()
       loadstring(game:HttpGet("https://paste.ee/d/uyeJ6IDR/0"))()
   end,
})

UniversalTab:CreateButton({
   Name = "My Friends Script Hub (XVC Hub)",
   Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/Piw5bqGq"))()
   end,
})
