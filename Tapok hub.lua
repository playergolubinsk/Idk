local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Tapok Hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local 1Tab = Window:CreateTab("Character", 4483362458) -- Title, Image

local Section = 1Tab:CreateSection("Character settings")
local Fun = Window:CreateTab("Fun", 4483362458) -- Title, Image
local Section = Fun:CreateSection("Just for fun")
Local Kick = "No reason Provided"

local Slider = 1Tab:CreateSlider({
   Name = "WalkSpeed",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value) -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})
local Button = 1Tab:CreateButton({
   Name = "Sit",
   Callback = function()
          game.Players.LocalPlayer.Character.Humanoid.Sit = true -- The function that takes place when the button is pressed
   end,
})
local Button = 1Tab:CreateButton({
   Name = "Lay",
   Callback = function()
          game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true -- The function that takes place when the button is pressed
   end,
})
local Input = Fun:CreateInput({
   Name = "Kick Reason",
   CurrentValue = "",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
              local Kick = (Text) -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})
local Button = Fun:CreateButton({
   Name = "Kick",
   Callback = function()
              game.Players.LocalPlayer:Kick(Kick) -- The function that takes place when the button is pressed
   end,
})
