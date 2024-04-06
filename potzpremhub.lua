local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "PotzHub [Premium]",
    SubTitle = "Version 1.5",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.End -- Used when theres no MinimizeKeybind
})

local L_91_ = Instance.new("ScreenGui")
local L_92_ = Instance.new("ImageButton")
local L_93_ = Instance.new("UICorner")
L_91_.Name = "ToggleUI"
L_91_.Parent = game.CoreGui
L_91_.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
L_92_.Name = "ToggleButton"
L_92_.Parent = L_91_
L_92_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
L_92_.BorderSizePixel = 0
L_92_.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
L_92_.Size = UDim2.new(0, 50, 0, 50)
L_92_.BackgroundTransparency = 1.000
L_92_.Image = "rbxassetid://17015092259"
L_92_.Draggable = true
L_92_.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)
L_93_.CornerRadius = UDim.new(0, 15)
L_93_.Parent = L_92_

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("PotzHubV1.5")
SaveManager:SetFolder("PotzHubV1.5/BloxFruits")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)

Fluent:Notify({
    Title = "PotzHub Loaded.",
    Content = "Welcome! "..game.Players.LocalPlayer.Name.." Enjoy!",
    Duration = 8
})

SaveManager:LoadAutoloadConfig()