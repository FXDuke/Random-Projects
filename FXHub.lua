-- Gui to Lua
-- Version: 3.2

-- Instances:

local FXHub = Instance.new("ScreenGui")
local Resources = Instance.new("Folder")
local CloggerHolder = Instance.new("Frame")
local Chat = Instance.new("Frame")
local ChatScrolling = Instance.new("ScrollingFrame")
local Template = Instance.new("TextLabel")
local Notification = Instance.new("Frame")
local Placeholder = Instance.new("TextLabel")
local PlaceHolderExtender = Instance.new("Frame")
local PlaceHolderColor = Instance.new("TextButton")
local DragHolder = Instance.new("TextLabel")
local Selector = Instance.new("ScrollingFrame")
local Player = Instance.new("TextLabel")
local Movement = Instance.new("TextLabel")
local Combat = Instance.new("TextLabel")
local TrinketBot = Instance.new("TextLabel")
local Pathing = Instance.new("TextLabel")
local Looted_Areas = Instance.new("TextLabel")
local World = Instance.new("TextLabel")
local Settings = Instance.new("TextLabel")
local Automation = Instance.new("TextLabel")
local ESP = Instance.new("TextLabel")
local Seperator = Instance.new("Frame")
local MainArea = Instance.new("Frame")
local Player_Main = Instance.new("Frame")
local NoClipText = Instance.new("TextLabel")
local NoClipButton = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local CharacterHeader = Instance.new("TextLabel")
local ResetButton = Instance.new("TextButton")
local Frame_2 = Instance.new("Frame")
local CharacterButtonsHeader = Instance.new("TextLabel")
local GeneralNofall = Instance.new("TextButton")
local GeneralNofall_2 = Instance.new("TextLabel")
local TrinketPickupButton = Instance.new("TextButton")
local TrinketPickupText = Instance.new("TextLabel")
local NoFallButton = Instance.new("TextButton")
local NoFallText = Instance.new("TextLabel")
local Day1Button = Instance.new("TextButton")
local IngredientPickupButton = Instance.new("TextButton")
local IngredientPickup = Instance.new("TextLabel")
local Movement_Main = Instance.new("Frame")
local SpeedButton = Instance.new("TextButton")
local SpeedText = Instance.new("TextLabel")
local FlyText = Instance.new("TextLabel")
local FlyButton = Instance.new("TextButton")
local FlyKeyBind = Instance.new("TextButton")
local AutoFallText = Instance.new("TextLabel")
local AutoFallButton = Instance.new("TextButton")
local MovementHeader = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local MaxRange = Instance.new("TextButton")
local SliderShow = Instance.new("Frame")
local Player_Main_2 = Instance.new("Folder")
local Settings_Main = Instance.new("Frame")
local HotKeyHeader = Instance.new("TextLabel")
local HideGuiSetButton = Instance.new("TextButton")
local Frame_4 = Instance.new("Frame")
local HideGuiHeader = Instance.new("TextLabel")
local HideGuiHeader_2 = Instance.new("TextLabel")
local InstantLogSetKey = Instance.new("TextButton")
local HideChatHeader = Instance.new("TextLabel")
local ChatLoggerSetKey = Instance.new("TextButton")
local savesettingsbutton = Instance.new("TextButton")
local loadsettingsButton = Instance.new("TextButton")
local HotKeyHeader_2 = Instance.new("TextLabel")
local ESP_Main = Instance.new("Frame")
local Frame_5 = Instance.new("Frame")
local ESPButton = Instance.new("TextButton")
local ESPtext = Instance.new("TextLabel")
local ESPHeader = Instance.new("TextLabel")
local World_Main = Instance.new("Frame")
local Frame_6 = Instance.new("Frame")
local WorldHeader = Instance.new("TextLabel")
local NoFogButton = Instance.new("TextButton")
local NofogText = Instance.new("TextLabel")
local FullBrightButton = Instance.new("TextButton")
local FullBrightText = Instance.new("TextLabel")
local TrinketEspTExt = Instance.new("TextLabel")
local TrinketEspButton = Instance.new("TextButton")
local Combat_Main = Instance.new("Frame")
local Frame_7 = Instance.new("Frame")
local CombatHeader = Instance.new("TextLabel")
local AttachToBackText = Instance.new("TextLabel")
local AttachKeyBind = Instance.new("TextButton")
local LooksFrame = Instance.new("Frame")

--Properties:

FXHub.Name = "FXHub"
FXHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
FXHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
FXHub.DisplayOrder = 1
FXHub.ResetOnSpawn = false

Resources.Name = "Resources"
Resources.Parent = FXHub

CloggerHolder.Name = "CloggerHolder"
CloggerHolder.Parent = FXHub
CloggerHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloggerHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloggerHolder.BorderSizePixel = 0
CloggerHolder.ClipsDescendants = true
CloggerHolder.Position = UDim2.new(0.263468027, 0, 0.368380338, 0)
CloggerHolder.Size = UDim2.new(0, 321, 0, 203)

Chat.Name = "Chat"
Chat.Parent = CloggerHolder
Chat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Chat.Position = UDim2.new(-0.0430621989, 0, -0.0754010305, 0)
Chat.Size = UDim2.new(0, 225, 0, 252)

ChatScrolling.Name = "ChatScrolling"
ChatScrolling.Parent = Chat
ChatScrolling.Active = true
ChatScrolling.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
ChatScrolling.BorderSizePixel = 0
ChatScrolling.Position = UDim2.new(0.0577777773, 0, 0.0607397892, 0)
ChatScrolling.Size = UDim2.new(0, 323, 0, 204)
ChatScrolling.CanvasSize = UDim2.new(0, 0, 1, 0)
ChatScrolling.ScrollBarThickness = 6

Template.Name = "Template"
Template.Parent = ChatScrolling
Template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Template.BackgroundTransparency = 1.000
Template.Position = UDim2.new(0, 5, 0, 5)
Template.Size = UDim2.new(0, 200, 0, 20)
Template.Visible = false
Template.Font = Enum.Font.SourceSans
Template.Text = "Placeholder: Placeholder"
Template.TextColor3 = Color3.fromRGB(255, 255, 255)
Template.TextSize = 14.000
Template.TextXAlignment = Enum.TextXAlignment.Left

Notification.Name = "Notification"
Notification.Parent = FXHub
Notification.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notification.BackgroundTransparency = 1.000
Notification.Position = UDim2.new(0.00673400657, 0, 0.0261248183, 0)
Notification.Size = UDim2.new(0, 322, 0, 35)

Placeholder.Name = "Placeholder"
Placeholder.Parent = Notification
Placeholder.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
Placeholder.BorderSizePixel = 0
Placeholder.Position = UDim2.new(0.0900621116, 0, 0.857142866, 0)
Placeholder.Size = UDim2.new(0, 270, 0, 22)
Placeholder.Visible = false
Placeholder.Font = Enum.Font.SourceSans
Placeholder.Text = "Placeholder"
Placeholder.TextColor3 = Color3.fromRGB(255, 255, 255)
Placeholder.TextSize = 18.000
Placeholder.TextXAlignment = Enum.TextXAlignment.Left

PlaceHolderExtender.Name = "PlaceHolderExtender"
PlaceHolderExtender.Parent = Notification
PlaceHolderExtender.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
PlaceHolderExtender.BorderSizePixel = 0
PlaceHolderExtender.Position = UDim2.new(0.0341614932, 0, 0.857142866, 0)
PlaceHolderExtender.Size = UDim2.new(0, 18, 0, 22)
PlaceHolderExtender.Visible = false

PlaceHolderColor.Name = "PlaceHolderColor"
PlaceHolderColor.Parent = Notification
PlaceHolderColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlaceHolderColor.BorderSizePixel = 0
PlaceHolderColor.Position = UDim2.new(-0.0155279506, 0, 0.857142866, 0)
PlaceHolderColor.Size = UDim2.new(0, 16, 0, 22)
PlaceHolderColor.Visible = false
PlaceHolderColor.AutoButtonColor = false
PlaceHolderColor.Font = Enum.Font.SourceSans
PlaceHolderColor.Text = ""
PlaceHolderColor.TextColor3 = Color3.fromRGB(0, 0, 0)
PlaceHolderColor.TextSize = 14.000

DragHolder.Name = "DragHolder"
DragHolder.Parent = FXHub
DragHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DragHolder.BackgroundTransparency = 1.000
DragHolder.Position = UDim2.new(0.500841737, 0, 0.139332369, 0)
DragHolder.Selectable = true
DragHolder.Size = UDim2.new(0, 200, 0, 50)
DragHolder.Font = Enum.Font.SourceSans
DragHolder.Text = "FXHub"
DragHolder.TextColor3 = Color3.fromRGB(0, 0, 0)
DragHolder.TextSize = 37.000
DragHolder.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
DragHolder.TextWrapped = true

Selector.Name = "Selector"
Selector.Parent = DragHolder
Selector.BackgroundColor3 = Color3.fromRGB(89, 86, 79)
Selector.BackgroundTransparency = 0.050
Selector.BorderSizePixel = 0
Selector.LayoutOrder = 1
Selector.Position = UDim2.new(0.273528576, 0, 0.996079385, 0)
Selector.Size = UDim2.new(0, 464, 0, 338)
Selector.CanvasSize = UDim2.new(0, 0, 8.75, 0)
Selector.ScrollBarThickness = 4

Player.Name = "Player"
Player.Parent = Selector
Player.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Player.BorderSizePixel = 0
Player.ClipsDescendants = true
Player.LayoutOrder = 1
Player.Position = UDim2.new(0.768509448, 0, 0.0145778265, 0)
Player.Selectable = true
Player.Size = UDim2.new(0, 100, 0, 37)
Player.Font = Enum.Font.SourceSans
Player.Text = "Player"
Player.TextColor3 = Color3.fromRGB(255, 255, 255)
Player.TextSize = 14.000
Player.TextStrokeColor3 = Color3.fromRGB(76, 76, 76)

Movement.Name = "Movement"
Movement.Parent = Selector
Movement.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Movement.BorderSizePixel = 0
Movement.ClipsDescendants = true
Movement.LayoutOrder = 1
Movement.Position = UDim2.new(0.768999994, 0, 0.115000002, 0)
Movement.Selectable = true
Movement.Size = UDim2.new(0, 100, 0, 37)
Movement.Font = Enum.Font.SourceSans
Movement.Text = "Movement"
Movement.TextColor3 = Color3.fromRGB(255, 255, 255)
Movement.TextSize = 14.000
Movement.TextStrokeColor3 = Color3.fromRGB(76, 76, 76)

Combat.Name = "Combat"
Combat.Parent = Selector
Combat.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Combat.BorderSizePixel = 0
Combat.ClipsDescendants = true
Combat.LayoutOrder = 1
Combat.Position = UDim2.new(0.768999994, 0, 0.215000004, 0)
Combat.Selectable = true
Combat.Size = UDim2.new(0, 100, 0, 37)
Combat.Font = Enum.Font.SourceSans
Combat.Text = "Combat"
Combat.TextColor3 = Color3.fromRGB(255, 255, 255)
Combat.TextSize = 14.000
Combat.TextStrokeColor3 = Color3.fromRGB(76, 76, 76)

TrinketBot.Name = "Trinket Bot"
TrinketBot.Parent = Selector
TrinketBot.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TrinketBot.BorderSizePixel = 0
TrinketBot.ClipsDescendants = true
TrinketBot.LayoutOrder = 1
TrinketBot.Position = UDim2.new(0.768999994, 0, 0.514999986, 0)
TrinketBot.Selectable = true
TrinketBot.Size = UDim2.new(0, 100, 0, 37)
TrinketBot.Font = Enum.Font.SourceSans
TrinketBot.Text = "Trinket Bot"
TrinketBot.TextColor3 = Color3.fromRGB(255, 255, 255)
TrinketBot.TextSize = 14.000
TrinketBot.TextStrokeColor3 = Color3.fromRGB(76, 76, 76)

Pathing.Name = "Pathing"
Pathing.Parent = Selector
Pathing.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Pathing.BorderSizePixel = 0
Pathing.ClipsDescendants = true
Pathing.LayoutOrder = 1
Pathing.Position = UDim2.new(0.768999994, 0, 0.714999974, 0)
Pathing.Selectable = true
Pathing.Size = UDim2.new(0, 100, 0, 37)
Pathing.Font = Enum.Font.SourceSans
Pathing.Text = "Pathing"
Pathing.TextColor3 = Color3.fromRGB(255, 255, 255)
Pathing.TextSize = 14.000
Pathing.TextStrokeColor3 = Color3.fromRGB(76, 76, 76)

Looted_Areas.Name = "Looted_Areas"
Looted_Areas.Parent = Selector
Looted_Areas.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Looted_Areas.BorderSizePixel = 0
Looted_Areas.ClipsDescendants = true
Looted_Areas.LayoutOrder = 1
Looted_Areas.Position = UDim2.new(0.768999994, 0, 0.61500001, 0)
Looted_Areas.Selectable = true
Looted_Areas.Size = UDim2.new(0, 100, 0, 37)
Looted_Areas.Font = Enum.Font.SourceSans
Looted_Areas.Text = "Looted Areas"
Looted_Areas.TextColor3 = Color3.fromRGB(255, 255, 255)
Looted_Areas.TextSize = 14.000
Looted_Areas.TextStrokeColor3 = Color3.fromRGB(76, 76, 76)

World.Name = "World"
World.Parent = Selector
World.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
World.BorderSizePixel = 0
World.ClipsDescendants = true
World.LayoutOrder = 1
World.Position = UDim2.new(0.768999994, 0, 0.414999992, 0)
World.Selectable = true
World.Size = UDim2.new(0, 100, 0, 37)
World.Font = Enum.Font.SourceSans
World.Text = "World"
World.TextColor3 = Color3.fromRGB(255, 255, 255)
World.TextSize = 14.000
World.TextStrokeColor3 = Color3.fromRGB(76, 76, 76)

Settings.Name = "Settings"
Settings.Parent = Selector
Settings.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Settings.BorderSizePixel = 0
Settings.ClipsDescendants = true
Settings.LayoutOrder = 1
Settings.Position = UDim2.new(0.768999994, 0, 0.915000021, 0)
Settings.Selectable = true
Settings.Size = UDim2.new(0, 100, 0, 37)
Settings.Font = Enum.Font.SourceSans
Settings.Text = "Settings"
Settings.TextColor3 = Color3.fromRGB(255, 255, 255)
Settings.TextSize = 14.000
Settings.TextStrokeColor3 = Color3.fromRGB(76, 76, 76)

