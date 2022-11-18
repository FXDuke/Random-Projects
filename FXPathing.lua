-- v0.0.1 (not optimized)
-- Video:


local Make = Instance.new("ScreenGui")
local Holder = Instance.new("Frame")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local Settings = Instance.new("Frame")
local Main_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local NewPoint = Instance.new("Frame")
local PlayerDistance = Instance.new("TextButton")
local Name = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local Spectate = Instance.new("TextButton")
local Other = Instance.new("TextButton")
local ArtiSound = Instance.new("TextButton")
local Other_2 = Instance.new("TextButton")
local Skillu = Instance.new("TextButton")
local Other_3 = Instance.new("TextButton")
local Visiblity = Instance.new("TextButton")
local Test = Instance.new("TextButton")
local Undo = Instance.new("TextButton")
local Clear = Instance.new("TextButton")
local NewPoint_2 = Instance.new("Frame")
local Point = Instance.new("TextLabel")
local UIGradient_3 = Instance.new("UIGradient")
local Create = Instance.new("TextButton")
local UIGradient_4 = Instance.new("UIGradient")
local Divider = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local UIGradient_5 = Instance.new("UIGradient")
local TrinketButton = Instance.new("TextButton")
local Other_4 = Instance.new("TextButton")
local WaitButton = Instance.new("TextButton")
local Other_5 = Instance.new("TextButton")
local Extra = Instance.new("TextButton")
local SaveButton = Instance.new("TextButton")
local Name_2 = Instance.new("TextBox")
local UICorner_5 = Instance.new("UICorner")
local UIGradient_6 = Instance.new("UIGradient")
local LoadButton = Instance.new("TextButton")
local Name2 = Instance.new("TextBox")
local UICorner_6 = Instance.new("UICorner")
local UIGradient_7 = Instance.new("UIGradient")
local Credits = Instance.new("TextLabel")
local UIGradient_8 = Instance.new("UIGradient")

--Properties:

Make.Name = "Make"
Make.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Make.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Make.ResetOnSpawn = false

Holder.Name = "Holder"
Holder.Parent = Make
Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Holder.BackgroundTransparency = 1.000
Holder.Position = UDim2.new(0.0399999991, 0, 0.600000024, 0)
Holder.Size = UDim2.new(0, 100, 0, 100)

Main.Name = "Main"
Main.Parent = Holder
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 0.200
Main.Size = UDim2.new(3.18000007, 0, 2.49000001, 0)

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = Main

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(108, 108, 108))}
UIGradient.Rotation = 90
UIGradient.Parent = Main

Settings.Name = "Settings"
Settings.Parent = Main
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BackgroundTransparency = 1.000
Settings.ClipsDescendants = true
Settings.Position = UDim2.new(-0.0440251566, 0, -1.3895582, 0)
Settings.Size = UDim2.new(0, 525, 0, 328)

Main_2.Name = "Main"
Main_2.Parent = Settings
Main_2.Active = true
Main_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main_2.BackgroundTransparency = 0.200
Main_2.Position = UDim2.new(0.0299999993, 0, 1.02499998, 0)
Main_2.Size = UDim2.new(0.873449624, 0, 0.584877968, 0)

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = Main_2

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(108, 108, 108))}
UIGradient_2.Rotation = 90
UIGradient_2.Parent = Main_2

NewPoint.Name = "NewPoint"
NewPoint.Parent = Main_2
NewPoint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NewPoint.BackgroundTransparency = 1.000
NewPoint.Size = UDim2.new(0, 100, 0, 100)

PlayerDistance.Name = "PlayerDistance"
PlayerDistance.Parent = NewPoint
PlayerDistance.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerDistance.BackgroundTransparency = 1.000
PlayerDistance.Position = UDim2.new(0.0900000036, 0, 0.149999946, 0)
PlayerDistance.Size = UDim2.new(0, 200, 0, 38)
PlayerDistance.Font = Enum.Font.FredokaOne
PlayerDistance.Text = "Player Distance"
PlayerDistance.TextColor3 = Color3.fromRGB(255, 0, 4)
PlayerDistance.TextScaled = true
PlayerDistance.TextSize = 14.000
PlayerDistance.TextStrokeColor3 = Color3.fromRGB(103, 0, 2)
PlayerDistance.TextStrokeTransparency = 0.690
PlayerDistance.TextWrapped = true
PlayerDistance.TextXAlignment = Enum.TextXAlignment.Left

Name.Name = "Name"
Name.Parent = PlayerDistance
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 0.850
Name.Position = UDim2.new(1.11500001, 0, -0.00631553261, 0)
Name.Size = UDim2.new(0, 208, 0, 38)
Name.Font = Enum.Font.Code
Name.PlaceholderText = "50"
Name.Text = ""
Name.TextColor3 = Color3.fromRGB(0, 0, 0)
Name.TextSize = 25.000
Name.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Name.TextWrapped = true
Name.TextXAlignment = Enum.TextXAlignment.Left

UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = Name

Spectate.Name = "Spectate"
Spectate.Parent = NewPoint
Spectate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Spectate.BackgroundTransparency = 1.000
Spectate.Position = UDim2.new(0.0900000036, 0, 0.569999993, 0)
Spectate.Size = UDim2.new(0, 200, 0, 38)
Spectate.Font = Enum.Font.FredokaOne
Spectate.Text = "Leave On Spectate"
Spectate.TextColor3 = Color3.fromRGB(182, 182, 182)
Spectate.TextScaled = true
Spectate.TextSize = 14.000
Spectate.TextStrokeColor3 = Color3.fromRGB(58, 0, 77)
Spectate.TextStrokeTransparency = 0.690
Spectate.TextWrapped = true
Spectate.TextXAlignment = Enum.TextXAlignment.Left

Other.Name = "Other"
Other.Parent = Spectate
Other.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Other.BackgroundTransparency = 1.000
Other.Position = UDim2.new(1.11500001, 0, 0.224999994, 0)
Other.Size = UDim2.new(0, 44, 0, 32)
Other.Font = Enum.Font.LuckiestGuy
Other.Text = "X"
Other.TextColor3 = Color3.fromRGB(255, 0, 0)
Other.TextScaled = true
Other.TextSize = 14.000
Other.TextStrokeColor3 = Color3.fromRGB(91, 0, 0)
Other.TextStrokeTransparency = 0.800
Other.TextWrapped = true
Other.TextXAlignment = Enum.TextXAlignment.Left
Other.TextYAlignment = Enum.TextYAlignment.Bottom

