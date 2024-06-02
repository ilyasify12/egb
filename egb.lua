local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Blox Fruit Script V1 (AutoFarm) ",
   LoadingTitle = "EGB Hub",
   LoadingSubtitle = "EGB Team,
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, 
      FileName = "EGB"
   },
   Discord = {
      Enabled = true,
      Invite = "https://discord.gg/73EwyNseZg", 
      RememberJoins = true 
       KeySystem = true, 
   KeySettings = {
      Title = "Blox Fruit|KEY",
      Subtitle = "Link In Discord Server",
      Note = "Join Server From Misc Tab",
      FileName = "Key", 
      SaveKey = true, 
      GrabKeyFromSite = false, 
      Key = {"EGB"} 
})
local MainTab = Window:CreateTab("🏠 Main Farm", nil) 
local MainSection = MainTab:CreateSection("AutoFarm")


Rayfield:Notify({
   Title = "Script Executed",
   Content = "The Script Is Good",
   Duration = 5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!","NO"
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
local Button = MainTab:CreateButton({
   Name = "Auto Farm Level",
   Callback = function()
        local Player = game.Players.LocalPlayer
local Remote = game.ReplicatedStorage.Remotes.Level

while wait(0.1) do
    Remote:InvokeServer(Player)
end
   end,
})