Automation.Name = "Automation"
Automation.Parent = Selector
Automation.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Automation.BorderSizePixel = 0
Automation.ClipsDescendants = true
Automation.LayoutOrder = 1
Automation.Position = UDim2.new(0.768999994, 0, 0.814999998, 0)
Automation.Selectable = true
Automation.Size = UDim2.new(0, 100, 0, 37)
Automation.Font = Enum.Font.SourceSans
Automation.Text = "Automation"
Automation.TextColor3 = Color3.fromRGB(255, 255, 255)
Automation.TextSize = 14.000
Automation.TextStrokeColor3 = Color3.fromRGB(76, 76, 76)

ESP.Name = "ESP"
ESP.Parent = Selector
ESP.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
ESP.BorderSizePixel = 0
ESP.ClipsDescendants = true
ESP.LayoutOrder = 1
ESP.Position = UDim2.new(0.768999994, 0, 0.314999998, 0)
ESP.Selectable = true
ESP.Size = UDim2.new(0, 100, 0, 37)
ESP.Font = Enum.Font.SourceSans
ESP.Text = "ESP"
ESP.TextColor3 = Color3.fromRGB(255, 255, 255)
ESP.TextSize = 14.000
ESP.TextStrokeColor3 = Color3.fromRGB(76, 76, 76)

Seperator.Name = "Seperator"
Seperator.Parent = Selector
Seperator.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Seperator.BackgroundTransparency = 0.300
Seperator.BorderSizePixel = 0
Seperator.Position = UDim2.new(0.743534446, 0, 0.0125529189, 0)
Seperator.Size = UDim2.new(0, 3, 0, 432)

MainArea.Name = "MainArea"
MainArea.Parent = DragHolder
MainArea.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
MainArea.BorderSizePixel = 0
MainArea.Position = UDim2.new(0.273528606, 0, 1.11628127, 0)
MainArea.Size = UDim2.new(0, 339, 0, 324)

Player_Main.Name = "Player_Main"
Player_Main.Parent = MainArea
Player_Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Player_Main.BackgroundTransparency = 1.000
Player_Main.Size = UDim2.new(0, 339, 0, 324)
Player_Main.Visible = false

NoClipText.Name = "NoClipText"
NoClipText.Parent = Player_Main
NoClipText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NoClipText.BackgroundTransparency = 1.000
NoClipText.Position = UDim2.new(0.0324483737, 0, 0.138888896, 0)
NoClipText.Size = UDim2.new(0, 104, 0, 29)
NoClipText.Font = Enum.Font.SourceSans
NoClipText.Text = "Noclip"
NoClipText.TextColor3 = Color3.fromRGB(255, 255, 255)
NoClipText.TextSize = 16.000

NoClipButton.Name = "NoClipButton"
NoClipButton.Parent = Player_Main
NoClipButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NoClipButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoClipButton.BorderSizePixel = 3
NoClipButton.Position = UDim2.new(0.0324483775, 0, 0.160493821, 0)
NoClipButton.Size = UDim2.new(0, 19, 0, 14)
NoClipButton.AutoButtonColor = false
NoClipButton.Font = Enum.Font.SourceSans
NoClipButton.Text = ""
NoClipButton.TextColor3 = Color3.fromRGB(0, 0, 0)
NoClipButton.TextSize = 14.000

Frame.Parent = Player_Main
Frame.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0324483775, 0, 0.117283948, 0)
Frame.Size = UDim2.new(0, 242, 0.00999999978, 0)

CharacterHeader.Name = "CharacterHeader"
CharacterHeader.Parent = Player_Main
CharacterHeader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CharacterHeader.BackgroundTransparency = 1.000
CharacterHeader.Position = UDim2.new(-3.7252903e-09, 0, 0.027777778, 0)
CharacterHeader.Size = UDim2.new(0, 104, 0, 29)
CharacterHeader.Font = Enum.Font.SourceSans
CharacterHeader.Text = "Character"
CharacterHeader.TextColor3 = Color3.fromRGB(255, 255, 255)
CharacterHeader.TextSize = 16.000

ResetButton.Name = "ResetButton"
ResetButton.Parent = Player_Main
ResetButton.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
ResetButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ResetButton.BorderSizePixel = 3
ResetButton.Position = UDim2.new(0.0501474924, 0, 0.737654328, 0)
ResetButton.Size = UDim2.new(0, 198, 0, 28)
ResetButton.Font = Enum.Font.SourceSans
ResetButton.Text = "Reset"
ResetButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ResetButton.TextSize = 14.000

Frame_2.Parent = Player_Main
Frame_2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.0324483775, 0, 0.703703701, 0)
Frame_2.Size = UDim2.new(0, 242, 0.00999999978, 0)

CharacterButtonsHeader.Name = "CharacterButtonsHeader"
CharacterButtonsHeader.Parent = Player_Main
CharacterButtonsHeader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CharacterButtonsHeader.BackgroundTransparency = 1.000
CharacterButtonsHeader.Position = UDim2.new(0.0678466037, 0, 0.614197552, 0)
CharacterButtonsHeader.Size = UDim2.new(0, 104, 0, 29)
CharacterButtonsHeader.Font = Enum.Font.SourceSans
CharacterButtonsHeader.Text = "Character Buttons"
CharacterButtonsHeader.TextColor3 = Color3.fromRGB(255, 255, 255)
CharacterButtonsHeader.TextSize = 16.000

GeneralNofall.Name = "GeneralNofall"
GeneralNofall.Parent = Player_Main
GeneralNofall.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GeneralNofall.BorderColor3 = Color3.fromRGB(0, 0, 0)
GeneralNofall.BorderSizePixel = 3
GeneralNofall.Position = UDim2.new(0.0324483775, 0, 0.246913582, 0)
GeneralNofall.Size = UDim2.new(0, 19, 0, 14)
GeneralNofall.AutoButtonColor = false
GeneralNofall.Font = Enum.Font.SourceSans
GeneralNofall.Text = ""
GeneralNofall.TextColor3 = Color3.fromRGB(0, 0, 0)
GeneralNofall.TextSize = 14.000

GeneralNofall_2.Name = "GeneralNofall"
GeneralNofall_2.Parent = Player_Main
GeneralNofall_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GeneralNofall_2.BackgroundTransparency = 1.000
GeneralNofall_2.Position = UDim2.new(0.10619469, 0, 0.222222224, 0)
GeneralNofall_2.Size = UDim2.new(0, 98, 0, 29)
GeneralNofall_2.Font = Enum.Font.SourceSans
GeneralNofall_2.Text = "General Nofall"
GeneralNofall_2.TextColor3 = Color3.fromRGB(255, 255, 255)
GeneralNofall_2.TextSize = 16.000

TrinketPickupButton.Name = "TrinketPickupButton"
TrinketPickupButton.Parent = Player_Main
TrinketPickupButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TrinketPickupButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TrinketPickupButton.BorderSizePixel = 3
TrinketPickupButton.Position = UDim2.new(0.0324483812, 0, 0.42592594, 0)
TrinketPickupButton.Size = UDim2.new(0, 19, 0, 14)
TrinketPickupButton.AutoButtonColor = false
TrinketPickupButton.Font = Enum.Font.SourceSans
TrinketPickupButton.Text = ""
TrinketPickupButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TrinketPickupButton.TextSize = 14.000

TrinketPickupText.Name = "TrinketPickupText"
TrinketPickupText.Parent = Player_Main
TrinketPickupText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TrinketPickupText.BackgroundTransparency = 1.000
TrinketPickupText.Position = UDim2.new(0.156342179, 0, 0.401234597, 0)
TrinketPickupText.Size = UDim2.new(0, 104, 0, 29)
TrinketPickupText.Font = Enum.Font.SourceSans
TrinketPickupText.Text = "Auto Trinket Pickup"
TrinketPickupText.TextColor3 = Color3.fromRGB(255, 255, 255)
TrinketPickupText.TextSize = 16.000

NoFallButton.Name = "NoFallButton"
NoFallButton.Parent = Player_Main
NoFallButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NoFallButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoFallButton.BorderSizePixel = 3
NoFallButton.Position = UDim2.new(0.0324483775, 0, 0.336419761, 0)
NoFallButton.Size = UDim2.new(0, 19, 0, 14)
NoFallButton.AutoButtonColor = false
NoFallButton.Font = Enum.Font.SourceSans
NoFallButton.Text = ""
NoFallButton.TextColor3 = Color3.fromRGB(0, 0, 0)
NoFallButton.TextSize = 14.000

NoFallText.Name = "NoFallText"
NoFallText.Parent = Player_Main
NoFallText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NoFallText.BackgroundTransparency = 1.000
NoFallText.Position = UDim2.new(0.0884955674, 0, 0.311728388, 0)
NoFallText.Size = UDim2.new(0, 104, 0, 29)
NoFallText.Font = Enum.Font.SourceSans
NoFallText.Text = "Rogue Nofall"
NoFallText.TextColor3 = Color3.fromRGB(255, 255, 255)
NoFallText.TextSize = 16.000

Day1Button.Name = "Day1Button"
Day1Button.Parent = Player_Main
Day1Button.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
Day1Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Day1Button.BorderSizePixel = 3
Day1Button.Position = UDim2.new(0.654867291, 0, 0.737654328, 0)
Day1Button.Size = UDim2.new(0, 98, 0, 28)
Day1Button.Font = Enum.Font.SourceSans
Day1Button.Text = "Enable Day 1"
Day1Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Day1Button.TextSize = 14.000

IngredientPickupButton.Name = "IngredientPickupButton"
IngredientPickupButton.Parent = Player_Main
IngredientPickupButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IngredientPickupButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
IngredientPickupButton.BorderSizePixel = 3
IngredientPickupButton.Position = UDim2.new(0.0324483812, 0, 0.515432119, 0)
IngredientPickupButton.Size = UDim2.new(0, 19, 0, 14)
IngredientPickupButton.AutoButtonColor = false
IngredientPickupButton.Font = Enum.Font.SourceSans
IngredientPickupButton.Text = ""
IngredientPickupButton.TextColor3 = Color3.fromRGB(0, 0, 0)
IngredientPickupButton.TextSize = 14.000

IngredientPickup.Name = "IngredientPickup"
IngredientPickup.Parent = Player_Main
IngredientPickup.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IngredientPickup.BackgroundTransparency = 1.000
IngredientPickup.Position = UDim2.new(0.18879056, 0, 0.490740776, 0)
IngredientPickup.Size = UDim2.new(0, 104, 0, 29)
IngredientPickup.Font = Enum.Font.SourceSans
IngredientPickup.Text = "Auto Ingredient Pickup"
IngredientPickup.TextColor3 = Color3.fromRGB(255, 255, 255)
IngredientPickup.TextSize = 16.000

Movement_Main.Name = "Movement_Main"
Movement_Main.Parent = MainArea
Movement_Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Movement_Main.BackgroundTransparency = 1.000
Movement_Main.Size = UDim2.new(0, 339, 0, 324)
Movement_Main.Visible = false

SpeedButton.Name = "SpeedButton"
SpeedButton.Parent = Movement_Main
SpeedButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpeedButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpeedButton.BorderSizePixel = 3
SpeedButton.Position = UDim2.new(0.0324483775, 0, 0.166666657, 0)
SpeedButton.Size = UDim2.new(0, 19, 0, 14)
SpeedButton.AutoButtonColor = false
SpeedButton.Font = Enum.Font.SourceSans
SpeedButton.Text = ""
SpeedButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SpeedButton.TextSize = 14.000

SpeedText.Name = "SpeedText"
SpeedText.Parent = Movement_Main
SpeedText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpeedText.BackgroundTransparency = 1.000
SpeedText.Position = UDim2.new(0.0323008858, 0, 0.145864204, 0)
SpeedText.Size = UDim2.new(0, 104, 0, 29)
SpeedText.Font = Enum.Font.SourceSans
SpeedText.Text = "Speed"
SpeedText.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedText.TextSize = 16.000

FlyText.Name = "FlyText"
FlyText.Parent = Movement_Main
FlyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlyText.BackgroundTransparency = 1.000
FlyText.Position = UDim2.new(0.0323008858, 0, 0.235370368, 0)
FlyText.Size = UDim2.new(0, 104, 0, 29)
FlyText.Font = Enum.Font.SourceSans
FlyText.Text = "Fly"
FlyText.TextColor3 = Color3.fromRGB(255, 255, 255)
FlyText.TextSize = 16.000

FlyButton.Name = "FlyButton"
FlyButton.Parent = Movement_Main
FlyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlyButton.BorderSizePixel = 3
FlyButton.Position = UDim2.new(0.0324483775, 0, 0.256172836, 0)
FlyButton.Size = UDim2.new(0, 19, 0, 14)
FlyButton.AutoButtonColor = false
FlyButton.Font = Enum.Font.SourceSans
FlyButton.Text = ""
FlyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FlyButton.TextSize = 14.000

FlyKeyBind.Name = "FlyKeyBind"
FlyKeyBind.Parent = Movement_Main
FlyKeyBind.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
FlyKeyBind.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlyKeyBind.Position = UDim2.new(0.852507353, 0, 0.231481493, 0)
FlyKeyBind.Size = UDim2.new(0, 29, 0, 29)
FlyKeyBind.Font = Enum.Font.SourceSans
FlyKeyBind.Text = "?"
FlyKeyBind.TextColor3 = Color3.fromRGB(255, 255, 255)
FlyKeyBind.TextSize = 14.000

AutoFallText.Name = "AutoFallText"
AutoFallText.Parent = Movement_Main
AutoFallText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoFallText.BackgroundTransparency = 1.000
AutoFallText.Position = UDim2.new(0.0529498532, 0, 0.324876547, 0)
AutoFallText.Size = UDim2.new(0, 104, 0, 29)
AutoFallText.Font = Enum.Font.SourceSans
AutoFallText.Text = "AutoFall"
AutoFallText.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoFallText.TextSize = 16.000

AutoFallButton.Name = "AutoFallButton"
AutoFallButton.Parent = Movement_Main
AutoFallButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoFallButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoFallButton.BorderSizePixel = 3
AutoFallButton.Position = UDim2.new(0.0324483775, 0, 0.345678985, 0)
AutoFallButton.Size = UDim2.new(0, 19, 0, 14)
AutoFallButton.AutoButtonColor = false
AutoFallButton.Font = Enum.Font.SourceSans
AutoFallButton.Text = ""
AutoFallButton.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoFallButton.TextSize = 14.000

MovementHeader.Name = "MovementHeader"
MovementHeader.Parent = Movement_Main
MovementHeader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MovementHeader.BackgroundTransparency = 1.000
MovementHeader.Position = UDim2.new(-3.7252903e-09, 0, 0.027777778, 0)
MovementHeader.Size = UDim2.new(0, 104, 0, 29)
MovementHeader.Font = Enum.Font.SourceSans
MovementHeader.Text = "Movement"
MovementHeader.TextColor3 = Color3.fromRGB(255, 255, 255)
MovementHeader.TextSize = 16.000