ArtiSound.Name = "ArtiSound"
ArtiSound.Parent = NewPoint
ArtiSound.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ArtiSound.BackgroundTransparency = 1.000
ArtiSound.Position = UDim2.new(0.0903655812, 0, 1.38476551, 0)
ArtiSound.Size = UDim2.new(0, 200, 0, 38)
ArtiSound.Font = Enum.Font.FredokaOne
ArtiSound.Text = "Artifact Sound"
ArtiSound.TextColor3 = Color3.fromRGB(182, 182, 182)
ArtiSound.TextScaled = true
ArtiSound.TextSize = 14.000
ArtiSound.TextStrokeColor3 = Color3.fromRGB(58, 0, 77)
ArtiSound.TextStrokeTransparency = 0.690
ArtiSound.TextWrapped = true
ArtiSound.TextXAlignment = Enum.TextXAlignment.Left

Other_2.Name = "Other"
Other_2.Parent = ArtiSound
Other_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Other_2.BackgroundTransparency = 1.000
Other_2.Position = UDim2.new(1.11500001, 0, 0.224999994, 0)
Other_2.Size = UDim2.new(0, 44, 0, 32)
Other_2.Font = Enum.Font.LuckiestGuy
Other_2.Text = "X"
Other_2.TextColor3 = Color3.fromRGB(255, 0, 0)
Other_2.TextScaled = true
Other_2.TextSize = 14.000
Other_2.TextStrokeColor3 = Color3.fromRGB(91, 0, 0)
Other_2.TextStrokeTransparency = 0.800
Other_2.TextWrapped = true
Other_2.TextXAlignment = Enum.TextXAlignment.Left
Other_2.TextYAlignment = Enum.TextYAlignment.Bottom

Skillu.Name = "Skillu"
Skillu.Parent = NewPoint
Skillu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Skillu.BackgroundTransparency = 1.000
Skillu.Position = UDim2.new(0.0903656036, 0, 0.988417685, 0)
Skillu.Size = UDim2.new(0, 200, 0, 38)
Skillu.Font = Enum.Font.FredokaOne
Skillu.Text = "Skip Illusionist Servers"
Skillu.TextColor3 = Color3.fromRGB(182, 182, 182)
Skillu.TextScaled = true
Skillu.TextSize = 21.000
Skillu.TextStrokeColor3 = Color3.fromRGB(58, 0, 77)
Skillu.TextStrokeTransparency = 0.690
Skillu.TextWrapped = true
Skillu.TextXAlignment = Enum.TextXAlignment.Left

Other_3.Name = "Other"
Other_3.Parent = Skillu
Other_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Other_3.BackgroundTransparency = 1.000
Other_3.Position = UDim2.new(1.11500001, 0, 0.224999994, 0)
Other_3.Size = UDim2.new(0, 44, 0, 32)
Other_3.Font = Enum.Font.LuckiestGuy
Other_3.Text = "X"
Other_3.TextColor3 = Color3.fromRGB(255, 0, 0)
Other_3.TextScaled = true
Other_3.TextSize = 14.000
Other_3.TextStrokeColor3 = Color3.fromRGB(91, 0, 0)
Other_3.TextStrokeTransparency = 0.800
Other_3.TextWrapped = true
Other_3.TextXAlignment = Enum.TextXAlignment.Left
Other_3.TextYAlignment = Enum.TextYAlignment.Bottom

Visiblity.Name = "Visiblity"
Visiblity.Parent = NewPoint
Visiblity.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Visiblity.BackgroundTransparency = 1.000
Visiblity.Position = UDim2.new(2.75999999, 0, 0.529999971, 0)
Visiblity.Size = UDim2.new(0, 144, 0, 31)
Visiblity.Font = Enum.Font.FredokaOne
Visiblity.Text = "Toggle Visibility"
Visiblity.TextColor3 = Color3.fromRGB(0, 0, 0)
Visiblity.TextScaled = true
Visiblity.TextSize = 14.000
Visiblity.TextStrokeColor3 = Color3.fromRGB(103, 0, 2)
Visiblity.TextStrokeTransparency = 0.690
Visiblity.TextWrapped = true
Visiblity.TextXAlignment = Enum.TextXAlignment.Left

Test.Name = "Test"
Test.Parent = NewPoint
Test.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Test.BackgroundTransparency = 1.000
Test.Position = UDim2.new(2.75999999, 0, 0.837166727, 0)
Test.Size = UDim2.new(0, 144, 0, 25)
Test.Font = Enum.Font.FredokaOne
Test.Text = "Test Path"
Test.TextColor3 = Color3.fromRGB(0, 0, 0)
Test.TextScaled = true
Test.TextSize = 14.000
Test.TextStrokeColor3 = Color3.fromRGB(103, 0, 2)
Test.TextStrokeTransparency = 0.690
Test.TextWrapped = true
Test.TextXAlignment = Enum.TextXAlignment.Left

Undo.Name = "Undo"
Undo.Parent = NewPoint
Undo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Undo.BackgroundTransparency = 1.000
Undo.Position = UDim2.new(2.75999999, 0, 1.13016665, 0)
Undo.Size = UDim2.new(0, 134, 0, 25)
Undo.Font = Enum.Font.FredokaOne
Undo.Text = "Undo"
Undo.TextColor3 = Color3.fromRGB(0, 0, 0)
Undo.TextScaled = true
Undo.TextSize = 14.000
Undo.TextStrokeColor3 = Color3.fromRGB(103, 0, 2)
Undo.TextStrokeTransparency = 0.690
Undo.TextWrapped = true
Undo.TextXAlignment = Enum.TextXAlignment.Left

Clear.Name = "Clear"
Clear.Parent = NewPoint
Clear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clear.BackgroundTransparency = 1.000
Clear.Position = UDim2.new(2.75999999, 0, 1.38716674, 0)
Clear.Size = UDim2.new(0, 144, 0, 25)
Clear.Font = Enum.Font.FredokaOne
Clear.Text = "Clear Path"
Clear.TextColor3 = Color3.fromRGB(0, 0, 0)
Clear.TextScaled = true
Clear.TextSize = 14.000
Clear.TextStrokeColor3 = Color3.fromRGB(103, 0, 2)
Clear.TextStrokeTransparency = 0.690
Clear.TextWrapped = true
Clear.TextXAlignment = Enum.TextXAlignment.Left

NewPoint_2.Name = "NewPoint"
NewPoint_2.Parent = Main
NewPoint_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NewPoint_2.BackgroundTransparency = 1.000
NewPoint_2.Size = UDim2.new(0, 100, 0, 100)

