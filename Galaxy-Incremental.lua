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