Frame_3.Parent = Movement_Main
Frame_3.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.0324483775, 0, 0.117283948, 0)
Frame_3.Size = UDim2.new(0, 242, 0.00999999978, 0)

MaxRange.Name = "MaxRange"
MaxRange.Parent = Movement_Main
MaxRange.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MaxRange.BorderSizePixel = 0
MaxRange.Position = UDim2.new(0.268436581, 0, 0.262345672, 0)
MaxRange.Size = UDim2.new(0, 150, 0, 10)
MaxRange.AutoButtonColor = false
MaxRange.Font = Enum.Font.SourceSans
MaxRange.Text = ""
MaxRange.TextColor3 = Color3.fromRGB(0, 0, 0)
MaxRange.TextSize = 14.000

SliderShow.Name = "SliderShow"
SliderShow.Parent = Movement_Main
SliderShow.BackgroundColor3 = Color3.fromRGB(8, 86, 95)
SliderShow.BorderSizePixel = 0
SliderShow.Position = UDim2.new(0.267999977, 0, 0.261999995, 0)
SliderShow.Size = UDim2.new(0, 75, 0, 10)

Player_Main_2.Name = "Player_Main"
Player_Main_2.Parent = MainArea

Settings_Main.Name = "Settings_Main"
Settings_Main.Parent = MainArea
Settings_Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings_Main.BackgroundTransparency = 1.000
Settings_Main.Size = UDim2.new(0, 339, 0, 324)
Settings_Main.Visible = false

HotKeyHeader.Name = "HotKeyHeader"
HotKeyHeader.Parent = Settings_Main
HotKeyHeader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HotKeyHeader.BackgroundTransparency = 1.000
HotKeyHeader.Position = UDim2.new(-3.7252903e-09, 0, 0.027777778, 0)
HotKeyHeader.Size = UDim2.new(0, 104, 0, 29)
HotKeyHeader.Font = Enum.Font.SourceSans
HotKeyHeader.Text = "Hotkeys"
HotKeyHeader.TextColor3 = Color3.fromRGB(255, 255, 255)
HotKeyHeader.TextSize = 16.000

HideGuiSetButton.Name = "HideGuiSetButton"
HideGuiSetButton.Parent = Settings_Main
HideGuiSetButton.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
HideGuiSetButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HideGuiSetButton.Position = UDim2.new(0.867256641, 0, 0.163580254, 0)
HideGuiSetButton.Size = UDim2.new(0, 29, 0, 29)
HideGuiSetButton.Font = Enum.Font.SourceSans
HideGuiSetButton.Text = "?"
HideGuiSetButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HideGuiSetButton.TextSize = 14.000

Frame_4.Parent = Settings_Main
Frame_4.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(0.0324483775, 0, 0.117283948, 0)
Frame_4.Size = UDim2.new(0, 242, 0.00999999978, 0)

HideGuiHeader.Name = "HideGuiHeader"
HideGuiHeader.Parent = Settings_Main
HideGuiHeader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HideGuiHeader.BackgroundTransparency = 1.000
HideGuiHeader.Position = UDim2.new(-3.7252903e-09, 0, 0.163580239, 0)
HideGuiHeader.Size = UDim2.new(0, 104, 0, 29)
HideGuiHeader.Font = Enum.Font.SourceSans
HideGuiHeader.Text = "Hide Gui"
HideGuiHeader.TextColor3 = Color3.fromRGB(255, 255, 255)
HideGuiHeader.TextSize = 16.000

HideGuiHeader_2.Name = "HideGuiHeader"
HideGuiHeader_2.Parent = Settings_Main
HideGuiHeader_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HideGuiHeader_2.BackgroundTransparency = 1.000
HideGuiHeader_2.Position = UDim2.new(-3.7252903e-09, 0, 0.274691343, 0)
HideGuiHeader_2.Size = UDim2.new(0, 104, 0, 29)
HideGuiHeader_2.Font = Enum.Font.SourceSans
HideGuiHeader_2.Text = "Instant Log"
HideGuiHeader_2.TextColor3 = Color3.fromRGB(255, 255, 255)
HideGuiHeader_2.TextSize = 16.000

InstantLogSetKey.Name = "InstantLogSetKey"
InstantLogSetKey.Parent = Settings_Main
InstantLogSetKey.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
InstantLogSetKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
InstantLogSetKey.Position = UDim2.new(0.867256641, 0, 0.274691373, 0)
InstantLogSetKey.Size = UDim2.new(0, 29, 0, 29)
InstantLogSetKey.Font = Enum.Font.SourceSans
InstantLogSetKey.Text = "?"
InstantLogSetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
InstantLogSetKey.TextSize = 14.000

HideChatHeader.Name = "HideChatHeader"
HideChatHeader.Parent = Settings_Main
HideChatHeader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HideChatHeader.BackgroundTransparency = 1.000
HideChatHeader.Position = UDim2.new(0.0324483737, 0, 0.385802448, 0)
HideChatHeader.Size = UDim2.new(0, 104, 0, 29)
HideChatHeader.Font = Enum.Font.SourceSans
HideChatHeader.Text = "Chatlogger Toggle"
HideChatHeader.TextColor3 = Color3.fromRGB(255, 255, 255)
HideChatHeader.TextSize = 16.000

ChatLoggerSetKey.Name = "ChatLoggerSetKey"
ChatLoggerSetKey.Parent = Settings_Main
ChatLoggerSetKey.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
ChatLoggerSetKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChatLoggerSetKey.Position = UDim2.new(0.867256641, 0, 0.385802507, 0)
ChatLoggerSetKey.Size = UDim2.new(0, 29, 0, 29)
ChatLoggerSetKey.Font = Enum.Font.SourceSans
ChatLoggerSetKey.Text = "?"
ChatLoggerSetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
ChatLoggerSetKey.TextSize = 14.000

savesettingsbutton.Name = "savesettingsbutton"
savesettingsbutton.Parent = Settings_Main
savesettingsbutton.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
savesettingsbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
savesettingsbutton.BorderSizePixel = 3
savesettingsbutton.Position = UDim2.new(0.0589970499, 0, 0.688271642, 0)
savesettingsbutton.Size = UDim2.new(0, 298, 0, 28)
savesettingsbutton.Font = Enum.Font.SourceSans
savesettingsbutton.Text = "Save Settings"
savesettingsbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
savesettingsbutton.TextSize = 14.000

loadsettingsButton.Name = "loadsettingsButton"
loadsettingsButton.Parent = Settings_Main
loadsettingsButton.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
loadsettingsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
loadsettingsButton.BorderSizePixel = 3
loadsettingsButton.Position = UDim2.new(0.0589970499, 0, 0.790123463, 0)
loadsettingsButton.Size = UDim2.new(0, 298, 0, 28)
loadsettingsButton.Font = Enum.Font.SourceSans
loadsettingsButton.Text = "Load Settings"
loadsettingsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
loadsettingsButton.TextSize = 14.000

HotKeyHeader_2.Name = "HotKeyHeader"
HotKeyHeader_2.Parent = Settings_Main
HotKeyHeader_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HotKeyHeader_2.BackgroundTransparency = 1.000
HotKeyHeader_2.Position = UDim2.new(-3.7252903e-09, 0, 0.027777778, 0)
HotKeyHeader_2.Size = UDim2.new(0, 104, 0, 29)
HotKeyHeader_2.Font = Enum.Font.SourceSans
HotKeyHeader_2.Text = "Hotkeys"
HotKeyHeader_2.TextColor3 = Color3.fromRGB(255, 255, 255)
HotKeyHeader_2.TextSize = 16.000

ESP_Main.Name = "ESP_Main"
ESP_Main.Parent = MainArea
ESP_Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESP_Main.BackgroundTransparency = 1.000
ESP_Main.Size = UDim2.new(0, 339, 0, 324)
ESP_Main.Visible = false

Frame_5.Parent = ESP_Main
Frame_5.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Frame_5.BorderSizePixel = 0
Frame_5.Position = UDim2.new(0.0324483775, 0, 0.117283948, 0)
Frame_5.Size = UDim2.new(0, 242, 0.00999999978, 0)

ESPButton.Name = "ESPButton"
ESPButton.Parent = ESP_Main
ESPButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPButton.BorderSizePixel = 3
ESPButton.Position = UDim2.new(0.0324483775, 0, 0.166666657, 0)
ESPButton.Size = UDim2.new(0, 19, 0, 14)
ESPButton.AutoButtonColor = false
ESPButton.Font = Enum.Font.SourceSans
ESPButton.Text = ""
ESPButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ESPButton.TextSize = 14.000

ESPtext.Name = "ESPtext"
ESPtext.Parent = ESP_Main
ESPtext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPtext.BackgroundTransparency = 1.000
ESPtext.Position = UDim2.new(0.0323008858, 0, 0.142777786, 0)
ESPtext.Size = UDim2.new(0, 104, 0, 29)
ESPtext.Font = Enum.Font.SourceSans
ESPtext.Text = "ESP"
ESPtext.TextColor3 = Color3.fromRGB(255, 255, 255)
ESPtext.TextSize = 16.000

ESPHeader.Name = "ESPHeader"
ESPHeader.Parent = ESP_Main
ESPHeader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPHeader.BackgroundTransparency = 1.000
ESPHeader.Position = UDim2.new(-3.7252903e-09, 0, 0.027777778, 0)
ESPHeader.Size = UDim2.new(0, 104, 0, 29)
ESPHeader.Font = Enum.Font.SourceSans
ESPHeader.Text = "ESP"
ESPHeader.TextColor3 = Color3.fromRGB(255, 255, 255)
ESPHeader.TextSize = 16.000

World_Main.Name = "World_Main"
World_Main.Parent = MainArea
World_Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
World_Main.BackgroundTransparency = 1.000
World_Main.Size = UDim2.new(0, 339, 0, 324)
World_Main.Visible = false

Frame_6.Parent = World_Main
Frame_6.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Frame_6.BorderSizePixel = 0
Frame_6.Position = UDim2.new(0.0324483775, 0, 0.117283948, 0)
Frame_6.Size = UDim2.new(0, 242, 0.00999999978, 0)

WorldHeader.Name = "WorldHeader"
WorldHeader.Parent = World_Main
WorldHeader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WorldHeader.BackgroundTransparency = 1.000
WorldHeader.Position = UDim2.new(-3.7252903e-09, 0, 0.027777778, 0)
WorldHeader.Size = UDim2.new(0, 104, 0, 29)
WorldHeader.Font = Enum.Font.SourceSans
WorldHeader.Text = "World"
WorldHeader.TextColor3 = Color3.fromRGB(255, 255, 255)
WorldHeader.TextSize = 16.000

NoFogButton.Name = "NoFogButton"
NoFogButton.Parent = World_Main
NoFogButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NoFogButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoFogButton.BorderSizePixel = 3
NoFogButton.Position = UDim2.new(0.0324483775, 0, 0.160493821, 0)
NoFogButton.Size = UDim2.new(0, 19, 0, 14)
NoFogButton.AutoButtonColor = false
NoFogButton.Font = Enum.Font.SourceSans
NoFogButton.Text = ""
NoFogButton.TextColor3 = Color3.fromRGB(0, 0, 0)
NoFogButton.TextSize = 14.000

NofogText.Name = "NofogText"
NofogText.Parent = World_Main
NofogText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NofogText.BackgroundTransparency = 1.000
NofogText.Position = UDim2.new(0.0324483737, 0, 0.138888896, 0)
NofogText.Size = UDim2.new(0, 104, 0, 29)
NofogText.Font = Enum.Font.SourceSans
NofogText.Text = "Nofog"
NofogText.TextColor3 = Color3.fromRGB(255, 255, 255)
NofogText.TextSize = 16.000

FullBrightButton.Name = "FullBrightButton"
FullBrightButton.Parent = World_Main
FullBrightButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FullBrightButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FullBrightButton.BorderSizePixel = 3
FullBrightButton.Position = UDim2.new(0.0324483775, 0, 0.25, 0)
FullBrightButton.Size = UDim2.new(0, 19, 0, 14)
FullBrightButton.AutoButtonColor = false
FullBrightButton.Font = Enum.Font.SourceSans
FullBrightButton.Text = ""
FullBrightButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FullBrightButton.TextSize = 14.000

FullBrightText.Name = "FullBrightText"
FullBrightText.Parent = World_Main
FullBrightText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FullBrightText.BackgroundTransparency = 1.000
FullBrightText.Position = UDim2.new(0.0501474887, 0, 0.225308657, 0)
FullBrightText.Size = UDim2.new(0, 104, 0, 29)
FullBrightText.Font = Enum.Font.SourceSans
FullBrightText.Text = "Fullbright"
FullBrightText.TextColor3 = Color3.fromRGB(255, 255, 255)
FullBrightText.TextSize = 16.000

TrinketEspTExt.Name = "TrinketEspTExt"
TrinketEspTExt.Parent = World_Main
TrinketEspTExt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TrinketEspTExt.BackgroundTransparency = 1.000
TrinketEspTExt.Position = UDim2.new(0.0501474887, 0, 0.314814836, 0)
TrinketEspTExt.Size = UDim2.new(0, 104, 0, 29)
TrinketEspTExt.Font = Enum.Font.SourceSans
TrinketEspTExt.Text = "Trinket ESP"
TrinketEspTExt.TextColor3 = Color3.fromRGB(255, 255, 255)
TrinketEspTExt.TextSize = 16.000

TrinketEspButton.Name = "TrinketEspButton"
TrinketEspButton.Parent = World_Main
TrinketEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TrinketEspButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TrinketEspButton.BorderSizePixel = 3
TrinketEspButton.Position = UDim2.new(0.0324483775, 0, 0.339506179, 0)
TrinketEspButton.Size = UDim2.new(0, 19, 0, 14)
TrinketEspButton.AutoButtonColor = false
TrinketEspButton.Font = Enum.Font.SourceSans
TrinketEspButton.Text = ""
TrinketEspButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TrinketEspButton.TextSize = 14.000

Combat_Main.Name = "Combat_Main"
Combat_Main.Parent = MainArea
Combat_Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Combat_Main.BackgroundTransparency = 1.000
Combat_Main.Size = UDim2.new(0, 339, 0, 324)

Frame_7.Parent = Combat_Main
Frame_7.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Frame_7.BorderSizePixel = 0
Frame_7.Position = UDim2.new(0.0324483775, 0, 0.117283948, 0)
Frame_7.Size = UDim2.new(0, 242, 0.00999999978, 0)