Point.Name = "Point"
Point.Parent = NewPoint_2
Point.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Point.BackgroundTransparency = 1.000
Point.Position = UDim2.new(0.0900000036, 0, 0.159999996, 0)
Point.Size = UDim2.new(1.5, 0, 0.400000006, 0)
Point.Font = Enum.Font.LuckiestGuy
Point.Text = "Point"
Point.TextColor3 = Color3.fromRGB(255, 255, 255)
Point.TextScaled = true
Point.TextSize = 14.000
Point.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Point.TextWrapped = true
Point.TextXAlignment = Enum.TextXAlignment.Left

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(17, 0, 200))}
UIGradient_3.Rotation = 90
UIGradient_3.Parent = Point

Create.Name = "Create"
Create.Parent = NewPoint_2
Create.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Create.BackgroundTransparency = 1.000
Create.Position = UDim2.new(1.83000004, 0, 0.075000003, 0)
Create.Size = UDim2.new(0, 120, 0, 52)
Create.Font = Enum.Font.LuckiestGuy
Create.Text = "Create"
Create.TextColor3 = Color3.fromRGB(255, 255, 255)
Create.TextScaled = true
Create.TextSize = 14.000
Create.TextStrokeColor3 = Color3.fromRGB(21, 0, 255)
Create.TextStrokeTransparency = 0.750
Create.TextWrapped = true
Create.TextXAlignment = Enum.TextXAlignment.Left

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(17, 0, 200))}
UIGradient_4.Rotation = 90
UIGradient_4.Parent = Create

Divider.Name = "Divider"
Divider.Parent = NewPoint_2
Divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Divider.Position = UDim2.new(0.0900000036, 0, 0.5, 0)
Divider.Size = UDim2.new(0, 294, 0, 6)

UICorner_4.CornerRadius = UDim.new(0, 12)
UICorner_4.Parent = Divider

UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(21, 0, 255))}
UIGradient_5.Parent = Divider

TrinketButton.Name = "TrinketButton"
TrinketButton.Parent = NewPoint_2
TrinketButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TrinketButton.BackgroundTransparency = 1.000
TrinketButton.Position = UDim2.new(0.0900000036, 0, 0.649999976, 0)
TrinketButton.Size = UDim2.new(0, 200, 0, 38)
TrinketButton.Font = Enum.Font.FredokaOne
TrinketButton.Text = "Wait For Trinkets"
TrinketButton.TextColor3 = Color3.fromRGB(255, 0, 4)
TrinketButton.TextScaled = true
TrinketButton.TextSize = 14.000
TrinketButton.TextStrokeColor3 = Color3.fromRGB(15, 103, 0)
TrinketButton.TextStrokeTransparency = 0.690
TrinketButton.TextWrapped = true
TrinketButton.TextXAlignment = Enum.TextXAlignment.Left

Other_4.Name = "Other"
Other_4.Parent = TrinketButton
Other_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Other_4.BackgroundTransparency = 1.000
Other_4.Position = UDim2.new(1.25, 0, 0.224999994, 0)
Other_4.Size = UDim2.new(0, 44, 0, 32)
Other_4.Font = Enum.Font.LuckiestGuy
Other_4.Text = "X"
Other_4.TextColor3 = Color3.fromRGB(255, 0, 0)
Other_4.TextScaled = true
Other_4.TextSize = 14.000
Other_4.TextStrokeColor3 = Color3.fromRGB(91, 0, 0)
Other_4.TextStrokeTransparency = 0.800
Other_4.TextWrapped = true
Other_4.TextXAlignment = Enum.TextXAlignment.Left
Other_4.TextYAlignment = Enum.TextYAlignment.Bottom

WaitButton.Name = "WaitButton"
WaitButton.Parent = NewPoint_2
WaitButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WaitButton.BackgroundTransparency = 1.000
WaitButton.Position = UDim2.new(0.0900000036, 0, 1.02999997, 0)
WaitButton.Size = UDim2.new(0, 200, 0, 38)
WaitButton.Font = Enum.Font.FredokaOne
WaitButton.Text = "Wait"
WaitButton.TextColor3 = Color3.fromRGB(0, 13, 255)
WaitButton.TextScaled = true
WaitButton.TextSize = 14.000
WaitButton.TextStrokeColor3 = Color3.fromRGB(15, 103, 0)
WaitButton.TextStrokeTransparency = 0.690
WaitButton.TextWrapped = true
WaitButton.TextXAlignment = Enum.TextXAlignment.Left

Other_5.Name = "Other"
Other_5.Parent = WaitButton
Other_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Other_5.BackgroundTransparency = 1.000
Other_5.Position = UDim2.new(1.25, 0, 0.224999994, 0)
Other_5.Size = UDim2.new(0, 44, 0, 32)
Other_5.Font = Enum.Font.LuckiestGuy
Other_5.Text = "X"
Other_5.TextColor3 = Color3.fromRGB(255, 0, 0)
Other_5.TextScaled = true
Other_5.TextSize = 14.000
Other_5.TextStrokeColor3 = Color3.fromRGB(91, 0, 0)
Other_5.TextStrokeTransparency = 0.800
Other_5.TextWrapped = true
Other_5.TextXAlignment = Enum.TextXAlignment.Left
Other_5.TextYAlignment = Enum.TextYAlignment.Bottom

Extra.Name = "Extra"
Extra.Parent = NewPoint_2
Extra.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Extra.BackgroundTransparency = 1.000
Extra.Position = UDim2.new(1.43000007, 0, 0.075000003, 0)
Extra.Size = UDim2.new(0, 25, 0, 25)
Extra.Font = Enum.Font.LuckiestGuy
Extra.Text = "+"
Extra.TextColor3 = Color3.fromRGB(0, 0, 0)
Extra.TextSize = 50.000
Extra.TextStrokeColor3 = Color3.fromRGB(91, 0, 0)
Extra.TextStrokeTransparency = 0.800
Extra.TextWrapped = true
Extra.TextXAlignment = Enum.TextXAlignment.Left
Extra.TextYAlignment = Enum.TextYAlignment.Top

SaveButton.Name = "SaveButton"
SaveButton.Parent = NewPoint_2
SaveButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SaveButton.BackgroundTransparency = 1.000
SaveButton.Position = UDim2.new(2.24000001, 0, 1.51999998, 0)
SaveButton.Size = UDim2.new(0, 88, 0, 38)
SaveButton.Font = Enum.Font.FredokaOne
SaveButton.Text = "Save"
SaveButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SaveButton.TextScaled = true
SaveButton.TextSize = 14.000
SaveButton.TextStrokeColor3 = Color3.fromRGB(70, 74, 0)
SaveButton.TextStrokeTransparency = 0.690
SaveButton.TextWrapped = true
SaveButton.TextXAlignment = Enum.TextXAlignment.Left

