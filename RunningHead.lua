
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Gamepass = game.Players.LocalPlayer.GamePasses
local skip = Gamepass.SkipStage
local double = Gamepass.DoubleJump
local boss = Gamepass.BecomeBoss

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
local Player = Window:NewTab("Player")
local player = Player:NewSection("Local Player Settings")
local Sh = Window:NewTab("Settings")
local sh = Sh:NewSection("Settings for Ui")

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

scripts:NewToggle("Skip Stage","?",function(state)
if state then
skip.Value = true
else 
  skip.Value = false
end
end)

scripts:NewToggle("Double Jump","?",function(state)
if state then
double.Value = true
else 
double.Value = false
end
end)

scripts:NewToggle("Become Boss","?",function(state)
if state then
boss.Value = true
else
boss.Value = false
end
end)

sh:NewKeybind("Toggle Ui", "?", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

player:NewSlider("WalkSpeed", "?", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

player:NewSlider("JumpPower", "?", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

player:NewSlider("Fov", "?", 500, 0, function(s)
local FovNumber = s --Enter your FOV number here
local Camera = workspace.CurrentCamera
Camera.FieldOfView = FovNumber
end)

local gui = Instance.new("ScreenGui")
gui.Name = "Nigger_Grrrr"
gui.Parent = game.CoreGui

local L = Instance.new("TextButton")
L.Size = UDim2.new(0.1, 0, 0.2, 0)
L.Position = UDim2.new(0, 0, 0.2, 0)
L.BackgroundColor3 = Color3.new(0, 0, 0)
L.BorderColor3 = Color3.new(0, 0, 0)
L.BorderSizePixel = 0
L.Text = "Darkrai Y"
L.BackgroundTransparency = 0 
L.TextColor3 = Color3.new(255, 255, 255)
L.Font = Enum.Font.Code
L.TextSize = 15
L.TextScaled = true
L.Active = true 
L.Draggable = true
L.Parent = gui


local y = Instance.new("UICorner")
y.CornerRadius = UDim.new(0, 15)
y.Parent = L

L.MouseButton1Click:Connect(function()
Library:ToggleUI()
end)