CombatHeader.Name = "CombatHeader"
CombatHeader.Parent = Combat_Main
CombatHeader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CombatHeader.BackgroundTransparency = 1.000
CombatHeader.Position = UDim2.new(-3.7252903e-09, 0, 0.027777778, 0)
CombatHeader.Size = UDim2.new(0, 104, 0, 29)
CombatHeader.Font = Enum.Font.SourceSans
CombatHeader.Text = "Combat"
CombatHeader.TextColor3 = Color3.fromRGB(255, 255, 255)
CombatHeader.TextSize = 16.000

AttachToBackText.Name = "AttachToBackText"
AttachToBackText.Parent = Combat_Main
AttachToBackText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AttachToBackText.BackgroundTransparency = 1.000
AttachToBackText.Position = UDim2.new(0.0323008858, 0, 0.139691368, 0)
AttachToBackText.Size = UDim2.new(0, 104, 0, 29)
AttachToBackText.Font = Enum.Font.SourceSans
AttachToBackText.Text = "Attach to Back"
AttachToBackText.TextColor3 = Color3.fromRGB(255, 255, 255)
AttachToBackText.TextSize = 16.000

AttachKeyBind.Name = "AttachKeyBind"
AttachKeyBind.Parent = Combat_Main
AttachKeyBind.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
AttachKeyBind.BorderColor3 = Color3.fromRGB(0, 0, 0)
AttachKeyBind.Position = UDim2.new(0.855457187, 0, 0.141975313, 0)
AttachKeyBind.Size = UDim2.new(0, 29, 0, 29)
AttachKeyBind.Font = Enum.Font.SourceSans
AttachKeyBind.Text = "?"
AttachKeyBind.TextColor3 = Color3.fromRGB(255, 255, 255)
AttachKeyBind.TextSize = 14.000

LooksFrame.Name = "LooksFrame"
LooksFrame.Parent = DragHolder
LooksFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LooksFrame.Position = UDim2.new(0.277436733, 0, 0.868048668, 0)
LooksFrame.Size = UDim2.new(0, 464, 0, 0)

-- Module Scripts:

local fake_module_scripts = {}