Name_2.Name = "Name"
Name_2.Parent = SaveButton
Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_2.BackgroundTransparency = 0.850
Name_2.Position = UDim2.new(-2.43272734, 0, 0.0463157892, 0)
Name_2.Size = UDim2.new(0, 200, 0, 38)
Name_2.Font = Enum.Font.Code
Name_2.PlaceholderText = "Save Path"
Name_2.Text = ""
Name_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Name_2.TextSize = 25.000
Name_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Name_2.TextWrapped = true
Name_2.TextXAlignment = Enum.TextXAlignment.Left

UICorner_5.CornerRadius = UDim.new(0, 12)
UICorner_5.Parent = Name_2

UIGradient_6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.70, Color3.fromRGB(82, 0, 189)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(21, 0, 255))}
UIGradient_6.Parent = Name_2

LoadButton.Name = "LoadButton"
LoadButton.Parent = NewPoint_2
LoadButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadButton.BackgroundTransparency = 1.000
LoadButton.Position = UDim2.new(2.24000001, 0, 1.96000004, 0)
LoadButton.Size = UDim2.new(0, 88, 0, 38)
LoadButton.Font = Enum.Font.FredokaOne
LoadButton.Text = "Load"
LoadButton.TextColor3 = Color3.fromRGB(0, 0, 0)
LoadButton.TextScaled = true
LoadButton.TextSize = 14.000
LoadButton.TextStrokeColor3 = Color3.fromRGB(70, 74, 0)
LoadButton.TextStrokeTransparency = 0.690
LoadButton.TextWrapped = true
LoadButton.TextXAlignment = Enum.TextXAlignment.Left

Name2.Name = "Name2"
Name2.Parent = LoadButton
Name2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name2.BackgroundTransparency = 0.850
Name2.Position = UDim2.new(-2.43272734, 0, 0, 0)
Name2.Size = UDim2.new(0, 200, 0, 38)
Name2.Font = Enum.Font.Code
Name2.PlaceholderText = "Load Path"
Name2.Text = ""
Name2.TextColor3 = Color3.fromRGB(255, 255, 255)
Name2.TextSize = 25.000
Name2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Name2.TextWrapped = true
Name2.TextXAlignment = Enum.TextXAlignment.Left

UICorner_6.CornerRadius = UDim.new(0, 12)
UICorner_6.Parent = Name2

UIGradient_7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.70, Color3.fromRGB(82, 0, 189)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(21, 0, 255))}
UIGradient_7.Parent = Name2

Credits.Name = "Credits"
Credits.Parent = NewPoint_2
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.Position = UDim2.new(0.100000001, 0, 0.0399999991, 0)
Credits.Size = UDim2.new(0.920000017, 0, 0.165000007, 0)
Credits.Font = Enum.Font.LuckiestGuy
Credits.Text = "Made by FXDuke"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextWrapped = true
Credits.TextXAlignment = Enum.TextXAlignment.Left

UIGradient_8.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(17, 0, 200))}
UIGradient_8.Rotation = 90
UIGradient_8.Parent = Credits

-- Module Scripts:

local fake_module_scripts = {}

