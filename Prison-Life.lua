if game.PlaceId ~= 155615604 or game.PlaceId == 135564683255158 then
    print("failed")
    return
end
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "Kawaii Hub",
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
	    FileName = "Kawaii Hub"
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
local TeleportsTab = Window:CreateTab("Teleports", nil)
local TeamsTab = Window:CreateTab("Teams", nil)
local GetItemTab = Window:CreateTab("Items", nil)
local MiscFunctionsTab = Window:CreateTab("Misc", nil)
	
Rayfield:Notify({
	Title = "Thank you!",
	Content = "You now have access to Kawaii Hub,\nThanks for joining us!\n\nNOTE: If you paid for this script, you are being scammed.",
	Duration = 6.5,
})
Rayfield:Notify({
	Title = "Warning",
	Content = "Version 0.1 teleports are detected if you use them constantly (spamming them), Sorry!",
	Duration = 6.5,
})
	
--Teleports
	
	
	
-- Get Items
local GetItemShotgun = GetItemTab:CreateButton({
	Name = "Shotgun",
	Callback = function()
		local CurrentPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(820, 95.3, 2229)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CurrentPosition)
	end,
})
local GetItemMP5 = GetItemTab:CreateButton({
	Name = "MP5",
	Callback = function()
		local CurrentPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(814, 95.3, 2230)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CurrentPosition)
	end,
})
	
-- Team Switching
local InmatesSwitch = TeamsTab:CreateButton({
	Name = "Inmates",
	Callback = function()
		local Event = game:GetService("ReplicatedStorage").Remotes.RequestTeamChange
		Event:InvokeServer(game:GetService("Teams").Neutral,1)
		wait(1)
		local Event = game:GetService("ReplicatedStorage").Remotes.RequestTeamChange
		Event:InvokeServer(game:GetService("Teams").Inmates,1)
	end,
})
local GuardsSwitch = TeamsTab:CreateButton({
	Name = "Guards",
	Callback = function()
		local Event = game:GetService("ReplicatedStorage").Remotes.RequestTeamChange
		Event:InvokeServer(game:GetService("Teams").Neutral,1)
		wait(1)
		local Event = game:GetService("ReplicatedStorage").Remotes.RequestTeamChange
		Event:InvokeServer(game:GetService("Teams").Guards,1)
	end,
})
local NeutralSwitch = TeamsTab:CreateButton({
	Name = "Menu",
	Callback = function()
		local Event = game:GetService("ReplicatedStorage").Remotes.RequestTeamChange
		Event:InvokeServer(game:GetService("Teams").Neutral,1)
	end,
})

-- Misc Tab
local JoinVcServer = MiscFunctionsTab:CreateButton({
	Name = "Join VC",
	Callback = function()
		local Event = game:GetService("ReplicatedStorage").Remotes.VoiceTeleportRequested
		Event:FireServer()
	end,
})
Rayfield:LoadConfiguration()