do -- FXHub.player_Handler
	local script = Instance.new('ModuleScript', FXHub)
	script.Name = "player_Handler"
	local function module_script()
		
		
		local player_Handler = {}
		
		local dis = function(x1,x2,y1,y2)
		
			return math.sqrt(((x2-x1)*(x2-x1))+((y2-y1)*(y2-y1)))
		end
		
		local dis2 = function(x1,x2,y1,y2,z1,z2)
			return math.sqrt(((x2-x1)*(x2-x1))+((y2-y1)*(y2-y1))+((z2-z1)*(z2-z1)))
		end
		
		
		
		local UIS = game:GetService("UserInputService")
		local plr = game:GetService("Players").LocalPlayer
		if not plr.Character:FindFirstChild("Humanoid") then repeat wait() until plr.Character:FindFirstChild("Humanoid") end
		local noclip = false
		local speed = false 
		local fly_On = false
		
		local nofall_On = false 
		local nofall_rogue = false
		
		local nofog_On = false
		local fullbright_On = false 
		
		local autoFall_On = false
		local ingr_pickup = false
		
		local hide_gui_key = nil
		local gui_hidden = false
		local fly_key = nil
		local hide_chat = nil
		local instant_log_key = nil
		
		
		local hotkey_changed = false 
		
		local speed_Speed = 0
		local fly_Speed = 0
		
		local attach_to_back = false
		
		local trinket_pickup = false
		local trinket_esp = false
		
		local enabled_day1 = false
		
		local player_esp = false
		
		local player_names = {}
		
		local function iname(plr2,name)
			table.insert(player_names, {p=plr2,n=name})
		end
		
		
		player_Handler._Save = function()
			local a,b = pcall(function()
				local clip = "\nNoclip=" .. tostring(noclip)
				local spee = "\nspeed2=" .. tostring(speed) 
				local flyon = "\nflyon=" .. tostring(fly_On)
				local nofall = "\nnofall=" .. tostring(nofall_On)
				local nofallr = "\nroguenofall=" .. tostring(nofall_rogue)
				local nof = "\nnofog=" .. tostring(nofog_On)
				local fb = "\nfullbright=" .. tostring(fullbright_On)
				local autof = "\nautofall=" .. tostring(autoFall_On)
				local hu = "\nhideui=" .. tostring(hide_gui_key)
				local fk = "\nflykey=" .. tostring(fly_key)
				local hc = "\nchatlogger=" .. tostring(hide_chat)
				local ilc = "\ninstantlog=" .. tostring(instant_log_key)
				local spsp = "\nspeedspeed=" .. tostring(speed_Speed)
				local fsp = "\nfly_speed=" .. fly_Speed/14
				local trin = "\ntrinketpickup=" .. tostring(trinket_pickup)
				local tri = "\ntrinketesp=" .. tostring(trinket_esp)
				local pesp = "\nesp=" .. tostring(player_esp)
				local ipu = "\nipu=" .. tostring(ingr_pickup)
				local together = (clip .. spee .. flyon .. nofall .. nofallr .. nof .. fb .. autof .. hu .. fk .. hc .. ilc .. spsp .. fsp .. trin .. tri .. pesp)
				writefile("SaveSettingsFXHUB.lua", together)
			end)
		end
		player_Handler._Load = function()
			local a,b = pcall(function()
				local file = isfile("SaveSettingsFXHUB.lua")
				if not file then
				elseif file then 
					local data = loadfile("SaveSettingsFXHUB.lua")
					data()
					noclip = Noclip
					speed = speed2
					fly_On = flyon
		
					nofall_On = nofall
					nofall_rogue = roguenofall
		
					nofog_On = nofog
					fullbright_On = fullbright
		
					autoFall_On = autofall
		
					hide_gui_key = hideui
					fly_key = flykey
					hide_chat = chatlogger
					instant_log_key =instantlog
		
					ingr_pickup = ipu
		
					speed_Speed = speedspeed
					fly_Speed = fly_speed
		
					trinket_pickup = trinketpickup
					trinket_esp = trinketesp
		
					player_esp = esp
				end
			end)
		end
		
		
		player_Handler.Change_Value = function(variable,value)
			if variable == "noclip" then
				noclip = value
			elseif variable == "speed" then 
				speed = value 
			elseif variable == "fly" then 
				fly_On = value
			elseif variable == "hide_gui_key" then 
				hotkey_changed = true
				hide_gui_key = value
			elseif variable == "fly_key" then 
				hotkey_changed = true
				fly_key = value
			elseif variable == "instant_log_key" then 
				hotkey_changed = true 
				instant_log_key = value
			elseif variable == "autoFall" then
				autoFall_On = value
			elseif variable == "nofog" then
				nofog_On = value
			elseif variable == "fullbright" then
				fullbright_On = value 
			elseif variable == "nofall" then 
				nofall_On = value
			elseif variable == "chat_log_key" then 
				hide_chat = value
				hotkey_changed = true 
			elseif variable == "flyspeed" then
				fly_Speed = value/100
			elseif variable == "trinket_pickup" then 
				trinket_pickup = value
			elseif variable == "nofall_rogue" then 
				nofall_rogue = value
			elseif variable == "trinket_esp" then
				trinket_esp = value
			elseif variable == "esp_on" then
				player_esp = value
			elseif variable == "day1" then
				enabled_day1 = true
			elseif variable == "ingr_pickup" then 
				ingr_pickup = value 
			elseif variable == "attach_key" then
				hotkey_changed = true 
				attach_to_back = value
				print(tostring(value))
			end
		end
		
		for i,v in pairs(game:GetService("Players"):GetChildren()) do 
			local a,b = pcall(function()
				local name = nil
				local char = v.Character
				for _,z in pairs(char:GetChildren()) do 
					if z:FindFirstChild("Head") or z:FindFirstChildOfClass("Humanoid") then 
						name = z.Name
					end
				end
				iname(v,name)
			end)
		end
		
		game.Players.PlayerAdded:Connect(function(v)
			local a,b = pcall(function()
				local name = nil
				local char = v.Character
				for _,z in pairs(char:GetChildren()) do 
					if z:FindFirstChild("Head") or z:FindFirstChildOfClass("Humanoid") then 
						name = z.Name
					end
				end
				iname(v,name)
			end)
		end)
		
		local just_Jumped = false
		
		local chat_hidden = false
		local justJumped_Timer = 0
		local attached = false
		
		local attacher = nil
		
		local closest = 0
		
		UIS.InputBegan:Connect(function(key,typing)
			
			if not typing and hotkey_changed == false then
				 
				if key.KeyCode == attach_to_back and attached == false  then 
					
						
						
		 
						local p,o = pcall(function()
							for _,aplr in pairs(game:GetService("Players"):GetChildren()) do 
								local v = aplr.Character
		  
		
								if v:FindFirstChild("HumanoidRootPart") then 
											local a = plr.Character.HumanoidRootPart.Position
											local b = v.HumanoidRootPart.Position
											local distance = dis2(a.X,b.X,a.Y,b.Y,a.Z,b.Z)
									if distance <= 25 then 
										if closest == 0 or distance < closest then 
											closest = distance
										end		
									end
								end
		
									
		
							end
						end)
					local p,o = pcall(function()
						for _,aplr in pairs(game:GetService("Players"):GetChildren()) do 
							local v = aplr.Character
		
		
							if v:FindFirstChild("HumanoidRootPart") then 
								local a = plr.Character.HumanoidRootPart.Position
								local b = v.HumanoidRootPart.Position
								local distance = dis2(a.X,b.X,a.Y,b.Y,a.Z,b.Z)
								if distance <= 25 then 
									attacher = v
									attached = true
									spawn(function()
										wait(1)
										local temp1 = false
										v.Humanoid.Died:Connect(function()
											temp1 = true 
											attacher = nil 
											closest = 0
											attached = false
										end)
										while task.wait(0.1) do 
		
											if UIS:IsKeyDown(attach_to_back) and temp1 == false then 
												attacher = nil 
												closest = 0
												attached = false
		
												break
											elseif temp1 == true then 
												break
											end
										end
									end)
									plr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame + v.HumanoidRootPart.CFrame.lookVector * Vector3.new(-5,0,0)
		
		
								end
							end
		
		
		
						end
					end)
		
				end
				if key.KeyCode == hide_gui_key then
					if gui_hidden == false then 
						gui_hidden = true
						script.Parent.DragHolder.Visible = false
					elseif gui_hidden == true then 
						gui_hidden = false 
						script.Parent.DragHolder.Visible = true
					end
				elseif key.KeyCode == fly_key then 
					if fly_On == false then 
						fly_On = true 
						script.Parent.DragHolder.MainArea.Movement_Main.FlyButton.BackgroundColor3 = Color3.fromRGB(0,0,255)
					elseif fly_On == true  then
						fly_On = false 
						script.Parent.DragHolder.MainArea.Movement_Main.FlyButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
					end
				elseif key.KeyCode == instant_log_key then 
					plr:Kick("Instant Logged.")
				elseif key.KeyCode == hide_chat then
					if chat_hidden == false then 
						script:FindFirstAncestor("FXHub").CloggerHolder.Visible = false 
						chat_hidden = true
					elseif chat_hidden == true then
						script:FindFirstAncestor("FXHub").CloggerHolder.Visible = true
						chat_hidden = false
					end
					
				end
			elseif hotkey_changed == true then 
				hotkey_changed = false 
			end
		end)
		
		
		local seconds_falling = 0
		local timer_for_check = 0
		
		
		local blacklisted_items = {}
		
		
		local function insert(name)
			table.insert(blacklisted_items,{n=name})
		end
		
		items = {}
		items["rbxassetid://60791940"] = "Scroll"
		items["rbxassetid://2877143560"] = "Jewel"
		items["rbxassetid://2637545558"] = "Ring"
		items["rbxassetid://13116112"] = "Goblet"
		items["rbxassetid://5196577540"] = "Old Amulet"
		items["rbxassetid://5204003946"] = "Goblet"
		items["rbxassetid://5204453430"] = "Scroll"
		items["rbxassetid://5196782997"] = "Old Ring"
		items["rbxassetid://%2060791940%20"] = "Scroll"
		items["rbxassetid://%202877143560%20"] = "Jewel"
		items["rbxassetid://%202637545558%20"] = "Ring"
		items["rbxassetid://%2013116112%20"] = "Goblet"
		items["rbxassetid://%205196577540%20"] = "Amulet"
		items["rbxassetid://%205204003946%20"] = "Goblet"
		items["rbxassetid://%205204453430%20"] = "Scroll"
		items["rbxassetid://%205196782997%20"] = "Old Ring"
		items["rbxassetid://5196776695"] = "Ring"
		items["rbxassetid://%205196776695%20"] = "Ring"
		items["rbxassetid://5196551436"] = "Amulet"
		items["rbxassetid://%202877143560%20"] = "Sapphire"
		
		
		
		insert("Blood Thorne")
		insert("Blood Thorn")
		insert("BloodThorn")
		insert("BloodThorne")
		insert("HumanoidRootPart")
		insert("Moss Plant")
		insert("Crown Flower")
		insert("Lava Flower")
		insert("Dire Flower")
		insert("Tellbloom")
		insert("Scroom")
		insert("Periashroom")
		insert("Trote")
		insert("Zombie Scroom")
		insert("Glow Scroom")
		insert("Snowschroom")
		insert("Freeleaf")
		insert("Orcher Leaf")
		insert("Potato")
		insert("Polar Plant")
		insert("Canewood")
		insert("Uncanny Tentacle")
		insert("Strange Tentacle")
		insert("Vile Seed")
		insert("Desert Mist")
		insert("Acorn Light")
		insert("Ice Jar")
		insert("Creely")
		insert("UnionOperation")
		
		
		
		
		
		local moved_nofall = false
		local trinket_timer = 0 
		local player_esp_timer = 0 
		local esp_destroyed_player = nil
		local esp_destroyed_trinket = nil
		local ing_timer = 0 
		
		local alreadyset_day1 = false
		local loadedA = false
		local was_before  = false 
		game:GetService("RunService").Heartbeat:Connect(function(dt)
			ing_timer = ing_timer + 1/dt
			if attached == true and game:GetService("Players"):GetPlayerFromCharacter(attacher).Name ~= plr.Name then 
				local v = attacher
				
				was_before = true 
		
				plr.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Torso").CFrame + v:FindFirstChild("Torso").CFrame.lookVector * Vector3.new(-2.5,0,-2.5)
			elseif  attached == false and was_before == true then
				
			end
			if enabled_day1 == true and alreadyset_day1 == false then 
				alreadyset_day1 = true
				local a,b = pcall(function()
					
					local holder = plr.Character:FindFirstChild("ManaAbilities")
					
					if not holder:FindFirstChild("ManaSprint") then
					
						local run = Instance.new("Color3Value")
						run.Value = Color3.fromRGB(255,255,255)
						run.Name = "ManaSprint"
						run.Parent = holder
						
					end
					
					if not holder:FindFirstChild("CanClimb") then 
						
						local climb = Instance.new("Folder")
						climb.Name = "CanClimb"
						climb.Parent = holder
						
					end
						
					
				end)
			end
			local Mouse = plr:GetMouse()
			local mx = Mouse.X 
			local my = Mouse.Y
			player_esp_timer = player_esp_timer + dt
			trinket_timer = trinket_timer + dt
			if trinket_timer >= 1 and trinket_esp == true then 
				trinket_timer = 0
				esp_destroyed_trinket = false 
				for _,v in pairs(workspace:GetChildren()) do 
					if v:IsA("MeshPart") then
						local temp = false
						for x,z in pairs(v:GetChildren()) do 
							if z:IsA("ClickDetector") then 
								temp = true
							elseif z:FindFirstChildOfClass("ClickDetector") then 
								temp = true 
							end
						end
						if not v:FindFirstChild("Already_ESPd") and temp == true then 
		
							local check = Instance.new("Folder")
							check.Name = "Already_ESPd"
							check.Parent = v
		
							local ESP = Instance.new("BillboardGui")
							ESP.Name = "ESP_Trinket"
							ESP.AlwaysOnTop = true 
							ESP.DistanceStep = false
							ESP.Parent = v 
							ESP.Size = UDim2.new(0,10,0,10)
		
							local ESP_Frame = Instance.new("Frame")
							ESP_Frame.Parent = ESP
							ESP_Frame.Position = UDim2.new(0,0,0,7.5)
							ESP_Frame.Size = UDim2.new(0.5,10,0.5,10)
							ESP_Frame.Transparency = 0.5
							ESP_Frame.BorderColor3 = Color3.fromRGB(0,0,0)
							
							local bevel = Instance.new("UIStroke")
							bevel.Parent = ESP_Frame
							bevel.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
							bevel.LineJoinMode = Enum.LineJoinMode.Bevel
							bevel.Thickness = 2.5
							bevel.Color = Color3.fromRGB(0,0,0)
		
							local ESP_Name = Instance.new("TextLabel")
							ESP_Name.Parent = ESP
							ESP_Name.BorderSizePixel = 0
							ESP_Name.Size = UDim2.new(0.5,20,0,10)
							ESP_Name.Position = UDim2.new(0,-7,0,-9)
							ESP_Name.BackgroundTransparency = 1 
							ESP_Name.TextColor3 = Color3.fromRGB(0,0,0)
							ESP_Name.Text = "Trinket"
							
							local succes, failure = pcall(function()
								local test = items[v.MeshId]
								if test == nil then 
									ESP_Frame.BackgroundColor3 = Color3.new(0.372549, 0, 0.407843)
									ESP_Name.Text = "Artifact"
								elseif test ~= nil then 
									ESP_Name.Text = test
								end
							end)
							
							
							spawn(function()
								while wait(0.1) do 
									local hp = plr.Character.HumanoidRootPart.Position
									local vp = v.Position
									bevel.Transparency = 0.75 - 0.75*(30/dis2(hp.X,vp.X,hp.Y,vp.Y,hp.Z,vp.Z))
									ESP_Frame.Transparency = 0.75 - 0.75*(30/dis2(hp.X,vp.X,hp.Y,vp.Y,hp.Z,vp.Z))
									ESP_Name.TextTransparency = 0.75 - 0.75*(30/dis2(hp.X,vp.X,hp.Y,vp.Y,hp.Z,vp.Z))
								end
							end)
							
						end
					elseif v:IsA("Part") then
						local temp = false
						for x,z in pairs(v:GetChildren()) do 
							if z:IsA("ClickDetector") then 
								temp = true
							elseif z:FindFirstChildOfClass("ClickDetector") then 
								temp = true 
							end
						end
						if not v:FindFirstChild("Already_ESPd") and temp == true then 
		
							local check = Instance.new("Folder")
							check.Name = "Already_ESPd"
							check.Parent = v
		
							local ESP = Instance.new("BillboardGui")
							ESP.Name = "ESP_Trinket"
							ESP.AlwaysOnTop = true 
							ESP.DistanceStep = false
							ESP.Parent = v 
							ESP.Size = UDim2.new(0,10,0,10)
		
							local ESP_Frame = Instance.new("Frame")
							ESP_Frame.Parent = ESP
							ESP_Frame.Position = UDim2.new(0,0,0,7.5)
							ESP_Frame.Size = UDim2.new(0.5,10,0.5,10)
							ESP_Frame.Transparency = 0.5
							ESP_Frame.BorderColor3 = Color3.fromRGB(0,0,0)
							
							local bevel = Instance.new("UIStroke")
							bevel.Parent = ESP_Frame
							bevel.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
							bevel.LineJoinMode = Enum.LineJoinMode.Bevel
							bevel.Thickness = 2.5
							bevel.Color = Color3.fromRGB(0,0,0)
							
							local ESP_Name = Instance.new("TextLabel")
							ESP_Name.Parent = ESP
							ESP_Name.BorderSizePixel = 0
							ESP_Name.Size = UDim2.new(0.5,20,0,10)
							ESP_Name.Position = UDim2.new(0,-7,0,-9)
							ESP_Name.BackgroundTransparency = 1 
							ESP_Name.TextColor3 = Color3.fromRGB(0,0,0)
							ESP_Name.Text = "Trinket"
							
							local succes, failure = pcall(function()
								local test = items[v:FindFirstChildOfClass("Mesh").MeshId]
								if test == nil then 
									ESP_Frame.BorderColor3 = Color3.new(0.372549, 0, 0.407843)
									ESP_Name.Text = "Artifact"
								elseif test ~= nil then 
									ESP_Name.Text = test
								end
							end)
							if v:FindFirstChildOfClass("SpecialMesh") and v:FindFirstChildOfClass("SpecialMesh").MeshType == Enum.MeshType.Sphere then 
								ESP_Name.Text = "Opal"
							end
							
							spawn(function()
								while wait(0.1) do 
									local hp = plr.Character.HumanoidRootPart.Position
									local vp = v.Position
									bevel.Transparency = 0.75 - 0.75*(30/dis2(hp.X,vp.X,hp.Y,vp.Y,hp.Z,vp.Z))
									ESP_Frame.Transparency = 0.75 - 0.75*(30/dis2(hp.X,vp.X,hp.Y,vp.Y,hp.Z,vp.Z))
									ESP_Name.TextTransparency = 0.75 - 0.75*(30/dis2(hp.X,vp.X,hp.Y,vp.Y,hp.Z,vp.Z))
								end
							end)
							
						end
					end
				end
		
			elseif trinket_esp == false and esp_destroyed_trinket == false then 
				trinket_timer = 0	
				esp_destroyed_trinket = true
				local success, failure = pcall(function()
					for _,v in pairs(workspace:GetChildren()) do
						if v:FindFirstChild("Already_ESPd") then
							v:FindFirstChild("ESP_Trinket"):Destroy()
							v:FindFirstChild("Already_ESPd"):Destroy()
						end
					end
				end)
			end
			if player_esp_timer >= 1 and player_esp == true then 
		
				esp_destroyed_player = false
				player_esp_timer = 0 
				local success, failure = pcall(function()
					for _,m in pairs(workspace:FindFirstChild("Live"):GetChildren()) do
						local success, failure = pcall(function()
							local v = game:GetService("Players"):GetPlayerFromCharacter(m)
							if not v.Character:FindFirstChild("Already_ESPd") then
		
								if v.Name ~= game:GetService("Players").LocalPlayer.Character.Name then 
									local check = Instance.new("Folder")
									check.Parent = v.Character
									check.Name = "Already_ESPd"
		
		
									local ESP = Instance.new("BillboardGui")
									ESP.Name = "ESP_Player"
									ESP.Adornee = v.Character.Head
									ESP.AlwaysOnTop = true 
									ESP.DistanceStep = false
									ESP.Parent = v.Character.Torso
									ESP.Size = UDim2.new(5,0,7.5,0)
		
									local ESP_Frame = Instance.new("Frame")
									ESP_Frame.Parent = ESP
									ESP_Frame.Position = UDim2.new(0,0,0,16.5)
									ESP_Frame.Size = UDim2.new(0.5,10,0.5,10)
									ESP_Frame.Transparency = 0.5
									ESP_Frame.BorderColor3 = Color3.fromRGB(0,0,0)
									
									local bevel = Instance.new("UIStroke")
									bevel.Parent = ESP_Frame
									bevel.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
									bevel.LineJoinMode = Enum.LineJoinMode.Bevel
									bevel.Thickness = 2.5
									bevel.Transparency = 0.5
									bevel.Color = Color3.fromRGB(0,0,0)
		
		
		
									local ESP_Name = Instance.new("TextLabel")
									ESP_Name.Parent = ESP
									ESP_Name.BorderSizePixel = 0
									ESP_Name.Size = UDim2.new(0.5,20,0,10)
									ESP_Name.Position = UDim2.new(0,-7,0,-9)
									ESP_Name.BackgroundTransparency = 1 
									ESP_Name.TextColor3 = Color3.fromRGB(0, 2, 35)
									ESP_Name.Text = 'placeholder'
									ESP_Name.Visible = false
									
									 
									local ESP_Name2 = Instance.new("TextLabel")
									ESP_Name2.Parent = ESP
									ESP_Name2.BorderSizePixel = 0
									ESP_Name2.Size = UDim2.new(0.5,20,0,10)
									ESP_Name2.Position = UDim2.new(0,-7,0,1)
									ESP_Name2.BackgroundTransparency = 1 
									ESP_Name2.TextColor3 = Color3.fromRGB(0, 115, 138)
									ESP_Name2.Text = v.Name
									ESP_Name2.Visible = true 
									local a,b = pcall(function()
										local name = ""
										for p,n in pairs(player_names) do 
											if n.p.Character.Name == v.Name then 
												ESP_Name.Visible = true 
												ESP_Name.Text = n.n
											end 
										end
									end)
									if not a then print(b) end 
		
									spawn(function()
										while task.wait(0.1) do 
											if not ESP then 
												break
											else
												ESP_Frame.BackgroundColor3 = Color3.new(0+0.5*(v.Character.Humanoid.MaxHealth/v.Character.Humanoid.Health),0 + 1/(v.Character.Humanoid.MaxHealth/v.Character.Humanoid.Health),0)
											end
										end
									end)
								end	
							end
						end)
					end
				end)
			elseif player_esp == false and esp_destroyed_player == false then 
				player_esp_timer = 0 
				esp_destroyed_player = true
				for _,v in pairs(workspace:FindFirstChild("Live"):GetChildren()) do
					v.Torso:FindFirstChild("ESP_Player"):Destroy()
					v:FindFirstChild("Already_ESPd"):Destroy()
				end
			end
			
			
			if nofall_rogue == true and moved_nofall == false then
				moved_nofall = true
				game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes.ApplyFallDamage.Parent = game.ReplicatedStorage
			elseif nofall_rogue == false and moved_nofall == true then 
				moved_nofall = false 
				game.ReplicatedStorage.ApplyFallDamage.Parent = game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes
			end
			local Origin = plr.Character.HumanoidRootPart
			local withinRadius = workspace:GetPartBoundsInRadius(Origin.Position, 12.5)
			local PlrRay = Ray.new(Origin.CFrame.Position, Origin.CFrame.Position + Vector3.new(0,-10000,0))
			local hit, position = workspace:FindPartOnRay(PlrRay, plr.Character)
			local distance_from_ground = Origin.Position.Y - position.Y
			timer_for_check = timer_for_check + dt 
			if timer_for_check > 0.1 and trinket_pickup == true then 
				timer_for_check = 0
				for _,v in pairs(withinRadius) do
					if v:FindFirstChildOfClass("ClickDetector") and not v:FindFirstChild("Humanoid") or v.Parent:FindFirstChild("Humanoid") and not v:FindFirstAncestor("Stations") and not v:FindFirstAncestor("SmithingStation") and not v:FindFirstAncestor("AlchemyStation") and trinket_pickup == true then 
						local temp = false 
						for x,z in pairs(blacklisted_items) do
							if v.Name == z.n then 
								temp = true 
							end 
						end
						if temp == false then 
							local success, failure = pcall(function()
								fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
							end)
						end
					end
				end
			end
			if ing_timer > 0.1 and ingr_pickup == true then 
				ing_timer = 0 
				for _,v in pairs(withinRadius) do 
					if v:IsA("UnionOperation") and v:FindFirstChildOfClass("ClickDetector") and not v:FindFirstAncestor("Stations") and not v:FindFirstAncestor("SmithingStation") and not v:FindFirstAncestor("AlchemyStation") then
						local success, failure = pcall(function()
							fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
						end)
					end
				end
			end
			if nofog_On == true then 
				game.Lighting.FogEnd = 1000000
				game.Lighting.FogStart = 1000000
			end
			if UIS:IsKeyDown(Enum.KeyCode.Space) and plr.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then 
				just_Jumped = true 
				justJumped_Timer = 1.5
			end
			if plr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
				seconds_falling = seconds_falling + dt
			else
				seconds_falling = 0
			end
			if justJumped_Timer > 0 then 
				justJumped_Timer = justJumped_Timer - dt
			end
			if justJumped_Timer <= 0 then 
				just_Jumped = false
				justJumped_Timer = 0 
			end
			if seconds_falling >= 10 then 
				seconds_falling = 10
			end
			if fullbright_On == true then
				game.Lighting.Brightness = 3
				game.Lighting.ClockTime = 12
				game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
				game.Lighting.GlobalShadows = false
			elseif fullbright_On == false then 
				game.Lighting.GlobalShadows = true
			end
			if noclip == true then 
				if plr.Character then
					for _,v in pairs(plr.Character:GetChildren()) do
						if v:IsA("BasePart") then
							v.CanCollide = false
						end
					end
				end
			end
			if nofall_On == true and just_Jumped == false  and plr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and distance_from_ground > 5  then 
				if plr.Character and plr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then 
					local amount_to_fall = (9.7*seconds_falling)/((1/dt)/10)
					if fly_On == true and autoFall_On == true then 
						local char = plr.Character
						char.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(char.HumanoidRootPart.AssemblyLinearVelocity.X,0,char.HumanoidRootPart.AssemblyLinearVelocity.Y)
						char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame - Vector3.new(0,amount_to_fall,0)
					elseif fly_On == true and autoFall_On == false then
						local char = plr.Character
						char.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(char.HumanoidRootPart.AssemblyLinearVelocity.X,0,char.HumanoidRootPart.AssemblyLinearVelocity.Y)
					elseif fly_On == false then
						local char = plr.Character
						char.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(char.HumanoidRootPart.AssemblyLinearVelocity.X,0,char.HumanoidRootPart.AssemblyLinearVelocity.Y)
						char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame - Vector3.new(0,amount_to_fall,0)
					end
					
				end
			end
			if fly_On == true then
				
				if autoFall_On == false then 
					seconds_falling = 0 
					local char = plr.Character
					char.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(char.HumanoidRootPart.AssemblyLinearVelocity.X,0,char.HumanoidRootPart.AssemblyLinearVelocity.Y)
				elseif autoFall_On == true  and plr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and distance_from_ground > 5 and not UIS:IsKeyDown(Enum.KeyCode.Space)   then 
					local amount_to_fall = (9.7*0.1/((0.5/dt)/10))
					local char = plr.Character
					
					char.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(char.HumanoidRootPart.AssemblyLinearVelocity.X,0,char.HumanoidRootPart.AssemblyLinearVelocity.Y)
					char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame - Vector3.new(0,amount_to_fall*1.2,0)
				end
				if UIS:IsKeyDown(Enum.KeyCode.W) then
					seconds_falling = 0 
					local char = plr.Character
					if autoFall_On == true and distance_from_ground > 5 then 
						local amount_to_fall = (9.7*0.1/((0.5/dt)/10))
						char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame - Vector3.new(0,amount_to_fall*1.2,0)
					end
					char.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(char.HumanoidRootPart.AssemblyLinearVelocity.X,0,char.HumanoidRootPart.AssemblyLinearVelocity.Y)
					char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + game.Workspace.CurrentCamera.CFrame.lookVector * fly_Speed/dt
				end	
				if UIS:IsKeyDown(Enum.KeyCode.S) then
					seconds_falling = 0 
					local char = plr.Character
					if autoFall_On == true and distance_from_ground > 5 then 
						local amount_to_fall = (9.7*0.1/((0.5/dt)/10))
						char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame - Vector3.new(0,amount_to_fall*1.2,0)
					end
					char.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(char.HumanoidRootPart.AssemblyLinearVelocity.X,0,char.HumanoidRootPart.AssemblyLinearVelocity.Y)
					char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame - game.Workspace.CurrentCamera.CFrame.lookVector * fly_Speed/dt
				end
				if UIS:IsKeyDown(Enum.KeyCode.Space) then 
					seconds_falling = 0 
					local char = plr.Character
					char.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(char.HumanoidRootPart.AssemblyLinearVelocity.X,0,char.HumanoidRootPart.AssemblyLinearVelocity.Y)
					char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + Vector3.new(0,fly_Speed/dt,0)
				end
			end
			if speed == true then 
			end
		end)
		
		
		
		plr.Character.Humanoid.Died:Connect(function()
			if not plr.Character:FindFirstChild("Humanoid") then repeat wait() until plr.Character:FindFirstChild("Humanoid") end
			moved_nofall = false
			attached = false 
			attacher = nil
			closest = 0
			nofall_rogue = false
			fly_On = false
			alreadyset_day1 = false
		end)
		
		return player_Handler
		
	end
	fake_module_scripts[script] = module_script