do -- Make.Modules
	local script = Instance.new('ModuleScript', Make)
	script.Name = "Modules"
	local function module_script()
		_G.Points = Instance.new("Folder")
		_G.Points.Parent = workspace
		_G.Points.Name = "Points"
		local Player = game:GetService("Players").LocalPlayer
		local Attr = Instance.new("Folder")
		Attr.Parent = script
		Attr.Name = "Attributes"
		
		local WaitA = Instance.new("BoolValue")
		WaitA.Parent = Attr
		WaitA.Name = "Wait"
		local EP = Instance.new("BoolValue")
		EP.Parent = Attr
		EP.Name = "EndPoint"
		local WFT = Instance.new("BoolValue")
		WFT.Parent = Attr
		WFT.Name = "WaitForTrinket"
		
		local PlaceholderPoint = Instance.new("Part")
		PlaceholderPoint.Name = "PointPlaceHolder"
		PlaceholderPoint.Parent = script
		PlaceholderPoint.Shape = Enum.PartType.Ball
		PlaceholderPoint.Size = Vector3.new(2.3, 2.3, 2.3)
		PlaceholderPoint.Material = Enum.Material.SmoothPlastic
		PlaceholderPoint.CanCollide = false 
		PlaceholderPoint.Anchored = true 
		PlaceholderPoint.Color = Color3.fromRGB(255,255,255)
		
		
		local a = Instance.new("Attachment")
		a.Parent = PlaceholderPoint
		local b = Instance.new("RodConstraint")
		b.Visible = true 
		b.Parent = PlaceholderPoint
		b.Thickness = 0.5
		b.Attachment0 = a 
		b.Color = BrickColor.new("Institutional white")
		
		_G.WaitA2 = Instance.new("BoolValue")
		_G.WaitA2.Parent = PlaceholderPoint
		_G.WaitA2.Name = "Wait"
		_G.EP2 = Instance.new("BoolValue")
		_G.EP2.Parent = PlaceholderPoint
		_G.EP2.Name = "EndPoint"
		_G.WFT2 = Instance.new("BoolValue")
		_G.WFT2.Parent = PlaceholderPoint
		_G.WFT2.Name = "WaitForTrinket"
		
		_G.ClonedPoint = PlaceholderPoint:Clone()
		
		local Alert_Sound = Instance.new("Sound")
		Alert_Sound.Parent = script 
		Alert_Sound.Looped = true
		Alert_Sound.SoundId = "rbxassetid://3165700530"
		Alert_Sound.Volume = 1 
		Alert_Sound.Name = "Alert"
		
		local Illusionists = {}
		
		local Moderation_Roles = {
			['Junior Moderator'] = true,
			['Moderator'] = true,
			['Senior Moderator'] = true,
			['Head Moderator'] = true,
			['Developer'] = true,
			['Developers'] = true,
			['Owner'] = true,
		}
		
		local Artifacts = {
			[''] = true,
		}
		
		local SpecialAttr = {Log_Observe=false,Skip_Illu=false,Player_Distance=50,ArtiSound=false}
		Attributes = {
			Player_Distance = 50,
			ArtiSound = false,
			Skip_Illu = false,
			Log_Observe = false,
			Name = "Placeholder",
			Points = -1,
			OriginPoint = nil,
			CreatePoint = function()
				local Player = game:GetService("Players").LocalPlayer
				local a,b = pcall(function()
					local RootPosition = Player.Character.HumanoidRootPart.CFrame
					
					local Point = _G.ClonedPoint:Clone()
					Attributes.Points = Attributes.Points + 1 
					
					Point.Parent = _G.Points
					Point.CFrame = RootPosition
					
					Point.Name = "Point"..tostring(Attributes.Points)
					if Attributes.Points == 0 or #_G.Points:GetChildren() == 0 then 
						Attributes.OriginPoint = Point 
						Point.EndPoint.Value = true
					else
						if math.abs((Attributes.OriginPoint.Position-Point.Position).Magnitude) <= 5 then 
							Point.CFrame = Attributes.OriginPoint.CFrame
							Point.EndPoint.Value = true
						end
					end
					
					Point.WaitForTrinket.Value = script.Attributes.WaitForTrinket.Value 
					Point.Wait.Value = script.Attributes.Wait.Value
					
					if Attributes.Points >= 1 then 
						local Last = _G.Points:FindFirstChild("Point"..tostring(Attributes.Points-1))
						Point.RodConstraint.Attachment1 = Last:FindFirstChildOfClass("Attachment")
					end
					Point.Color = (Point.EndPoint.Value==true) and Color3.fromRGB(0, 17, 255) or Point.Color
					Point.Color = (Point.WaitForTrinket.Value==true) and Color3.fromRGB(60, 255, 0) or Point.Color
					
					
					Attr.EndPoint.Value = false 
					Attr.Wait.Value = false
					Attr.WaitForTrinket.Value = false 
					
					script.Parent.Holder.Main.NewPoint.TrinketButton.Other.Text = "X"
					script.Parent.Holder.Main.NewPoint.TrinketButton.Other.TextColor3 = Color3.fromRGB(255,0,0)
					script.Parent.Holder.Main.NewPoint.WaitButton.Other.Text = "X"
					script.Parent.Holder.Main.NewPoint.WaitButton.Other.TextColor3 = Color3.fromRGB(255,0,0)
				end)
				if not a then print(b) end 
			end,
			Undo = function()
				local Success, ErorrMessage = pcall(function()
					_G.Points:FindFirstChild("Point"..Attributes.Points):Destroy()
				end)
				if Success == true then 
					Attributes.Points = Attributes.Points-1
				end
			end,
			Save = function(name)
				local data = "-- Made by FXDuke \n"
				data = data .. "local last = nil\n"
				data = data .. "local function Point(Name,Ep,W,Wf,C,p)\n\t"
				data = data .. "local newPoint = _G.ClonedPoint:Clone()\n\t"
				data = data .. "newPoint.Name = Name\n\t"
				data = data .. "newPoint.Parent = _G.Points\n\t"
				data = data .. "newPoint.Color = C\n\t"
				data = data .. "newPoint:WaitForChild('Wait').Value = W\n\t"
				data = data .. "newPoint:WaitForChild('EndPoint').Value = Ep\n\t"
				data = data .. "newPoint:WaitForChild('WaitForTrinket').Value = Wf\n\t"
				data = data .. "newPoint.Position = p\n\t"
				data = data .. "if last ~= nil then\n\t\t"
				data = data .. "newPoint.RodConstraint.Attachment1 = last\n\t"
				data = data .. "end\n\t"
				data = data .. "last = newPoint.Attachment\n"
				data = data .. "end\n"
				data = data .. "local function makePoints()"
				local last = nil
				for _,P in pairs(_G.Points:GetChildren()) do
					data = data .. "\n\tPoint('"..P.Name.."',"..tostring(P.EndPoint.Value)..","..tostring(P.Wait.Value)..","..tostring(P.WaitForTrinket.Value)..",Color3.fromRGB("..tostring(P.Color.R*255)..","..tostring(P.Color.G*255)..","..tostring(P.Color.B*255).."),Vector3.new("..tostring(P.Position.X)..","..tostring(P.Position.Y)..","..tostring(P.Position.Z).."))\n\t"
				end
				data = data .. "\nend\nmakePoints()\nSavedAttr = {"
				data = data .. "\n\tPlayer_Distance="..tostring(Attributes.Player_Distance)..","
				data = data .. "\n\tArtiSound="..tostring(Attributes.ArtiSound)..","
				data = data .. "\n\tSkip_Illu="..tostring(Attributes.Skip_Illu)..","
				data = data .. "\n\tLog_Observe="..tostring(Attributes.Log_Observe)..","
				data = data .. "\n}\nreturn SavedAttr"
				pcall(function()
					if isfolder("FXPaths") == false then 
						makefolder("FXPaths")
					end 
					
					writefile('FXPaths/'..name .. ".lua",data)
				end)
			end,
			Load = function(name)
				pcall(function()
					if isfile("FXPaths/"..name..".lua") == true then 
						local data = loadfile("FXPaths/"..name..".lua")
						local a,b = pcall(function()
							local attr = data()
							SpecialAttr = attr
							Attributes.Skip_Illu = SpecialAttr.Skip_Illu
							Attributes.Log_Observe = SpecialAttr.Log_Observe
							Attributes.Player_Distance = SpecialAttr.Player_Distance
							Attributes.ArtiSound = SpecialAttr.ArtiSound
							if (SpecialAttr.Skip_Illu == true or Attributes.Skip_Illu == true) and #Illusionists >= 1 then 
								Player:Kick("Illusionist Detected")
								return
							end
							task.spawn(function()
								while task.wait() do 
									if (SpecialAttr.Skip_Illu == true or Attributes.Skip_Illu == true) and #Illusionists >= 1 then 
										Player:Kick("Illusionist Detected")
										return
									end
								end
							end)
						end)
						if not a then print(b) end 
					end
				end)
			end,
			Playing = false,
			Play = function()
				if Attributes.Playing == true then
					return
				end
				local a,b = pcall(function()
					Attributes.Playing = true
					
					Player.Character.HumanoidRootPart.Anchored = true 
		
		
		
					local AwaitInstructions = true 
					local function MoveTo(Object,Position2,Offset)
						Object.Anchored = true 
						local DeltaTime = wait()*1.5
						if AwaitInstructions == true then 
							return true 
						else 
							if math.abs((Object.Position - Position2).Magnitude) <= Offset then 
								AwaitInstructions = true 
								return true
							end
							if math.abs((Object.Position - Position2).Magnitude) >= 1000 then 
								Player:Kick("You are too far away from the start point.")
								return true
							end
							local Position1 = Object.Position
		
							local xChange = (Position1.X>Position2.X) and (Position1.X+((Position1.X-Position2.X)*DeltaTime)>Position1.X) and -((Position1.X-Position2.X)*DeltaTime) or ((Position1.X-Position2.X)*DeltaTime)
							xChange = (Position1.X < Position2.X) and (Position1.X+xChange<Position1.X) and -xChange or xChange
		
							local yChange = (Position1.Y>Position2.Y) and (Position1.Y+((Position1.Y-Position2.Y)*DeltaTime)>Position1.Y) and -((Position1.Y-Position2.Y)*DeltaTime) or ((Position1.Y-Position2.Y)*DeltaTime)
							yChange = (Position1.Y < Position2.Y) and (Position1.Y+yChange<Position1.Y) and -yChange or yChange
		
							local zChange = (Position1.Z>Position2.Z) and (Position1.Z+((Position1.Z-Position2.Z)*DeltaTime)>Position1.Z) and -((Position1.Z-Position2.Z)*DeltaTime) or ((Position1.Z-Position2.Z)*DeltaTime)
							zChange = (Position1.Z < Position2.Z) and (Position1.Z+zChange<Position1.Z) and -zChange or zChange
		
							Object.CFrame = Object.CFrame + Vector3.new(xChange,yChange,zChange) 
		
							return MoveTo(Object,Position2,Offset)
						end
					end
		
		
		
					local Point_Index = 0 
					local GettingTrinkets = false
					local trinkets = {}
					for _,v in pairs(workspace:GetChildren()) do 
						if v:IsA("MeshPart") or v:IsA("Part") or v:IsA("SpecialMesh") then
							local temp = false
							local clickdetector = nil
							for x,z in pairs(v:GetChildren()) do 
								if z:IsA("ClickDetector") then 
									temp = true
									clickdetector = z
								elseif z:FindFirstChildOfClass("ClickDetector") then 
									temp = true 
									clickdetector = z:FindFirstChildOfClass("ClickDetector")
								end
							end
							if temp == true then 
								table.insert(trinkets,{a=v,b=clickdetector})
							end
						end
					end
					workspace.ChildAdded:Connect(function(v)
						if v:IsA("MeshPart") or v:IsA("Part") or v:IsA("SpecialMesh") then
							local temp = false
							local clickdetector = nil
							for x,z in pairs(v:GetChildren()) do 
								if z:IsA("ClickDetector") then 
									temp = true
									clickdetector = z
								elseif z:FindFirstChildOfClass("ClickDetector") then 
									temp = true 
									clickdetector = z:FindFirstChildOfClass("ClickDetector")
								end
							end
							if temp == true then 
								table.insert(trinkets,{a=v,b=clickdetector})
							end
						end
					end)
					while task.wait() do 
						local Point = _G.Points:FindFirstChild("Point"..tostring(Point_Index))
						Point_Index = Point_Index + 1 
						if Point ~= nil and AwaitInstructions == true and GettingTrinkets == false then 
							AwaitInstructions = false
							MoveTo(Player.Character.HumanoidRootPart,Point.Position,3)
							if Point.Wait.Value == true then 
								wait(1) 
							end 
							if Point.WaitForTrinket.Value == true then
								GettingTrinkets = true 
								AwaitInstructions = true 
								local Elapsed = 0
								wait(10)
								while wait() do 
									Elapsed = Elapsed + wait()
									if #trinkets == 0 then
										break
									end
									for i,v in pairs(trinkets) do 
										if AwaitInstructions == true then 
											if Artifacts[v.b.MeshId] == true then 
												script.Alert.Playing = true
												spawn(function()
													wait(5)
													script.Alert.Playing = false
												end)
											end
											AwaitInstructions = false 
											MoveTo(Player.Character.HumanoidRootPart,v.a.Position,7.5)
											fireclickdetector(v.b)
											table.remove(trinkets,i)
										end
									end
								end
								AwaitInstructions = false
								MoveTo(Player.Character.HumanoidRootPart,Point.Position,3)
								GettingTrinkets = false
							end
						else
							break
						end
					end
					
					Player.Character.HumanoidRootPart.Anchored = false
				end)
				if not a then print(b) end 
				Attributes.Playing = false
			end,
		}
		
		
		function illuCheck(aPlayer)
			local illu = false 
			if aPlayer.Backpack:FindFirstChild("Observe") then 
				table.insert(Illusionists,{P=aPlayer,T=nil,O=false})
				illu = true 
			end 
			local spawned,ErrorMSG = pcall(function()
				if aPlayer.Character:FindFirstChild("Observe") then 
					local Observe = aPlayer.Character:FindFirstChild("Observe")
					local Target = Observe:FindFirstChildOfClass("Script"):FindFirstChildOfClass("StringValue")
					Target:GetPropertyChangedSignal("Value"):Connect(function()
						if Target.Value == Player.Name and (SpecialAttr.Log_Observe == true or Attributes.Log_Observe == true) and Attributes.Playing == true   then 
							Player:Kick("Observed")
						end 
					end)
					local Target2 = (Target~=nil) and game:GetService("Players"):FindFirstChild(Target.Value) or nil
					local Target3 = (Target~=nil) and true or false 
					table.insert(Illusionists,{P=aPlayer,T=Target2,O=Target3})
					illu = true 
				end 
				aPlayer.Character.ChildAdded:Connect(function(child)
					if child.Name == "Observe" then 
						local Observe = child
						local Target = Observe:FindFirstChildOfClass("Script"):FindFirstChildOfClass("StringValue")
						Target:GetPropertyChangedSignal("Value"):Connect(function()
							if Target.Value == Player.Name and (SpecialAttr.Log_Observe == true or Attributes.Log_Observe == true) and Attributes.Playing == true then 
								Player:Kick("Observed")
							end 
						end)
					end 
				end)
			end)
			if not spawned then
				task.spawn(function()
					repeat wait() until aPlayer.Character 
					illuCheck(aPlayer)
				end)
			end
			if illu == true then 
				aPlayer.CharacterAdded:Connect(function(chara)
					chara.ChildAdded:Connect(function(child)
						if child.Name == "Observe" then 
							local Observe = child
							local Target = Observe:FindFirstChildOfClass("Script"):FindFirstChildOfClass("StringValue")
							Target:GetPropertyChangedSignal("Value"):Connect(function()
								if Target.Value == Player.Name and (SpecialAttr.Log_Observe == true or Attributes.Log_Observe == true)  and Attributes.Playing == true  then 
									Player:Kick("Observed")
								end 
							end)
						end 
					end)
				end)
			end 
		end
		
		for _,aPlayer in pairs(game:GetService("Players"):GetChildren()) do 
			illuCheck(aPlayer)
		end 
		
		game:GetService("Players").ChildAdded:Connect(illuCheck)
		task.spawn(function()
			while wait() do 
				SpecialAttr = {Log_Observe=Attributes.Log_Observe,Skip_Illu=Attributes.Skip_Illu,Player_Distance=Attributes.Player_Distance,ArtiSound=Attributes.ArtiSound}
				if Attributes.Playing == true then 
					pcall(function()
						Player.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,0.1,0)
					end)
				end
				for _,aPlayer in pairs(game:GetService("Players"):GetChildren()) do  
					if aPlayer.UserId ~= Player.UserId then
						if Moderation_Roles[aPlayer:GetRoleInGroup(4556484)] == true then 
							Player:Kick("A " .. aPlayer:GetRoleInGroup(4556484) .. " has joined.")
						end
						pcall(function()
							local Char = Player.Character.HumanoidRootPart
							local Char2 = aPlayer.Character.HumanoidRootPart
							local Distance = math.abs((Char.Position-Char2.Position).Magnitude)
							if (Distance<=SpecialAttr.Player_Distance or Distance<=Attributes.Player_Distance) and Attributes.Playing == true then 
								Player:Kick("Player was too close.")
							end
						end)
					end
				end
			end
		end)
		return Attributes
		
		
	end
	fake_module_scripts[script] = module_script
