if game.PlaceId ~= 128977538229607 then
    print("github error")
    return
end
local HubVersion = 0.1
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "Kawaii Hub | Galaxy Incremental",
	Icon = 0,
	LoadingTitle = "Kawaii Hub",
	LoadingSubtitle = "By 1441hz",
	ShowText = "Rayfield",
	Theme = "Default",
	
	ToggleUIKeybind = "K",
	
	DisableRayfieldPrompts = false,
	DisableBuildWarnings = false,
	
	ConfigurationSaving = {
	    Enabled = true,
	    FolderName = "Kawaii Hub_Official",
	    FileName = "Kawaii_Hub_Prison_Life"
	},
	
	Discord = {
	    Enabled = true,
	    Invite = "fANbBf2Qqn", -- The Discord invite code, do not include Discord.gg/. E.g. Discord.gg/ABCD would be ABCD
	    RememberJoins = true
	},

	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
	    Title = "Kawaii Hub | Key System",
	    Subtitle = "By 1441hz",
	    Note = "Join the discord for the key: discord.gg/fANbBf2Qqn",
	    FileName = "KawaiiHubKeySystem",
	    SaveKey = true,
	    GrabKeyFromSite = false,
	    Key = {"tempkey"}
	}
})
Rayfield:Notify({
	Title = "Thank you!",
	Content = "You now have access to Kawaii Hub,\nThanks for joining us!\n\nNOTE: If you paid for this script, you are being scammed.",
	Duration = 6.5,
})

-- Tab Creators
local MainAutomationTab = Window:CreateTab("Main", nil)
local SpeedUpgradesTab = Window:CreateTab("Speed", nil)
local MercuryTab = Window:CreateTab("Mercury", nil)


-- Main Tab
local AutoClicking = MainAutomationTab:CreateToggle({
   Name = "Auto Clicker",
   CurrentValue = false,
   Flag = "AutoClicking", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   isAutoClicking = Value
   		if Value then
			task.spawn(function()
				while isAutoClicking == true do
					local Event = game:GetService("ReplicatedStorage").GameData.PlayerClick
					Event:FireServer()
					wait(0.05)
				end
		   end)
		end
   end,
})

-- Speed Tab
local AutoGlobalAcceleration = SpeedUpgradesTab:CreateToggle({
   Name = "Auto Global-Acceleration",
   CurrentValue = false,
   Flag = "AutoGlobalAcc", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   isAutoGlobalAcc = Value
   		if Value then
			task.spawn(function()
				while isAutoGlobalAcc == true do
					local Event = game:GetService("ReplicatedStorage").GameData.BuySpeedUpgrade
					Event:FireServer("GlobalAcceleration")
					wait(0.05)
				end
		   end)
		end
   end,
})
local AutoExpoMultiplier = SpeedUpgradesTab:CreateToggle({
   Name = "Auto Expo-Multiplier",
   CurrentValue = false,
   Flag = "AutoExpoMulti", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   isAutoExpoMulti = Value
   		if Value then
			task.spawn(function()
				while isAutoExpoMulti == true do
					local Event = game:GetService("ReplicatedStorage").GameData.BuySpeedUpgrade
					Event:FireServer("ExponentialMultiplier")
					wait(0.05)
				end
		   end)
		end
   end,
})
local AutoClickBoost = SpeedUpgradesTab:CreateToggle({
   Name = "Auto Click-Boost",
   CurrentValue = false,
   Flag = "AutoClickBoost", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   isAutoClickBoost = Value
   		if Value then
			task.spawn(function()
				while isAutoClickBoost == true do
					local Event = game:GetService("ReplicatedStorage").GameData.BuySpeedUpgrade
					Event:FireServer("ClickBoost")
					wait(0.05)
				end
		   end)
		end
   end,
})

-- Mercury Tab
local AutoMercuryAcc = MercuryTab:CreateToggle({
   Name = "Auto Mercury-Acceleration",
   CurrentValue = false,
   Flag = "AutoMercuryAcc", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   isAutoMercuryAcc = Value
   		if Value then
			task.spawn(function()
				while isAutoMercuryAcc == true do
					local Event = game:GetService("ReplicatedStorage").GameData.BuyPlanetUpgrade
					Event:FireServer(1)
					wait(0.05)
				end
		   end)
		end
   end,
})
local AutoMercuryOut = MercuryTab:CreateToggle({
   Name = "Auto Mercury-Output",
   CurrentValue = false,
   Flag = "AutoMercuryOut", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   isAutoMercuryOut = Value
   		if Value then
			task.spawn(function()
				while isAutoMercuryOut == true do
					local Event = game:GetService("ReplicatedStorage").GameData.BuyPlanetOutput
					Event:FireServer(1)
					wait(0.05)
				end
		   end)
		end
   end,
})
local AutoMercuryEff = MercuryTab:CreateToggle({
   Name = "Auto Mercury-Efficiency",
   CurrentValue = false,
   Flag = "AutoMercuryEff", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   isAutoMercuryEff = Value
   		if Value then
			task.spawn(function()
				while isAutoMercuryEff == true do
					local Event = game:GetService("ReplicatedStorage").GameData.BuyPlanetEfficiency
					Event:FireServer(1)
					wait(0.05)
				end
		   end)
		end
   end,
})
local AutoMercuryMas = MercuryTab:CreateToggle({
   Name = "Auto Mercury-Mastery",
   CurrentValue = false,
   Flag = "AutoMercuryMas", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   isAutoMercuryMas = Value
   		if Value then
			task.spawn(function()
				while isAutoMercuryMas == true do
					local Event = game:GetService("ReplicatedStorage").GameData.BuyPlanetMastery
					Event:FireServer(1)
					wait(0.05)
				end
		   end)
		end
   end,
})