end


-- Scripts:

local function THPP_fake_script() -- ChatScrolling.CheckChat 
	local script = Instance.new('LocalScript', ChatScrolling)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	
	local plr = game:GetService("Players").LocalPlayer
	local current = 0
	
	local spectating = nil
	
	local parent = script.Parent
	local template = parent.Template
	
	script:FindFirstAncestor("Chat").MouseLeave:Connect(function()
		local success, failure = pcall(function()
			workspace:FindFirstChildOfClass("Camera").CameraSubject = plr.Character.Humanoid
		end)
	end)
	
	local make = function(message,name)
		if current == 0 then 
			local template2 = template:Clone()
			template2.Parent = parent
			template2.Name = current
			template2.Visible = true
			template2.TextColor3 = Color3.fromRGB(50, 50, 50)
			template2.Text = name .. ": " .. message
			current = current + 1
			spawn(function()
				template2.MouseEnter:Connect(function()
					template2.TextColor3 = Color3.fromRGB(0,0,255)
					if not game:GetService("Players"):FindFirstChild(name) then 
						local char = workspace:FindFirstChild("Live"):FindFirstChild(name)
						local lplr = game:GetService("Players"):GetPlayerFromCharacter(char)
						workspace:FindFirstChildOfClass("Camera").CameraSubject = char.Humanoid
					else
						local lplr = game:GetService("Players"):FindFirstChild(name)
						local char = lplr.Character
						workspace:FindFirstChildOfClass("Camera").CameraSubject = char.Humanoid
					end
				end)
				template2.MouseLeave:Connect(function()
					template2.TextColor3 = Color3.fromRGB(50, 50, 50)
				end)
			end)
		else
			if current >= 12 then 
				parent.CanvasSize = parent.CanvasSize + UDim2.new(0,0,0,20)
			end
			if current >= 10 then 
				parent.CanvasPosition = parent.CanvasPosition + Vector2.new(0,20)
			end
			local template2 = template:Clone()
			template2.Parent = parent
			template2.Name = current
			local displacement = 20 * current 
			template2.Position = (template2.Position + UDim2.new(0,0,0,displacement))
			template2.Visible = true
			template2.Text = name .. ": " .. message
			current = current + 1
			template2.TextColor3 = Color3.fromRGB(50, 50, 50)
			spawn(function()
				template2.MouseEnter:Connect(function()
					template2.TextColor3 = Color3.fromRGB(0,0,255)
					if not game:GetService("Players"):FindFirstChild(name) then 
						local char = workspace:FindFirstChild("Live"):FindFirstChild(name)
						local lplr = game:GetService("Players"):GetPlayerFromCharacter(char)
						workspace:FindFirstChildOfClass("Camera").CameraSubject = char.Humanoid
					else
						local lplr = game:GetService("Players"):FindFirstChild(name)
						local char = lplr.Character
						workspace:FindFirstChildOfClass("Camera").CameraSubject = char.Humanoid
					end
				end)
				template2.MouseLeave:Connect(function()
					template2.TextColor3 = Color3.fromRGB(50, 50, 50)
				end)
			end)
		end
	end
	
	
	
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	
	task.spawn(function()
		coroutine.resume(coroutine.create(function()
			local ChatEvents = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents", math.huge)
			local OnMessageEvent = ChatEvents:WaitForChild("OnMessageDoneFiltering", math.huge).OnClientEvent:Connect(function(data)
				if data ~= nil then
					local player = tostring(data.FromSpeaker)
					local message = tostring(data.Message)
					make(message,player)
				end
			end)
		end))
	end)
end
coroutine.wrap(THPP_fake_script)()
local function YMYRORE_fake_script() -- CloggerHolder.Drag 
	local script = Instance.new('LocalScript', CloggerHolder)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(YMYRORE_fake_script)()
local function CEXQPTG_fake_script() -- CloggerHolder.Bevel 
	local script = Instance.new('LocalScript', CloggerHolder)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local parent = script.Parent
	
	local bevel = Instance.new("UIStroke")
	bevel.Parent = parent
	bevel.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	bevel.LineJoinMode = Enum.LineJoinMode.Bevel
	bevel.Thickness = 2.5
	bevel.Color = Color3.fromRGB(0,0,0)
end
coroutine.wrap(CEXQPTG_fake_script)()
local function PQZIQAY_fake_script() -- Notification.Notification_Handler 
	local script = Instance.new('LocalScript', Notification)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local notification_level = 0
	
	local illusionists = {}
	
	local mod_notification = function(name,rank)
		local parent = script.Parent
		local nameArea = parent.Placeholder
		local colorArea = parent.PlaceHolderColor
		local nameExtender = parent.PlaceHolderExtender
		
		local nA2 = nameArea:Clone()
		nA2.Parent = parent
		
		local cA2 = colorArea:Clone()
		cA2.Parent = parent
		
		local nE2  = nameExtender:Clone()
		nE2.Parent = parent 
		
		local already_subtracted = false
		
		local destroy_cA2 = cA2.MouseButton1Down:Connect(function()
			if not already_subtracted == true then 
				notification_level = notification_level - 1 
				nE2:Destroy()
				nA2:Destroy()
				cA2:Destroy()
			end
		end)
		
		nE2.Visible = true 
		nA2.Visible = true
		cA2.Visible = true
		
		nE2.Name = "nE2:" .. notification_level
		nA2.Name = "nA2:" .. notification_level
		cA2.Name = "cA2:" .. notification_level
		
		nE2.Position = nE2.Position + UDim2.new(0,0,0.8*notification_level,0)
		nA2.Position = nA2.Position + UDim2.new(0,0,0.8*notification_level,0) 
		cA2.Position = cA2.Position + UDim2.new(0,0,0.8*notification_level,0)
		
		notification_level = notification_level + 1 
		
		nA2.Text = rank .. " has joined: " .. name
		cA2.BackgroundColor3 = Color3.fromRGB(255,0,0)
		
		spawn(function()
			wait(15)
			if not already_subtracted == true then 
				notification_level = notification_level - 1 
				nE2:Destroy()
				nA2:Destroy()
				cA2:Destroy()
				destroy_cA2:Disconnect()
			end
		end)
		
	end
	
	
	
	
	local observe_notifier = function(name) 
		local parent = script.Parent
		local nameArea = parent.Placeholder
		local colorArea = parent.PlaceHolderColor
		local nameExtender = parent.PlaceHolderExtender
	
		local nA2 = nameArea:Clone()
		nA2.Parent = parent
	
		local cA2 = colorArea:Clone()
		cA2.Parent = parent
	
		local nE2  = nameExtender:Clone()
		nE2.Parent = parent 
	
		local already_subtracted = false
	
		local destroy_cA2 = cA2.MouseButton1Down:Connect(function()
			if not already_subtracted == true then 
				if notification_level - 1 < 0 then
					notification_level = 0
				else 
					notification_level = notification_level - 1 
				end
				
				nE2:Destroy()
				nA2:Destroy()
				cA2:Destroy()
			end
		end)
	
		nE2.Visible = true 
		nA2.Visible = true
		cA2.Visible = true
	
		nE2.Name = "nE2:" .. notification_level
		nA2.Name = "nA2:" .. notification_level
		cA2.Name = "cA2:" .. notification_level
	
		nE2.Position = nE2.Position + UDim2.new(0,0,0.8*notification_level,0)
		nA2.Position = nA2.Position + UDim2.new(0,0,0.8*notification_level,0) 
		cA2.Position = cA2.Position + UDim2.new(0,0,0.8*notification_level,0)
	
		notification_level = notification_level + 1 
	
		nA2.Text = name .. " has equiped observe."
		cA2.BackgroundColor3 = Color3.fromRGB(65, 148, 184)
	
		spawn(function()
			wait(15)
			if not already_subtracted == true then 
				if notification_level - 1 < 0 then
					notification_level = 0
				else 
					notification_level = notification_level - 1 
				end
	
				nE2:Destroy()
				nA2:Destroy()
				cA2:Destroy()
				destroy_cA2:Disconnect()
			end
		end)
	end
	
	local illusionist_notifier = function(name) 
		local parent = script.Parent
		local nameArea = parent.Placeholder
		local colorArea = parent.PlaceHolderColor
		local nameExtender = parent.PlaceHolderExtender
	
		local nA2 = nameArea:Clone()
		nA2.Parent = parent
	
		local cA2 = colorArea:Clone()
		cA2.Parent = parent
	
		local nE2  = nameExtender:Clone()
		nE2.Parent = parent 
	
		local already_subtracted = false
	
		local destroy_cA2 = cA2.MouseButton1Down:Connect(function()
			if not already_subtracted == true then 
				if notification_level - 1 < 0 then
					notification_level = 0
				else 
					notification_level = notification_level - 1 
				end
	
				nE2:Destroy()
				nA2:Destroy()
				cA2:Destroy()
			end
		end)
	
		nE2.Visible = true 
		nA2.Visible = true
		cA2.Visible = true
	
		nE2.Name = "nE2:" .. notification_level
		nA2.Name = "nA2:" .. notification_level
		cA2.Name = "cA2:" .. notification_level
	
		nE2.Position = nE2.Position + UDim2.new(0,0,0.8*notification_level,0)
		nA2.Position = nA2.Position + UDim2.new(0,0,0.8*notification_level,0) 
		cA2.Position = cA2.Position + UDim2.new(0,0,0.8*notification_level,0)
	
		notification_level = notification_level + 1 
	
		nA2.Text = "Illusionist Detected: " .. name
		cA2.BackgroundColor3 = Color3.fromRGB(0,255,0)
	
		spawn(function()
			wait(15)
			if not already_subtracted == true then 
				if notification_level - 1 < 0 then
					notification_level = 0
				else 
					notification_level = notification_level - 1 
				end
	
				nE2:Destroy()
				nA2:Destroy()
				cA2:Destroy()
				destroy_cA2:Disconnect()
			end
		end)
	end
	
	
	local is_observing = function(name) 
		local parent = script.Parent
		local nameArea = parent.Placeholder
		local colorArea = parent.PlaceHolderColor
		local nameExtender = parent.PlaceHolderExtender
	
		local nA2 = nameArea:Clone()
		nA2.Parent = parent
	
		local cA2 = colorArea:Clone()
		cA2.Parent = parent
	
		local nE2  = nameExtender:Clone()
		nE2.Parent = parent 
	
		local already_subtracted = false
	
		local destroy_cA2 = cA2.MouseButton1Down:Connect(function()
			if not already_subtracted == true then 
				if notification_level - 1 < 0 then
					notification_level = 0
				else 
					notification_level = notification_level - 1 
				end
	
				nE2:Destroy()
				nA2:Destroy()
				cA2:Destroy()
			end
		end)
	
		nE2.Visible = true 
		nA2.Visible = true
		cA2.Visible = true
	
		nE2.Name = "nE2:" .. notification_level
		nA2.Name = "nA2:" .. notification_level
		cA2.Name = "cA2:" .. notification_level
	
		nE2.Position = nE2.Position + UDim2.new(0,0,0.8*notification_level,0)
		nA2.Position = nA2.Position + UDim2.new(0,0,0.8*notification_level,0) 
		cA2.Position = cA2.Position + UDim2.new(0,0,0.8*notification_level,0)
	
		notification_level = notification_level + 1 
	
		nA2.Text = name .. " is observing."
		cA2.BackgroundColor3 = Color3.fromRGB(255, 149, 0)
	
		spawn(function()
			wait(15)
			if not already_subtracted == true then 
				if notification_level - 1 < 0 then
					notification_level = 0
				else 
					notification_level = notification_level - 1 
				end
	
				nE2:Destroy()
				nA2:Destroy()
				cA2:Destroy()
				destroy_cA2:Disconnect()
			end
		end)
	end
	
	local is_observing_ = function(name,ob) 
		local parent = script.Parent
		local nameArea = parent.Placeholder
		local colorArea = parent.PlaceHolderColor
		local nameExtender = parent.PlaceHolderExtender
	
		local nA2 = nameArea:Clone()
		nA2.Parent = parent
	
		local cA2 = colorArea:Clone()
		cA2.Parent = parent
	
		local nE2  = nameExtender:Clone()
		nE2.Parent = parent 
	
		local already_subtracted = false
	
		local destroy_cA2 = cA2.MouseButton1Down:Connect(function()
			if not already_subtracted == true then 
				if notification_level - 1 < 0 then
					notification_level = 0
				else 
					notification_level = notification_level - 1 
				end
	
				nE2:Destroy()
				nA2:Destroy()
				cA2:Destroy()
			end
		end)
	
		nE2.Visible = true 
		nA2.Visible = true
		cA2.Visible = true
	
		nE2.Name = "nE2:" .. notification_level
		nA2.Name = "nA2:" .. notification_level
		cA2.Name = "cA2:" .. notification_level
	
		nE2.Position = nE2.Position + UDim2.new(0,0,0.8*notification_level,0)
		nA2.Position = nA2.Position + UDim2.new(0,0,0.8*notification_level,0) 
		cA2.Position = cA2.Position + UDim2.new(0,0,0.8*notification_level,0)
	
		notification_level = notification_level + 1 
	
		nA2.Text = name .. " is observing " .. ob
		cA2.BackgroundColor3 = Color3.fromRGB(255, 149, 0)
	
		spawn(function()
			wait(15)
			if not already_subtracted == true then 
				if notification_level - 1 < 0 then
					notification_level = 0
				else 
					notification_level = notification_level - 1 
				end
	
				nE2:Destroy()
				nA2:Destroy()
				cA2:Destroy()
				destroy_cA2:Disconnect()
			end
		end)
	end
	
	
	
	while wait(0.1) do
		success, failure = pcall(function()
			for _,v in pairs(game.Workspace.Live:GetChildren()) do 
				if game.Players:GetPlayerFromCharacter(v) then 
					local lplr = game.Players:GetPlayerFromCharacter(v)
					if lplr.Backpack:FindFirstChild("Observe") and not v:FindFirstChild("Notified_3") then
						local temp = Instance.new("Folder")
						
						
						temp.Parent = v 
						temp.Name = "Notified_3"
						illusionist_notifier(lplr.Name)
					end
				end
				if v:FindFirstChild("Observe") and not v:FindFirstChild("Notified_1") then 
					local temp = Instance.new("Folder")
					temp.Parent = v 
					temp.Name = "Notified_1"
					observe_notifier(v.Name)
				end 
				if v:FindFirstChild("Observing") and not v:FindFirstChild("Notified_2") and v:FindFirstChild("Observe") then 
					local temp2 = Instance.new("Folder")
					temp2.Parent = v
					temp2.Name = "Notified_2"
					is_observing(v.Name)
				end
				if not v:FindFirstChild("Observe") and v:FindFirstChild("Notified_1") then 
					local temp = Instance.new("Folder")
					temp.Parent = v 
					temp.Name = "Notified_3"
					v:FindFirstChild("Notified_1"):Destroy()
				end
				if not v:FindFirstChild("Observe") and v:FindFirstChild("Notified_2") then 
					if not v:FindFirstChild("Notified_1") then 
						local temp = Instance.new("Folder")
						temp.Parent = v 
						temp.Name = "Notified_3"
					end
					v:FindFirstChild("Notified_2"):Destroy()
				end
			end
		end)
		if not success then print(failure) end
	end
	
		
	for i,v in pairs(game.Players:GetPlayers()) do 
		local rank = v:GetRoleInGroup(15131884)
		local rank2 = v:GetRoleInGroup(4556484)
		if rank == "Junior Moderator" or  rank ==  "Moderator" or  rank == "Senior Moderator" or  rank ==  "Head Moderator" or  rank == "Contributer" or rank == "Owner" or rank == "Developer" then
			mod_notification(v.Name,rank)
		end
		if rank2 == "Junior Mod" or  rank2 ==  "Moderator" or  rank2 == "Senior Moderator" or  rank2 ==  "Head Moderator" or  rank2 == "Contributer" or rank2 == "Owner" or rank2 == "Developer" or rank2 == "Developers" then
			mod_notification(v.Name,rank)
		end
	end
	
	game.Players.PlayerAdded:Connect(function(v)
		local rank = v:GetRoleInGroup(15131884)
		local rank2 = v:GetRoleInGroup(4556484)
		if rank == "Junior Moderator" or  rank ==  "Moderator" or  rank == "Senior Moderator" or  rank ==  "Head Moderator" or  rank == "Contributer" or rank == "Owner" or rank == "Developer" then
			mod_notification(v.Name,rank)
		end
		if rank2 == "Junior Mod" or  rank2 ==  "Moderator" or  rank2 == "Senior Moderator" or  rank2 ==  "Head Moderator" or  rank2 == "Contributer" or rank2 == "Owner" or rank2 == "Developer" or rank2 == "Developers" then
			mod_notification(v.Name,rank)
		end
	end)
	
	local player_names = {}
	
	local function iname(plr,name)
		table.insert(player_names, {p=plr,n=name})
	end
	
	for i,v in pairs(game:GetService("Players"):GetChildren()) do 
		local a,b = pcall(function()
			local name = nil
			local char = v.Character
			for _,z in pairs(char:GetChildren()) do 
				if z:FindFirstChild("Head") or z:FindFirstChildOfClass("Humanoid") then 
					name = z.Name
				end
			end
			iname(v,name)
		end)
	end
	
	game.Players.PlayerAdded:Connect(function(v)
		local a,b = pcall(function()
			local name = nil
			local char = v.Character
			for _,z in pairs(char:GetChildren()) do 
				if z:FindFirstChild("Head") or z:FindFirstChildOfClass("Humanoid") then 
					name = z.Name
				end
			end
			iname(v,name)
		end)
	end)
	
	local find_ = function(player,message)
		local a,b = pcall(function()
			local found_player = ""
			local player_has_been_found = false
			for _,v in pairs(player_names) do 
				if string.find(v.n, message) then
					found_player = v.n
					player_has_been_found = true 
				end
			end
			if game:GetService("Players"):FindFirstChild(player) then 
				local lplr = game:GetService("Players"):FindFirstChild(player)
			elseif workspace:FindFirstChild("Live"):FindFirstChild(player) then 
				local lplr = workspace:FindFirstChild("Live"):FindFirstChild(player)
				local char = lplr.Character
				if char:FindFirstChild("Observing") then 
					if player_has_been_found then 
						is_observing_(lplr.Name,found_player)
					end
				end
			end
		end)
	end
	
	
	task.spawn(function()
		coroutine.resume(coroutine.create(function()
			local ChatEvents = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents", math.huge)
			local OnMessageEvent = ChatEvents:WaitForChild("OnMessageDoneFiltering", math.huge).OnClientEvent:Connect(function(data)
				if data ~= nil then
					local player = tostring(data.FromSpeaker)
					local message = tostring(data.Message)
					find_(player,message)
				end
			end)
		end))
	end)
	
	-- Mods
	-- SmallEquadorianMan