end


-- Scripts:

local function ZUWMHUE_fake_script() -- Name.LocalScript 
	local script = Instance.new('LocalScript', Name)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Attributes = require(script:FindFirstAncestorWhichIsA("ScreenGui"):FindFirstChildOfClass("ModuleScript"))
	
	script.Parent:GetPropertyChangedSignal("Text"):Connect(function()
		local isNumber,fail = pcall(function()
			tonumber(script.Parent.Text)
		end)
		if isNumber then 
			Attributes.Player_Distance = tonumber(script.Parent.Text)
		end
	end)
end
coroutine.wrap(ZUWMHUE_fake_script)()
local function EKWNVK_fake_script() -- Spectate.LocalScript 
	local script = Instance.new('LocalScript', Spectate)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Attributes = require(script:FindFirstAncestorWhichIsA("ScreenGui"):FindFirstChildOfClass("ModuleScript"))
	local Clicked = false
	
	script.Parent.MouseButton1Down:Connect(function()
		Clicked = not Clicked
		script.Parent.Other.TextColor3 = (Clicked==true) and Color3.fromRGB(4, 255, 0) or Color3.fromRGB(255,0,0)
		script.Parent.Other.Text = (Clicked==false) and "X" or "O"
		Attributes.Log_Observe = Clicked
	end)
	script.Parent.Other.MouseButton1Down:Connect(function()
		Clicked = not Clicked
		script.Parent.Other.TextColor3 = (Clicked==true) and Color3.fromRGB(4, 255, 0) or Color3.fromRGB(255,0,0)
		script.Parent.Other.Text = (Clicked==false) and "X" or "O"
		Attributes.Log_Observe = Clicked
	end)
