if game.PlaceId == "6205205961" then
repeat wait() until game:IsLoaded()
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Gamepass = game.Players.LocalPlayer.GamePasses
local skip = Gamepass.SkipStage.Value
local double = Gamepass.DoubleJump.Value
local boss = Gamepass.BecomeBoss.Value

local colors = {
    SchemeColor = Color3.fromRGB(114,39,232),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(30, 30, 30),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(30, 30, 30)
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheExploiterBoy/New-Script/main/Kavo-Change"))()
local Window = Library.CreateLib("Darkai Y | "..gameName, colors)

local Home = Window:NewTab("Home")
local home = Home:NewSection("Player Information")
local Scripts = Window:NewTab("Main")
local scripts = Scripts:NewSection("Main")

home:NewButton("Username: "..game.Players.LocalPlayer.Name, "?", function()
end)

home:NewButton("Display Name: "..game.Players.LocalPlayer.DisplayName, "?", function()
end)

home:NewButton("Player Id: "..game.Players.LocalPlayer.UserId, "?", function()
end)

home:NewButton("Executor: "..identifyexecutor() or "Unknown", "?", function()
end)

home:NewButton("Experience Name: "..gameName, "?", function()
end)

home:NewButton("Experience Id: "..game.PlaceId, "?", function()
end)
end
