local oneTab = false
local Sense = loadstring(game:HttpGet("https://sirius.menu/sense"))()
Sense.teamSettings.enemy.enabled = true
Sense.teamSettings.friendly.enabled = true
local function changeSetting(name, value)
	Sense.teamSettings.enemy[name] = value
	Sense.teamSettings.friendly[name] = value
end
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
local Window = Rayfield:CreateWindow({
	Name = "ESP",
	LoadingTitle = "ESP Menu",
	LoadingSubtitle = "by Sirius",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil,
		FileName = ""
	}
})
local Tab = oneTab and Window:CreateTab("Sense") or Window:CreateTab("Team Settings")
Tab:CreateSection("Team Settings")
local hideTeamToggle = Tab:CreateToggle({
	Name = "Hide Team",
	CurrentValue = false,
	Flag = "HideTeam",
	Callback = function(x)
		Sense.teamSettings.friendly.enabled = not x
	end
})
local teamCP = Tab:CreateColorPicker({
	Name = "Team Color",
	Color = Color3.fromRGB(0, 255, 0),
	Flag = "TeamColor",
	Callback = function(x)
		Sense.teamSettings.friendly.boxColor = {
			x,
			1
		}
		Sense.teamSettings.friendly.box3dColor = {
			x,
			1
		}
		Sense.teamSettings.friendly.offScreenArrowColor = {
			x,
			1
		}
		Sense.teamSettings.friendly.tracerColor = {
			x,
			1
		}
	end
})
local enemyCP = Tab:CreateColorPicker({
	Name = "Enemy Color",
	Color = Color3.fromRGB(255, 0, 0),
	Flag = "EnemyColor",
	Callback = function(x)
		Sense.teamSettings.enemy.boxColor = {
			x,
			1
		}
		Sense.teamSettings.enemy.box3dColor = {
			x,
			1
		}
		Sense.teamSettings.enemy.offScreenArrowColor = {
			x,
			1
		}
		Sense.teamSettings.enemy.tracerColor = {
			x,
			1
		}
	end
})
Tab = oneTab and Tab or Window:CreateTab("Box")
Tab:CreateSection("Configuration")
local boxesToggle = Tab:CreateToggle({
	Name = "Enabled",
	CurrentValue = false,
	Flag = "Boxes",
	Callback = function(x)
		changeSetting("box", x)
	end
})
local boxesOutlinedToggle = Tab:CreateToggle({
	Name = "Outline",
	CurrentValue = true,
	Flag = "BoxesOutlined",
	Callback = function(x)
		changeSetting("boxOutline", x)
	end
})
local boxesFilledToggle = Tab:CreateToggle({
	Name = "Fill",
	CurrentValue = false,
	Flag = "BoxesFilled",
	Callback = function(x)
		changeSetting("boxFill", x)
	end
})
local boxTeamFillCP = Tab:CreateColorPicker({
	Name = "Team Fill Color",
	Color = Color3.fromRGB(0, 255, 0),
	Flag = "TeamFillColor",
	Callback = function(x)
		Sense.teamSettings.friendly.boxFillColor = {
			x,
			0.5
		}
	end
})
local boxEnemyFillCP = Tab:CreateColorPicker({
	Name = "Enemy Fill Color",
	Color = Color3.fromRGB(255, 0, 0),
	Flag = "EnemyFillColor",
	Callback = function(x)
		Sense.teamSettings.enemy.boxFillColor = {
			x,
			0.5
		}
	end
})
local threeDBoxes = Tab:CreateToggle({
	Name = "3D Boxes",
	CurrentValue = false,
	Flag = "3DBoxes",
	Callback = function(x)
		changeSetting("box3d", x)
	end
})
Tab = oneTab and Tab or Window:CreateTab("Health")
Tab:CreateSection("Configuration")
local HBToggle = Tab:CreateToggle({
	Name = "Enabled",
	CurrentValue = false,
	Flag = "HealthBar",
	Callback = function(x)
		changeSetting("healthBar", x)
	end
})
local HBHealthyCP = Tab:CreateColorPicker({
	Name = "Health Color",
	Color = Color3.fromRGB(0, 255, 0),
	Flag = "HealthColor",
	Callback = function(x)
		changeSetting("healthyColor", x)
	end
})
local HBDyingColor = Tab:CreateColorPicker({
	Name = "Dying Color",
	Color = Color3.fromRGB(255, 0, 0),
	Flag = "DyingColor",
	Callback = function(x)
		changeSetting("dyingColor", x)
	end
})
local HBOutlinedToggle = Tab:CreateToggle({
	Name = "Outline",
	CurrentValue = true,
	Flag = "HBsOutlined",
	Callback = function(x)
		changeSetting("healthBarOutline", x)
	end
})
Tab = oneTab and Tab or Window:CreateTab("Tracer")
Tab:CreateSection("Configuration")
local tracersToggle = Tab:CreateToggle({
	Name = "Enabled",
	CurrentValue = false,
	Flag = "Tracers",
	Callback = function(x)
		changeSetting("tracer", x)
	end
})
local tracersOutlinedToggle = Tab:CreateToggle({
	Name = "Outline",
	CurrentValue = true,
	Flag = "TracersOutlined",
	Callback = function(x)
		changeSetting("tracerOutline", x)
	end
})
local tracerOriginDropdown = Tab:CreateDropdown({
	Name = "Origin",
	Options = {
		"Bottom",
		"Top",
		"Mouse"
	},
	CurrentOption = "Bottom",
	Flag = "TracerOrigin",
	Callback = function(x)
		changeSetting("tracerOrigin", x)
	end
})
Tab = oneTab and Tab or Window:CreateTab("Tag")
Tab:CreateSection("Configuration")
local namesToggle = Tab:CreateToggle({
	Name = "Name",
	CurrentValue = false,
	Flag = "Names",
	Callback = function(x)
		changeSetting("name", x)
	end
})
local namesOutlinedToggle = Tab:CreateToggle({
	Name = "Name Outlined",
	CurrentValue = true,
	Flag = "NamesOutlined",
	Callback = function(x)
		changeSetting("nameOutline", x)
	end
})
local distancesToggle = Tab:CreateToggle({
	Name = "Distance",
	CurrentValue = false,
	Flag = "Distances",
	Callback = function(x)
		changeSetting("distance", x)
	end
})
local distancesOutlinedToggle = Tab:CreateToggle({
	Name = "Distance Outlined",
	CurrentValue = true,
	Flag = "DistancesOutlined",
	Callback = function(x)
		changeSetting("distanceOutline", x)
	end
})
local healthToggle = Tab:CreateToggle({
	Name = "Health",
	CurrentValue = false,
	Flag = "Health",
	Callback = function(x)
		changeSetting("healthText", x)
	end
})
local healthsOutlinedToggle = Tab:CreateToggle({
	Name = "Health Outlined",
	CurrentValue = true,
	Flag = "HealthsOutlined",
	Callback = function(x)
		changeSetting("healthOutline", x)
	end
})
Tab = oneTab and Tab or Window:CreateTab("Chams")
Tab:CreateSection("Configuration")
local chamsToggle = Tab:CreateToggle({
	Name = "Enabled",
	CurrentValue = false,
	Flag = "Chams",
	Callback = function(x)
		changeSetting("chams", x)
	end
})
local chamsVisToggle = Tab:CreateToggle({
	Name = "Visible Only",
	CurrentValue = false,
	Flag = "ChamsVisOnly",
	Callback = function(x)
		changeSetting("chamsVisibleOnly", x)
	end
})
local boxTeamFillCP = Tab:CreateColorPicker({
	Name = "Team Fill Color",
	Color = Color3.new(0.2, 0.2, 0.2),
	Flag = "TeamFillColorChams",
	Callback = function(x)
		Sense.teamSettings.friendly.chamsFillColor = {
			x,
			0.5
		}
	end
})
local boxTeamFillCP = Tab:CreateColorPicker({
	Name = "Team Outline Color",
	Color = Color3.new(0, 1, 0),
	Flag = "TeamOutlineColorChams",
	Callback = function(x)
		Sense.teamSettings.friendly.chamsOutlineColor = {
			x,
			0
		}
	end
})
local boxEnemyFillCP = Tab:CreateColorPicker({
	Name = "Enemy Fill Color",
	Color = Color3.new(0.2, 0.2, 0.2),
	Flag = "EnemyFillColorChams",
	Callback = function(x)
		Sense.teamSettings.enemy.chamsFillColor = {
			x,
			0.5
		}
	end
})
local boxEnemyFillCP = Tab:CreateColorPicker({
	Name = "Enemy Outline Color",
	Color = Color3.new(1, 0, 0),
	Flag = "EnemyOutlineColorChams",
	Callback = function(x)
		Sense.teamSettings.enemy.chamsOutlineColor = {
			x,
			0
		}
	end
})
Tab = oneTab and Tab or Window:CreateTab("Off Screen Arrow")
Tab:CreateSection("Configuration")
local OSAToggle = Tab:CreateToggle({
	Name = "Enabled",
	CurrentValue = false,
	Flag = "OSA",
	Callback = function(x)
		changeSetting("offScreenArrow", x)
	end
})
local OSASizeSlider = Tab:CreateSlider({
	Name = "Size",
	Range = {
		15,
		50
	},
	CurrentValue = 15,
	Increment = 1,
	Suffix = "",
	Callback = function(x)
		changeSetting("offScreenArrowSize", x)
	end,
	Flag = "OSASize"
})
local OSARadiusSlider = Tab:CreateSlider({
	Name = "Radius",
	Range = {
		150,
		360
	},
	CurrentValue = 150,
	Increment = 1,
	Suffix = "",
	Callback = function(x)
		changeSetting("offScreenArrowRadius", x)
	end,
	Flag = "OSARadius"
})
local OSAOutlinedToggle = Tab:CreateToggle({
	Name = "Outline",
	CurrentValue = true,
	Flag = "OSAOutlined",
	Callback = function(x)
		changeSetting("offScreenArrowOutline", x)
	end
})
Tab = oneTab and Tab or Window:CreateTab("Weapon")
Tab:CreateSection("Configuration")
local weaponToggle = Tab:CreateToggle({
	Name = "Enabled",
	CurrentValue = false,
	Flag = "Weapons",
	Callback = function(x)
		changeSetting("weapon", x)
	end
})
local weaponOutlinedToggle = Tab:CreateToggle({
	Name = "Outline",
	CurrentValue = true,
	Flag = "WeaponOutlined",
	Callback = function(x)
		changeSetting("weaponOutline", x)
	end
})
 
Sense.Load()