end
coroutine.wrap(EKWNVK_fake_script)()
local function JBBKBUD_fake_script() -- ArtiSound.LocalScript 
	local script = Instance.new('LocalScript', ArtiSound)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Attributes = require(script:FindFirstAncestorWhichIsA("ScreenGui"):FindFirstChildOfClass("ModuleScript"))
	local Clicked = false
	
	script.Parent.MouseButton1Down:Connect(function()
		Clicked = not Clicked
		script.Parent.Other.TextColor3 = (Clicked==true) and Color3.fromRGB(4, 255, 0) or Color3.fromRGB(255,0,0)
		script.Parent.Other.Text = (Clicked==false) and "X" or "O"
		Attributes.ArtiSound = Clicked
	end)
	script.Parent.Other.MouseButton1Down:Connect(function()
		Clicked = not Clicked
		script.Parent.Other.TextColor3 = (Clicked==true) and Color3.fromRGB(4, 255, 0) or Color3.fromRGB(255,0,0)
		script.Parent.Other.Text = (Clicked==false) and "X" or "O"
		Attributes.ArtiSound = Clicked
	end)
end
coroutine.wrap(JBBKBUD_fake_script)()
local function DQKDBP_fake_script() -- Skillu.LocalScript 
	local script = Instance.new('LocalScript', Skillu)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Attributes = require(script:FindFirstAncestorWhichIsA("ScreenGui").Modules)
	local Clicked = false
	
	script.Parent.MouseButton1Down:Connect(function()
		Clicked = not Clicked
		script.Parent.Other.TextColor3 = (Clicked==true) and Color3.fromRGB(4, 255, 0) or Color3.fromRGB(255,0,0)
		script.Parent.Other.Text = (Clicked==false) and "X" or "O"
		Attributes.Skip_Illu = Clicked
	end)
	script.Parent.Other.MouseButton1Down:Connect(function()
		Clicked = not Clicked
		script.Parent.Other.TextColor3 = (Clicked==true) and Color3.fromRGB(4, 255, 0) or Color3.fromRGB(255,0,0)
		script.Parent.Other.Text = (Clicked==false) and "X" or "O"
		Attributes.Skip_Illu = Clicked
	end)
end
coroutine.wrap(DQKDBP_fake_script)()
local function WLLVOF_fake_script() -- Visiblity.LocalScript 
	local script = Instance.new('LocalScript', Visiblity)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	
	script.Parent.MouseButton1Down:Connect(function()
		for _,v in pairs(_G.Points:GetChildren()) do
			v.Transparency = (v.Transparency==0) and 1 or 0 
			v.RodConstraint.Visible = not v.RodConstraint.Visible
		end
	end)
end
coroutine.wrap(WLLVOF_fake_script)()
local function PBMH_fake_script() -- Test.LocalScript 
	local script = Instance.new('LocalScript', Test)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Attributes = require(script:FindFirstAncestorWhichIsA("ScreenGui"):FindFirstChildOfClass("ModuleScript"))
	
	
	
	script.Parent.MouseButton1Down:Connect(function()
		Attributes.Play()
	end)
end
coroutine.wrap(PBMH_fake_script)()
local function PNAS_fake_script() -- Undo.LocalScript 
	local script = Instance.new('LocalScript', Undo)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Attributes = require(script:FindFirstAncestorWhichIsA("ScreenGui"):FindFirstChildOfClass("ModuleScript"))
	script.Parent.MouseButton1Down:Connect(function()
		Attributes.Undo()
	end)
end
coroutine.wrap(PNAS_fake_script)()
local function CCUTUL_fake_script() -- Clear.LocalScript 
	local script = Instance.new('LocalScript', Clear)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Attributes = require(script:FindFirstAncestorWhichIsA("ScreenGui"):FindFirstChildOfClass("ModuleScript"))
	
	
	
	
	
	
	
	script.Parent.MouseButton1Down:Connect(function()
		for i,v in pairs(_G.Points:GetChildren()) do 
			v:Destroy()
		end
		Attributes.Points = -1
	end)