end
coroutine.wrap(PQZIQAY_fake_script)()
local function TITKQK_fake_script() -- Player.LocalScript 
	local script = Instance.new('LocalScript', Player)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseEnter:Connect(function()
		script.Parent.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		local father = script:FindFirstAncestor("DragHolder").MainArea
		local active
		local folder
		for _,v in pairs(father:GetChildren()) do 
			if v:IsA("Folder") then 
				active = v.Name
				folder = v
			end
		end
		folder.Name = "Player_Main"
		for i,v in pairs(father:GetChildren()) do 
			if v:IsA("Frame") then
				if v.Name == active then
					v.Visible = false 
				end
				if v.Name == "Player_Main" then
					v.Visible = true 
				end
			end
		end
	end)
	
	
	while wait(0.1) do
		local father = script:FindFirstAncestor("DragHolder").MainArea
		local active
		local folder 
		for _,v in pairs(father:GetChildren()) do 
			if v:IsA("Folder") then 
				active = v.Name
				folder = v
			end
		end
		if folder.Name ~= script.Parent.Name .. "_Main" then
			script.Parent.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
		end
	end
end
coroutine.wrap(TITKQK_fake_script)()
local function YAWQGNA_fake_script() -- Movement.LocalScript 
	local script = Instance.new('LocalScript', Movement)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseEnter:Connect(function()
		script.Parent.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		local father = script:FindFirstAncestor("DragHolder").MainArea
		local active
		local folder 
		for _,v in pairs(father:GetChildren()) do 
			if v:IsA("Folder") then 
				active = v.Name
				folder = v
			end
		end
		folder.Name = "Movement_Main"
		for i,v in pairs(father:GetChildren()) do 
			if v:IsA("Frame") then
				if v.Name == active then
					v.Visible = false 
				end
				if v.Name == "Movement_Main" then
					v.Visible = true 
				end
			end
		end
	end)
	
	
	while wait(0.1) do
		local father = script:FindFirstAncestor("DragHolder").MainArea
		local active
		local folder 
		for _,v in pairs(father:GetChildren()) do 
			if v:IsA("Folder") then 
				active = v.Name
				folder = v
			end
		end
		if folder.Name ~= script.Parent.Name .. "_Main" then
			script.Parent.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
		end
	end
end
coroutine.wrap(YAWQGNA_fake_script)()
local function JGORTVH_fake_script() -- Combat.LocalScript 
	local script = Instance.new('LocalScript', Combat)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseEnter:Connect(function()
		script.Parent.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		local father = script:FindFirstAncestor("DragHolder").MainArea
		local active
		local folder 
		for _,v in pairs(father:GetChildren()) do 
			if v:IsA("Folder") then 
				active = v.Name
				folder = v
			end
		end
		folder.Name = "Combat_Main"
		for i,v in pairs(father:GetChildren()) do 
			if v:IsA("Frame") then
				if v.Name == active then
					v.Visible = false 
				end
				if v.Name == "Combat_Main" then
					v.Visible = true 
				end
			end
		end
	end)
	
	while wait(0.1) do
		local father = script:FindFirstAncestor("DragHolder").MainArea
		local active
		local folder 
		for _,v in pairs(father:GetChildren()) do 
			if v:IsA("Folder") then 
				active = v.Name
				folder = v
			end
		end
		if folder.Name ~= script.Parent.Name .. "_Main" then
			script.Parent.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
		end
	end
end
coroutine.wrap(JGORTVH_fake_script)()
local function YCXYF_fake_script() -- World.LocalScript 
	local script = Instance.new('LocalScript', World)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseEnter:Connect(function()
		script.Parent.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		local father = script:FindFirstAncestor("DragHolder").MainArea
		local active
		local folder 
		for _,v in pairs(father:GetChildren()) do 
			if v:IsA("Folder") then 
				active = v.Name
				folder = v
			end
		end
		folder.Name = "World_Main"
		for i,v in pairs(father:GetChildren()) do 
			if v:IsA("Frame") then
				if v.Name == active then
					v.Visible = false 
				end
				if v.Name == "World_Main" then
					v.Visible = true 
				end
			end
		end
	end)
	
	
	while wait(0.1) do
		local father = script:FindFirstAncestor("DragHolder").MainArea
		local active
		local folder 
		for _,v in pairs(father:GetChildren()) do 
			if v:IsA("Folder") then 
				active = v.Name
				folder = v
			end
		end
		if folder.Name ~= script.Parent.Name .. "_Main" then
			script.Parent.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
		end
	end
end
coroutine.wrap(YCXYF_fake_script)()
local function LGHGYHH_fake_script() -- Settings.LocalScript 
	local script = Instance.new('LocalScript', Settings)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseEnter:Connect(function()
		script.Parent.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		local father = script:FindFirstAncestor("DragHolder").MainArea
		local active
		local folder 
		for _,v in pairs(father:GetChildren()) do 
			if v:IsA("Folder") then 
				active = v.Name
				folder = v
			end
		end
		folder.Name = "Settings_Main"
		for i,v in pairs(father:GetChildren()) do 
			if v:IsA("Frame") then
				if v.Name == active then
					v.Visible = false 
				end
				if v.Name == "Settings_Main" then
					v.Visible = true 
				end
			end
		end
	end)
	
	while wait(0.1) do
		local father = script:FindFirstAncestor("DragHolder").MainArea
		local active
		local folder 
		for _,v in pairs(father:GetChildren()) do 
			if v:IsA("Folder") then 
				active = v.Name
				folder = v
			end
		end
		if folder.Name ~= script.Parent.Name .. "_Main" then
			script.Parent.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
		end
	end
end
coroutine.wrap(LGHGYHH_fake_script)()
local function EWHBCH_fake_script() -- ESP.LocalScript 
	local script = Instance.new('LocalScript', ESP)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseEnter:Connect(function()
		script.Parent.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		local father = script:FindFirstAncestor("DragHolder").MainArea
		local active
		local folder 
		for _,v in pairs(father:GetChildren()) do 
			if v:IsA("Folder") then 
				active = v.Name
				folder = v
			end
		end
		folder.Name = "ESP_Main"
		for i,v in pairs(father:GetChildren()) do 
			if v:IsA("Frame") then
				if v.Name == active then
					v.Visible = false 
				end
				if v.Name == "ESP_Main" then
					v.Visible = true 
				end
			end
		end
	end)
	
	
	while wait(0.1) do
		local father = script:FindFirstAncestor("DragHolder").MainArea
		local active
		local folder 
		for _,v in pairs(father:GetChildren()) do 
			if v:IsA("Folder") then 
				active = v.Name
				folder = v
			end
		end
		if folder.Name ~= script.Parent.Name .. "_Main" then
			script.Parent.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
		end
	end
end
coroutine.wrap(EWHBCH_fake_script)()
local function ITFXVLF_fake_script() -- Selector.Bevel 
	local script = Instance.new('LocalScript', Selector)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local parent = script.Parent
	
	local bevel = Instance.new("UIStroke")
	bevel.Parent = parent
	bevel.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	bevel.LineJoinMode = Enum.LineJoinMode.Bevel
	bevel.Thickness = 2.5
	bevel.Color = Color3.fromRGB(0,0,0)