end
coroutine.wrap(CCUTUL_fake_script)()
local function HPWSC_fake_script() -- Main_2.LocalScript 
	local script = Instance.new('LocalScript', Main_2)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Stroke = Instance.new("UIStroke")
	Stroke.Parent = script.Parent
	Stroke.Color = Color3.fromRGB(255,255,255)
	Stroke.Thickness = 2.8 
	Stroke.Transparency = 0.35
	Stroke.LineJoinMode = Enum.LineJoinMode.Round
	Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	
	local Gradient = Instance.new('UIGradient')
	Gradient.Parent = Stroke
	Gradient.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,255)),
		ColorSequenceKeypoint.new(1,Color3.fromRGB(255,0,4))
	}
	Gradient.Transparency = NumberSequence.new{
		NumberSequenceKeypoint.new(0,0),
		NumberSequenceKeypoint.new(0.25,0.2),
		NumberSequenceKeypoint.new(0.5,1),
		NumberSequenceKeypoint.new(0.75,0.2),
		NumberSequenceKeypoint.new(1,0)
	}
end
coroutine.wrap(HPWSC_fake_script)()
local function XOZNC_fake_script() -- Main.LocalScript 
	local script = Instance.new('LocalScript', Main)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Stroke = Instance.new("UIStroke")
	Stroke.Parent = script.Parent
	Stroke.Color = Color3.fromRGB(255,255,255)
	Stroke.Thickness = 2.8 
	Stroke.Transparency = 0.35
	Stroke.LineJoinMode = Enum.LineJoinMode.Round
	Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	
	local Gradient = Instance.new('UIGradient')
	Gradient.Parent = Stroke
	Gradient.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,255)),
		ColorSequenceKeypoint.new(1,Color3.fromRGB(255,0,4))
	}
	Gradient.Transparency = NumberSequence.new{
		NumberSequenceKeypoint.new(0,0),
		NumberSequenceKeypoint.new(0.25,0.2),
		NumberSequenceKeypoint.new(0.5,1),
		NumberSequenceKeypoint.new(0.75,0.2),
		NumberSequenceKeypoint.new(1,0)
	}
end
coroutine.wrap(XOZNC_fake_script)()
local function LNOYKE_fake_script() -- Create.LocalScript 
	local script = Instance.new('LocalScript', Create)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Attributes = require(script:FindFirstAncestorWhichIsA("ScreenGui"):FindFirstChildOfClass("ModuleScript"))
	
	script.Parent.MouseButton1Down:Connect(function()
		Attributes.CreatePoint()
	end)
	
end
coroutine.wrap(LNOYKE_fake_script)()
local function JGVSIEI_fake_script() -- TrinketButton.LocalScript 
	local script = Instance.new('LocalScript', TrinketButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Attributes = script:FindFirstAncestorWhichIsA("ScreenGui"):FindFirstChildOfClass("ModuleScript")
	local Clicked = false
	
	script.Parent.MouseButton1Down:Connect(function()
		Clicked = not Clicked
		script.Parent.Other.TextColor3 = (Clicked==true) and Color3.fromRGB(4, 255, 0) or Color3.fromRGB(255,0,0)
		script.Parent.Other.Text = (Clicked==false) and "X" or "O"
		Attributes.Attributes.WaitForTrinket.Value = Clicked
	end)
	script.Parent.Other.MouseButton1Down:Connect(function()
		Clicked = not Clicked
		script.Parent.Other.TextColor3 = (Clicked==true) and Color3.fromRGB(4, 255, 0) or Color3.fromRGB(255,0,0)
		script.Parent.Other.Text = (Clicked==false) and "X" or "O"
		Attributes.Attributes.WaitForTrinket.Value = Clicked
	end)
end
coroutine.wrap(JGVSIEI_fake_script)()
local function HUNQV_fake_script() -- WaitButton.LocalScript 
	local script = Instance.new('LocalScript', WaitButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Attributes = script:FindFirstAncestorWhichIsA("ScreenGui"):FindFirstChildOfClass("ModuleScript")
	local Clicked = false
	
	script.Parent.MouseButton1Down:Connect(function()
		Clicked = not Clicked
		script.Parent.Other.TextColor3 = (Clicked==true) and Color3.fromRGB(4, 255, 0) or Color3.fromRGB(255,0,0)
		script.Parent.Other.Text = (Clicked==false) and "X" or "O"
		Attributes.Attributes.Wait.Value = Clicked
	end)
	script.Parent.Other.MouseButton1Down:Connect(function()
		Clicked = not Clicked
		script.Parent.Other.TextColor3 = (Clicked==true) and Color3.fromRGB(4, 255, 0) or Color3.fromRGB(255,0,0)
		script.Parent.Other.Text = (Clicked==false) and "X" or "O"
		Attributes.Attributes.Wait.Value = Clicked
	end)
end
coroutine.wrap(HUNQV_fake_script)()
local function USABQKX_fake_script() -- Extra.LocalScript 
	local script = Instance.new('LocalScript', Extra)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Done = true
	local Up = false 
	function move(Amount)
		Done = false 
		for i=0,30,1 do 
			wait()
			script:FindFirstAncestorWhichIsA("Frame").Parent.Settings.Main.Position = script:FindFirstAncestorWhichIsA("Frame").Parent.Settings.Main.Position+UDim2.new(0,0,(0.630*(1/30))*Amount,0)
		end
		Done = true 
	end
	
	script.Parent.MouseButton1Down:Connect(function()
		if Done == true then
			local a = (Up==true) and 1 or -1
			script.Parent.Text = (Up==true) and "+" or "-"
			Up = not Up
			move(a)
		end
	end)
end
coroutine.wrap(USABQKX_fake_script)()
local function WXWIRL_fake_script() -- SaveButton.LocalScript 
	local script = Instance.new('LocalScript', SaveButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Attributes = require(script:FindFirstAncestorWhichIsA("ScreenGui").Modules)
	
	script.Parent.MouseButton1Down:Connect(function()
		local Name = script.Parent:FindFirstChildOfClass("TextBox")
		Attributes.Save(Name.Text)	
		Name.Text = "Loaded Path: " .. Name.Text
	end)
	
end
coroutine.wrap(WXWIRL_fake_script)()
local function WHXTWQ_fake_script() -- LoadButton.LocalScript 
	local script = Instance.new('LocalScript', LoadButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Attributes = require(script:FindFirstAncestorWhichIsA("ScreenGui"):FindFirstChildOfClass("ModuleScript"))
	
	script.Parent.MouseButton1Down:Connect(function()
		local Name = script.Parent:FindFirstChildOfClass("TextBox")
		Attributes.Load(Name.Text)	
		Name.Text = "Loaded Path: " .. Name.Text
	end)
	
end
coroutine.wrap(WHXTWQ_fake_script)()
local function ZDWWXLK_fake_script() -- Make.Scrambler 
	local script = Instance.new('LocalScript', Make)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.Name = tostring(math.random(1,10000))
	
end
coroutine.wrap(ZDWWXLK_fake_script)()