end
coroutine.wrap(ITFXVLF_fake_script)()
local function FIXYG_fake_script() -- NoClipButton.LocalScript 
	local script = Instance.new('LocalScript', NoClipButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local father = script:FindFirstAncestor("FXHub")
	player_Handler = require(father.player_Handler)
	local noClip_OnValue = false
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if noClip_OnValue == false then
			noClip_OnValue = true 
			player_Handler.Change_Value("noclip",true)
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		elseif noClip_OnValue == true then
			noClip_OnValue = false
			player_Handler.Change_Value("noclip",false)
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
end
coroutine.wrap(FIXYG_fake_script)()
local function ZDYIYT_fake_script() -- ResetButton.LocalScript 
	local script = Instance.new('LocalScript', ResetButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseButton1Down:Connect(function()
		local plr = game:GetService("Players").LocalPlayer
		if plr.Character then
			for _,v in pairs(plr.Character:GetChildren()) do 
				if v:IsA("Part") then 
					v:Destroy()
				end
			end
		end
	end)
end
coroutine.wrap(ZDYIYT_fake_script)()
local function CQZTQNA_fake_script() -- GeneralNofall.LocalScript 
	local script = Instance.new('LocalScript', GeneralNofall)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local father = script:FindFirstAncestor("FXHub")
	player_Handler = require(father.player_Handler)
	local noClip_OnValue = false
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if noClip_OnValue == false then
			noClip_OnValue = true 
			player_Handler.Change_Value("nofall",true)
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		elseif noClip_OnValue == true then
			noClip_OnValue = false
			player_Handler.Change_Value("nofall",false)
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
end
coroutine.wrap(CQZTQNA_fake_script)()
local function QPNZG_fake_script() -- TrinketPickupButton.LocalScript 
	local script = Instance.new('LocalScript', TrinketPickupButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local father = script:FindFirstAncestor("FXHub")
	player_Handler = require(father.player_Handler)
	local trinket_pickup_OnValue = false
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if trinket_pickup_OnValue == false then
			trinket_pickup_OnValue = true 
			player_Handler.Change_Value("trinket_pickup",true)
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		elseif trinket_pickup_OnValue == true then
			trinket_pickup_OnValue = false
			player_Handler.Change_Value("trinket_pickup",false)
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
end
coroutine.wrap(QPNZG_fake_script)()
local function XLQAKQO_fake_script() -- NoFallButton.LocalScript 
	local script = Instance.new('LocalScript', NoFallButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local father = script:FindFirstAncestor("FXHub")
	player_Handler = require(father.player_Handler)
	local noClip_OnValue = false
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if noClip_OnValue == false then
			noClip_OnValue = true 
			player_Handler.Change_Value("nofall_rogue",true)
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		elseif noClip_OnValue == true then
			noClip_OnValue = false
			player_Handler.Change_Value("nofall_rogue",false)
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
end
coroutine.wrap(XLQAKQO_fake_script)()
local function XUGJPS_fake_script() -- Day1Button.LocalScript 
	local script = Instance.new('LocalScript', Day1Button)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	ph = require(script:FindFirstAncestor("FXHub").player_Handler)
	
	script.Parent.MouseButton1Down:Connect(function()
		ph.Change_Value("day1")
	end)
end
coroutine.wrap(XUGJPS_fake_script)()
local function SYLG_fake_script() -- IngredientPickupButton.LocalScript 
	local script = Instance.new('LocalScript', IngredientPickupButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local father = script:FindFirstAncestor("FXHub")
	player_Handler = require(father.player_Handler)
	local trinket_pickup_OnValue = false
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if trinket_pickup_OnValue == false then
			trinket_pickup_OnValue = true 
			player_Handler.Change_Value("ingr_pickup",true)
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		elseif trinket_pickup_OnValue == true then
			trinket_pickup_OnValue = false
			player_Handler.Change_Value("ingr_pickup",false)
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
end
coroutine.wrap(SYLG_fake_script)()
local function QSYZS_fake_script() -- SpeedButton.LocalScript 
	local script = Instance.new('LocalScript', SpeedButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local father = script:FindFirstAncestor("FXHub")
	player_Handler = require(father.player_Handler)
	local speed_OnValue = false
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if speed_OnValue == false then
			speed_OnValue = true 
			player_Handler.Change_Value("speed",true)
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		elseif speed_OnValue == true then
			speed_OnValue = false
			player_Handler.Change_Value("speed",false)
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
end
coroutine.wrap(QSYZS_fake_script)()
local function ETXA_fake_script() -- FlyButton.LocalScript 
	local script = Instance.new('LocalScript', FlyButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local father = script:FindFirstAncestor("FXHub")
	player_Handler = require(father.player_Handler)
	local fly_OnValue = false
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if fly_OnValue == false then
			fly_OnValue = true 
			player_Handler.Change_Value("fly",true)
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		elseif fly_OnValue == true then
			fly_OnValue = false
			player_Handler.Change_Value("fly",false)
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
	
	script.Parent.Changed:Connect(function(prop)
		if script.Parent.BackgroundColor3 == Color3.fromRGB(255, 255, 255) then 
			fly_OnValue = false
			player_Handler.Change_Value("fly",false)
		elseif  script.Parent.BackgroundColor3 == Color3.fromRGB(0, 0, 255) then
			fly_OnValue = true
			player_Handler.Change_Value("fly",true)
		end
	end)
	
	game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
		script.Parent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		fly_OnValue = false
		player_Handler.Change_Value("fly",false)
	end)
end
coroutine.wrap(ETXA_fake_script)()
local function EVVZNDP_fake_script() -- FlyKeyBind.LocalScript 
	local script = Instance.new('LocalScript', FlyKeyBind)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	
	local UIS = game:GetService("UserInputService")
	
	
	
	local father = script:FindFirstAncestor("FXHub")
	ph = require(father.player_Handler)
	
	
	local gui_keybind_checking = false
	
	script.Parent.MouseEnter:Connect(function()
		gui_keybind_checking = true 
	end)
	
	script.Parent.MouseLeave:Connect(function()
		gui_keybind_checking = false
	end)
	
	UIS.InputBegan:Connect(function(key, typing)
		if gui_keybind_checking then 
			ph.Change_Value("fly_key",key.KeyCode)
			script.Parent.Text = key.KeyCode.Name
		end
	end)
	
	
end
coroutine.wrap(EVVZNDP_fake_script)()
local function KTDXFXJ_fake_script() -- AutoFallButton.LocalScript 
	local script = Instance.new('LocalScript', AutoFallButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local father = script:FindFirstAncestor("FXHub")
	player_Handler = require(father.player_Handler)
	local autoFall_OnValue = false
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if autoFall_OnValue == false then
			autoFall_OnValue = true 
			player_Handler.Change_Value("autoFall",true)
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		elseif autoFall_OnValue == true then
			autoFall_OnValue = false
			player_Handler.Change_Value("autoFall",false)
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
end
coroutine.wrap(KTDXFXJ_fake_script)()
local function SOVHO_fake_script() -- MaxRange.LocalScript 
	local script = Instance.new('LocalScript', MaxRange)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	ph = require(script:FindFirstAncestor("FXHub").player_Handler)
	
	local fly_slider_clicked = false 
	local player = game.Players.LocalPlayer
	
	local Max_Speed = 5
	
	script.Parent.MouseButton1Down:Connect(function()
		fly_slider_clicked = true 
	end)
	
	
	script.Parent.MouseButton1Up:Connect(function()
		fly_slider_clicked = false 
	end)
	
	script.Parent.MouseLeave:Connect(function()
		fly_slider_clicked = false
	end)
	
	game:GetService("RunService").RenderStepped:Connect(function()
		if fly_slider_clicked == true then 
			local mouse = player:GetMouse()
			local distance = -(script.Parent.AbsolutePosition.X - mouse.X)
			local new_speed = Max_Speed/(150/distance)
			if distance < 0 then
				script.Parent.Parent.SliderShow.Size = UDim2.new(0, 1,0, 10)
				ph.Change_Value("flyspeed", 1)
			elseif distance > 150 then 
				ph.Change_Value("flyspeed", 5)
				script.Parent.Parent.SliderShow.Size = UDim2.new(0, 150,0, 10)
			else
				ph.Change_Value("flyspeed", new_speed)
				script.Parent.Parent.SliderShow.Size = UDim2.new(0, distance,0, 10)
			end
		end
	end)
end
coroutine.wrap(SOVHO_fake_script)()
local function MFDFMV_fake_script() -- HideGuiSetButton.LocalScript 
	local script = Instance.new('LocalScript', HideGuiSetButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	
	local UIS = game:GetService("UserInputService")
	
	
	
	local father = script:FindFirstAncestor("FXHub")
	ph = require(father.player_Handler)
	
	
	local gui_keybind_checking = false
	
	script.Parent.MouseEnter:Connect(function()
		gui_keybind_checking = true 
	end)
	
	script.Parent.MouseLeave:Connect(function()
		gui_keybind_checking = false
	end)
	
	UIS.InputBegan:Connect(function(key, typing)
		if gui_keybind_checking then 
			ph.Change_Value("hide_gui_key",key.KeyCode)
			script.Parent.Text = key.KeyCode.Name
		end
	end)
	
	
end
coroutine.wrap(MFDFMV_fake_script)()
local function DUWM_fake_script() -- InstantLogSetKey.LocalScript 
	local script = Instance.new('LocalScript', InstantLogSetKey)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	
	local UIS = game:GetService("UserInputService")
	
	
	
	local father = script:FindFirstAncestor("FXHub")
	ph = require(father.player_Handler)
	
	local gui_keybind_checking = false
	
	script.Parent.MouseEnter:Connect(function()
		gui_keybind_checking = true 
	end)
	
	script.Parent.MouseLeave:Connect(function()
		gui_keybind_checking = false
	end)
	
	UIS.InputBegan:Connect(function(key, typing)
		if gui_keybind_checking then 
			ph.Change_Value("instant_log_key",key.KeyCode)
			script.Parent.Text = key.KeyCode.Name
		end
	end)
	
	
end
coroutine.wrap(DUWM_fake_script)()
local function PRJUO_fake_script() -- ChatLoggerSetKey.LocalScript 
	local script = Instance.new('LocalScript', ChatLoggerSetKey)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	
	local UIS = game:GetService("UserInputService")
	
	
	
	local father = script:FindFirstAncestor("FXHub")
	ph = require(father.player_Handler)
	
	local gui_keybind_checking = false
	
	script.Parent.MouseEnter:Connect(function()
		gui_keybind_checking = true 
	end)
	
	script.Parent.MouseLeave:Connect(function()
		gui_keybind_checking = false
	end)
	
	UIS.InputBegan:Connect(function(key, typing)
		if gui_keybind_checking then 
			ph.Change_Value("chat_log_key",key.KeyCode)
			script.Parent.Text = key.KeyCode.Name
		end
	end)
	
	
end
coroutine.wrap(PRJUO_fake_script)()
local function YMUTQ_fake_script() -- savesettingsbutton.LocalScript 
	local script = Instance.new('LocalScript', savesettingsbutton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	ph = require(script:FindFirstAncestor("FXHub").player_Handler)
	
	script.Parent.MouseButton1Down:Connect(function()
		ph._Save()
	end)
end
coroutine.wrap(YMUTQ_fake_script)()
local function HFNEHJF_fake_script() -- loadsettingsButton.LocalScript 
	local script = Instance.new('LocalScript', loadsettingsButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	ph = require(script:FindFirstAncestor("FXHub").player_Handler)
	
	script.Parent.MouseButton1Down:Connect(function()
		ph._Load()
	end)
end
coroutine.wrap(HFNEHJF_fake_script)()
local function NYMMW_fake_script() -- ESPButton.LocalScript 
	local script = Instance.new('LocalScript', ESPButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local father = script:FindFirstAncestor("FXHub")
	player_Handler = require(father.player_Handler)
	local speed_OnValue = false
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if speed_OnValue == false then
			speed_OnValue = true 
			player_Handler.Change_Value("esp_on",true)
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		elseif speed_OnValue == true then
			speed_OnValue = false
			player_Handler.Change_Value("esp_on",false)
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
end
coroutine.wrap(NYMMW_fake_script)()
local function YCJNSLB_fake_script() -- NoFogButton.LocalScript 
	local script = Instance.new('LocalScript', NoFogButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local father = script:FindFirstAncestor("FXHub")
	player_Handler = require(father.player_Handler)
	local noClip_OnValue = false
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if noClip_OnValue == false then
			noClip_OnValue = true 
			player_Handler.Change_Value("nofog",true)
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		elseif noClip_OnValue == true then
			noClip_OnValue = false
			player_Handler.Change_Value("nofog",false)
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
end
coroutine.wrap(YCJNSLB_fake_script)()
local function IZBK_fake_script() -- FullBrightButton.LocalScript 
	local script = Instance.new('LocalScript', FullBrightButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local father = script:FindFirstAncestor("FXHub")
	player_Handler = require(father.player_Handler)
	local noClip_OnValue = false
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if noClip_OnValue == false then
			noClip_OnValue = true 
			player_Handler.Change_Value("fullbright",true)
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		elseif noClip_OnValue == true then
			noClip_OnValue = false
			player_Handler.Change_Value("fullbright",false)
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
end
coroutine.wrap(IZBK_fake_script)()
local function QTZFXH_fake_script() -- TrinketEspButton.LocalScript 
	local script = Instance.new('LocalScript', TrinketEspButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local father = script:FindFirstAncestor("FXHub")
	player_Handler = require(father.player_Handler)
	local noClip_OnValue = false
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if noClip_OnValue == false then
			noClip_OnValue = true 
			player_Handler.Change_Value("trinket_esp",true)
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		elseif noClip_OnValue == true then
			noClip_OnValue = false
			player_Handler.Change_Value("trinket_esp",false)
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
end
coroutine.wrap(QTZFXH_fake_script)()
local function PGDY_fake_script() -- AttachKeyBind.LocalScript 
	local script = Instance.new('LocalScript', AttachKeyBind)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	
	local UIS = game:GetService("UserInputService")
	
	
	
	local father = script:FindFirstAncestor("FXHub")
	ph = require(father.player_Handler)
	
	
	local gui_keybind_checking = false
	
	script.Parent.MouseEnter:Connect(function()
		gui_keybind_checking = true 
	end)
	
	script.Parent.MouseLeave:Connect(function()
		gui_keybind_checking = false
	end)
	
	UIS.InputBegan:Connect(function(key, typing)
		if gui_keybind_checking then 
			ph.Change_Value("attach_key",key.KeyCode)
			script.Parent.Text = key.KeyCode.Name
		end
	end)
	
	
end
coroutine.wrap(PGDY_fake_script)()
local function FVFZ_fake_script() -- MainArea.Loader 
	local script = Instance.new('LocalScript', MainArea)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local parent = script.Parent
	
	for _,v in ipairs(parent:GetChildren()) do 
		if v:IsA("Frame") then 
			if v.Name == "Player_Main" then
				parent.Parent.Selector.Player.BackgroundColor3 = Color3.fromRGB(25,25,25)
				v.Visible = true
			else
				v.Visible = false
			end
		end
	end
	
end
coroutine.wrap(FVFZ_fake_script)()
local function RWTSU_fake_script() -- DragHolder.Drag 
	local script = Instance.new('LocalScript', DragHolder)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(RWTSU_fake_script)()
