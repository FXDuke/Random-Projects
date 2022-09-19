-- Set prefix here!
-- Synapse X Required for save command.
-- How to use:
-- https://youtu.be/sjsPKvfODlM
local prefix = ";";

--[[
    If you have a custom prefix, remember to put it first instead of ;

    Commands:
    
	save							  -- Saves Camera's and Waypoints (auto loads when executed again)
	load							  -- Loads your save (it auto does this lol)

    Movement Commands:
    
    tp player/displayname             -- Teleports you to a player
	rtp player/displayname			  -- Resets you then teleports you to the player (bypasses some anticheats)
	tptocam							  -- Teleports you to your camera
    follow player/displayname         -- Follows a player
    annoy player/displayname          -- Annoys a player
    unfollow                          -- Stops following
    unannoy                           -- Stops annoying

    Visual Commands:

    view player/displayname           -- Spectates a player 
    unview                            -- Stops spectating
    createcam                         -- Creates a camera where your looking
    viewcam                           -- View from the camera
    destroycam						  -- Destroys current camera
    camview player/displayname		  -- Changes your view to the closest non obstructed camera faced at the player
    camwaypoints on/off				  -- Toggles camera waypoints
    next                              -- Cycles through cameras
    last                              -- Cycles back through cameras
    unviewcameras                     -- Stops viewing cameras
    freecam on/off                    -- Toggles freecam
    waypoint                          -- Creates a waypoint
    waypoints on/off                  -- Toggles waypoint visibility
    waypoints destroy                 -- Destroys all waypoints
]]

-- Locals
local Players = game:GetService("Players");
local Player = Players.LocalPlayer;
local UIS = game:GetService("UserInputService");
_G.activeObjects = Instance.new("Folder",workspace)
_G.waypoint_Folder = Instance.new("Folder",_G.activeObjects);
_G.camera_Folder = Instance.new("Folder", _G.activeObjects)

-- Local Specifications
_G.camera_Folder.Name = math.random(1,100)
_G.waypoint_Folder.Name = math.random(1,100);
_G.activeObjects.Name = math.random(1,100)

-- Loop Table
local looped_Commands = {};
local CamerasNotObstructed = {}

-- Tables
_G.active_Objects = {
	Cameras = {
		Name = "Cameras",
		ClassName = "CameraService",
		Active = false,
		Watching = false,
		CameraPosition = 0,
		ActiveCamera = 0,
		ActiveCameras = {},
		CameraPoints = {},
		viewEnded = {
			Connected_Functions = {},
			Connect = function(p1)
				table.insert(_G.active_Objects.Cameras.viewEnded.Connected_Functions,{Func=p1,ID=tostring(p1)})
			end,
			Disconnect = function(p1)
				for _,p2 in pairs(_G.active_Objects.Cameras.viewEnded.Connected_Functions) do 
					if p2.ID == tostring(p1) then 
						table.remove(_G.active_Objects.Cameras.viewEnded.Connected_Functions,_)
					end
				end
			end,
		},
		viewBegan = {
			Connected_Functions = {},
			Connect = function(p1)
				table.insert(_G.active_Objects.Cameras.viewBegan.Connected_Functions,{Func=p1,ID=tostring(p1)})
			end,
			Disconnect = function(p1)
				for _,p2 in pairs(_G.active_Objects.Cameras.viewBegan.Connected_Functions) do 
					if p2.ID == tostring(p1) then 
						table.remove(_G.active_Objects.Cameras.viewBegan.Connected_Functions,_)
					end
				end
			end,
		},
		PositionChanged = {
			Connected_Functions = {},
			Connect = function(p1)
				table.insert(_G.active_Objects.Cameras.PositionChanged.Connected_Functions,{Func=p1,ID=tostring(p1)})
			end,
			Disconnect = function(p1)
				for _,p2 in pairs(_G.active_Objects.Cameras.PositionChanged.Connected_Functions) do 
					if p2.ID == tostring(p1) then 
						table.remove(_G.active_Objects.Cameras.PositionChanged.Connected_Functions,_)
					end
				end
			end,
		},
		Created = {
			Connected_Functions = {},
			Connect = function(p1)
				table.insert(_G.active_Objects.Cameras.Created.Connected_Functions,{Func=p1,ID=tostring(p1)})
			end,
			Disconnect = function(p1)
				for _,p2 in pairs(_G.active_Objects.Cameras.Created.Connected_Functions) do 
					if p2.ID == tostring(p1) then 
						table.remove(_G.active_Objects.Cameras.Created.Connected_Functions,_)
					end
				end
			end,
		},
	},
	Waypoints = {
		Name = "Waypoints",
		ClassName = "WaypointService",
		ActiveWaypoint = 0,
		ActiveWaypoints = {},
		Active = false,
		Created = {
			Connected_Functions = {},
			Connect = function(p1)
				table.insert(_G.active_Objects.Waypoints.Created.Connected_Functions,{Func=p1,ID=tostring(p1)})
			end,
			Disconnect = function(p1)
				for _,p2 in pairs(_G.active_Objects.Waypoints.Created.Connected_Functions) do 
					if p2.ID == tostring(p1) then 
						table.remove(_G.active_Objects.Waypoints.Created.Connected_Functions,_)
					end
				end
			end,
		},
		Destroyed = {
			Connected_Functions = {},
			Connect = function(p1)
				table.insert(_G.active_Objects.Waypoints.Destroyed.Connected_Functions,{Func=p1,ID=tostring(p1)})
			end,
			Disconnect = function(p1)
				for _,p2 in pairs(_G.active_Objects.Waypoints.Destroyed.Connected_Functions) do 
					if p2.ID == tostring(p1) then 
						table.remove(_G.active_Objects.Waypoints.Destroyed.Connected_Functions,_)
					end
				end
			end,
		}
	},
	Freecam = {
		Name = "Freecam",
		ClassName = "FreecamService",
		Active = false,	
		Activated = {
			Connected_Functions = {},
			Connect = function(p1)
				table.insert(_G.active_Objects.Freecam.Activated.Connected_Functions,{Func=p1,ID=tostring(p1)})
			end,
			Disconnect = function(p1)
				for _,p2 in pairs(_G.active_Objects.Freecam.Activated.Connected_Functions) do 
					if p2.ID == tostring(p1) then 
						table.remove(_G.active_Objects.Freecam.Activated.Connected_Functions,_)
					end
				end
			end,
		},
		Disabled = {
			Connected_Functions = {},
			Connect = function(p1)
				table.insert(_G.active_Objects.Freecam.Disabled.Connected_Functions,{Func=p1,ID=tostring(p1)})
			end,
			Disconnect = function(p1)
				for _,p2 in pairs(_G.active_Objects.Freecam.Disabled.Connected_Functions) do 
					if p2.ID == tostring(p1) then 
						table.remove(_G.active_Objects.Freecam.Disabled.Connected_Functions,_)
					end
				end
			end,
		}
	},
	Viewing = Player.Character:FindFirstChildOfClass("Humanoid"),
};
_G.active_Objects.GetService = function(p1)
	local a,b = pcall(function()
		for _,v in pairs(_G.active_Objects) do
			if type(v) == "table" then
				if v.ClassName == p1 then
					return v;
				end
			end
		end
	end)
	if not a then error(b) end 
end
local AO = _G.active_Objects

-- Guis
-- Camera Gui
-- Instances:

local CameraViewGui = Instance.new("ScreenGui")
local Holder = Instance.new("Frame")
local RightButton = Instance.new("TextButton")
local LeftButton = Instance.new("TextButton")
local Seperator = Instance.new("Frame")
local CameraText = Instance.new("TextLabel")
local CameraName = Instance.new("TextLabel")
local UIStrokeHolder = Instance.new("Frame")
local UIStroke = Instance.new("UIStroke")

--Properties:

CameraViewGui.Name = "CameraViewGui"
CameraViewGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CameraViewGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Holder.Name = "Holder"
Holder.Parent = CameraViewGui
Holder.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Holder.BorderSizePixel = 0
Holder.Visible = false 
Holder.Position = UDim2.new(0.407319009, 0, 0.0261682235, 0)
Holder.Size = UDim2.new(0, 286, 0, 100)

RightButton.Name = "RightButton"
RightButton.Parent = Holder
RightButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
RightButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
RightButton.Position = UDim2.new(0.99992907, 0, 0, 0)
RightButton.Size = UDim2.new(0, 167, 0, 100)
RightButton.AutoButtonColor = false
RightButton.Font = Enum.Font.SourceSans
RightButton.Text = ">"
RightButton.TextColor3 = Color3.fromRGB(159, 159, 159)
RightButton.TextScaled = true
RightButton.TextSize = 100.000
RightButton.TextStrokeTransparency = 0.730
RightButton.TextTransparency = 0.440
RightButton.TextWrapped = true

LeftButton.Name = "LeftButton"
LeftButton.Parent = Holder
LeftButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
LeftButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
LeftButton.Position = UDim2.new(-0.585042536, 0, 0, 0)
LeftButton.Size = UDim2.new(0, 167, 0, 100)
LeftButton.AutoButtonColor = false
LeftButton.Font = Enum.Font.SourceSans
LeftButton.Text = "<"
LeftButton.TextColor3 = Color3.fromRGB(159, 159, 159)
LeftButton.TextScaled = true
LeftButton.TextSize = 100.000
LeftButton.TextStrokeTransparency = 0.730
LeftButton.TextTransparency = 0.440
LeftButton.TextWrapped = true

Seperator.Name = "Seperator"
Seperator.Parent = Holder
Seperator.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Seperator.BackgroundTransparency = 0.600
Seperator.BorderSizePixel = 0
Seperator.Position = UDim2.new(0.0209790207, 0, 0.300000012, 0)
Seperator.Size = UDim2.new(0, 271, 0, 3)

CameraText.Name = "CameraText"
CameraText.Parent = Holder
CameraText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CameraText.BackgroundTransparency = 1.000
CameraText.Position = UDim2.new(-0.157342672, 0, 0, 0)
CameraText.Size = UDim2.new(0, 200, 0, 33)
CameraText.Font = Enum.Font.SourceSans
CameraText.Text = "Currently Viewing:"
CameraText.TextColor3 = Color3.fromRGB(208, 208, 208)
CameraText.TextSize = 14.000

CameraName.Name = "CameraName"
CameraName.Parent = Holder
CameraName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CameraName.BackgroundTransparency = 1.000
CameraName.Position = UDim2.new(0.433566391, 0, 0, 0)
CameraName.Size = UDim2.new(0, 200, 0, 33)
CameraName.Font = Enum.Font.SourceSans
CameraName.Text = "PlaceHolder"
CameraName.TextColor3 = Color3.fromRGB(208, 208, 208)
CameraName.TextSize = 14.000
CameraName.TextXAlignment = Enum.TextXAlignment.Left

UIStrokeHolder.Name = "UIStrokeHolder"
UIStrokeHolder.Parent = Holder
UIStrokeHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UIStrokeHolder.BackgroundTransparency = 1.000
UIStrokeHolder.Position = UDim2.new(-0.585042477, 0, 0, 0)
UIStrokeHolder.Size = UDim2.new(0, 620, 0, 100)

UIStroke.Name = "UIStroke"
UIStroke.LineJoinMode = Enum.LineJoinMode.Round
UIStroke.Thickness = 2
UIStroke.Parent = UIStrokeHolder

-- Active Listeners
local CS = AO.Cameras -- Camera Service
CS.viewBegan.Connect(function(camera,camera_name)
	Holder.Visible = true
	CameraName.Text = camera_name
end)
CS.viewEnded.Connect(function()
	Holder.Visible = false
end)
CS.PositionChanged.Connect(function(camera,camera_name)
	CameraName.Text = camera_name
end)

-- Useless Locals
local view_Name = "";  -- For console command log
local fcs = 50; -- Freecam Speed
local tb = false; -- Typing began
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Already_Loaded = false;
local RTP_TO = nil

-- Lower Functions
local function stc(p1,p2) if string.sub(p1,1,#p2) == string.lower(p2) then return true; end; end; -- String to Command
local function scs(p1) local p2 = string.split(p1," "); return true, p2[1] .. " ", p2[2]; end; -- String Seperate

-- Main Functions
local function getPlayer(data)
	local p1 = data:lower()
	for _,p2 in pairs(game:GetService("Players"):GetChildren()) do 
		--if p2.Name ~= Player.Name then 
		if string.sub(p2.Name:lower(), 1,#data) == p1 or string.sub(p2.DisplayName:lower(), 1,#data) == p1 then 
			return true, p2
		end
		-- end
	end
end

local dis2 = function(x1,x2,y1,y2,z1,z2)
	return math.sqrt(((x2-x1)*(x2-x1))+((y2-y1)*(y2-y1))+((z2-z1)*(z2-z1)))
end

local function sendNotif(data)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "FXAdmin 2.5",
		Text = data,
		Duration = 60,
		Button1 = "Ok",
	})
end

local function next_cam()
	if _G.active_Objects.Freecam.Active == true then
		for _,p1 in pairs(looped_Commands) do 
			if p1.Type == "Freecam" then 
				p1.Target:Destroy();
				table.remove(looped_Commands,_);
			end;
		end;
		workspace.CurrentCamera.CameraSubject = Player.Character:FindFirstChildOfClass("Humanoid")
		Player.Character.HumanoidRootPart.Anchored = false;
		_G.active_Objects.Freecam.Active = false
	end
	if _G.active_Objects.Cameras.CameraPosition + 1 > _G.active_Objects.Cameras.ActiveCamera then 
		_G.active_Objects.Cameras.CameraPosition = 1
	else 
		_G.active_Objects.Cameras.CameraPosition = _G.active_Objects.Cameras.CameraPosition + 1 
	end 
	for _,p1 in pairs(_G.active_Objects.Cameras.ActiveCameras) do 
		if _ == _G.active_Objects.Cameras.CameraPosition then
			workspace.CurrentCamera.CameraSubject = p1.Target
			_G.active_Objects.Viewing = p1.Target
			if _G.active_Objects.Cameras.Active == false then 
				for _,v in pairs(_G.active_Objects.Cameras.viewBegan.Connected_Functions) do
					v.Func(p1.Target,p1.Extra)
				end
			end 
			for _,v in pairs(_G.active_Objects.Cameras.PositionChanged.Connected_Functions) do
				v.Func(p1.Target,p1.Extra)
			end
			_G.active_Objects.Cameras.Active = true 
		end
	end
end

local function last_cam()
	if _G.active_Objects.Freecam.Active == true then
		for _,p1 in pairs(looped_Commands) do 
			if p1.Type == "Freecam" then 
				p1.Target:Destroy();
				table.remove(looped_Commands,_);
			end;
		end;
		Player.Character.HumanoidRootPart.Anchored = false;
		_G.active_Objects.Freecam.Active = false
	end
	if _G.active_Objects.Cameras.CameraPosition - 1 == 0 then 
		_G.active_Objects.Cameras.CameraPosition = _G.active_Objects.Cameras.ActiveCamera
	else 
		_G.active_Objects.Cameras.CameraPosition = _G.active_Objects.Cameras.CameraPosition - 1 
	end 
	for _,p1 in pairs(_G.active_Objects.Cameras.ActiveCameras) do 
		if _ == _G.active_Objects.Cameras.CameraPosition then
			workspace.CurrentCamera.CameraSubject = p1.Target
			_G.active_Objects.Viewing = p1.Target
			if _G.active_Objects.Cameras.Active == false then 
				for _,v in pairs(_G.active_Objects.Cameras.viewBegan.Connected_Functions) do
					v.Func(p1.Target,p1.Extra)
				end
			end 
			for _,v in pairs(_G.active_Objects.Cameras.PositionChanged.Connected_Functions) do
				v.Func(p1.Target,p1.Extra)
			end
			_G.active_Objects.Cameras.Active = true 
			return true, "Viewing camera " .. _
		end
	end
end

RightButton.MouseButton1Down:Connect(function()
	next_cam()
end)
LeftButton.MouseButton1Down:Connect(function()
	last_cam()
end)

local function createWaypoint(text)
	local p1 = Instance.new("Part",_G.waypoint_Folder);
	local p2 = Instance.new("BillboardGui", p1);
	local p3 = Instance.new("Frame",p2);
	local p4 = Instance.new("TextLabel", p3)
	p1.Name = math.random(1,100);
	p2.Name = math.random(1,100);
	p3.Name = math.random(1,100);
	p4.Name = math.random(1,100);
	p1.Anchored = true;
	p1.Transparency = 1;
	p1.CanCollide = false;
	p2.AlwaysOnTop = true;
	p2.Size = UDim2.new(0,25,0,25);
	p3.BackgroundColor3 = Color3.fromRGB(math.random(1,255),math.random(1,255),math.random(1,255));
	p3.Size = UDim2.new(0,25,0,25);
	p3.Transparency = 0.5;
	p3.BorderSizePixel = 0;
	p3.Visible = true;
	p4.Position = UDim2.new(0,7.5,0,-9.9)
	p4.TextColor3 = p3.BackgroundColor3
	p4.Size = UDim2.new(0,10,0,10)
	p4.TextXAlignment = Enum.TextXAlignment.Center
	p4.BackgroundTransparency = 1 
	local p69 = false
	if text ~= nil then 
		p69 = true
		p4.Text = text
	else
		p4.Text = ""
	end 
	if _G.active_Objects.Freecam.Active == true then
		p1.CFrame = _G.active_Objects:FindFirstChild("Freecam").CFrame
	else
		p1.CFrame = Player.Character.HumanoidRootPart.CFrame;
	end
	table.insert(_G.active_Objects.Waypoints.ActiveWaypoints, {Type="Waypoint",Subject=p1,Extra=p4,Check=p69})
	for _,v in pairs(_G.active_Objects.Waypoints.Created.Connected_Functions) do
		v.Func(p1,p4.Text)
	end
	_G.active_Objects.Waypoints.ActiveWaypoint = _G.active_Objects.Waypoints.ActiveWaypoint + 1 
end;

local function createCamera(data)
	local p1 = Instance.new('Part',_G.camera_Folder)
	p1.Name = math.random(1,100)
	p1.CanCollide = false 
	p1.Anchored = true 
	p1.Transparency = 1
	p1.CFrame = workspace.CurrentCamera.CFrame + workspace.CurrentCamera.CFrame.lookVector * Vector3.new(1,1,1)
	local p5 = Instance.new("Part",_G.camera_Folder);
	local p2 = Instance.new("BillboardGui", p5);
	local p3 = Instance.new("Frame",p2);
	local p4 = Instance.new("TextLabel", p3)
	p5.Name = math.random(1,100);
	p2.Name = math.random(1,100);
	p3.Name = math.random(1,100);
	p4.Name = math.random(1,100);
	p5.Anchored = true;
	p5.Transparency = 1;
	p5.CanCollide = false;
	p2.AlwaysOnTop = true;
	p2.Size = UDim2.new(0,25,0,25);
	p3.BackgroundColor3 = Color3.fromRGB(math.random(1,255),math.random(1,255),math.random(1,255));
	p3.Size = UDim2.new(0,25,0,25);
	p3.Transparency = 0.5;
	p3.BorderSizePixel = 0;
	p3.Visible = true;
	p4.Position = UDim2.new(0,7.5,0,-9.9)
	p4.TextColor3 = p3.BackgroundColor3
	p4.Size = UDim2.new(0,10,0,10)
	p4.TextXAlignment = Enum.TextXAlignment.Center
	p4.BackgroundTransparency = 1 
	p5.CFrame = p1.CFrame
	table.insert(_G.active_Objects.Cameras.CameraPoints,{Type="Waypoint",Target=p5,Extra=p4})
	_G.active_Objects.Cameras.ActiveCamera = _G.active_Objects.Cameras.ActiveCamera + 1 
	if data == nil then 
		p4.Text = "Camera" .. _G.active_Objects.Cameras.ActiveCamera
	else
		p4.Text = data
	end
	table.insert(_G.active_Objects.Cameras.ActiveCameras, {Type="Camera",Target=p1,Extra=p4.Text})
	for _,v in pairs(_G.active_Objects.Waypoints.Created.Connected_Functions) do
		v.Func(p5,p4.Text)
	end
	for _,v in pairs(_G.active_Objects.Cameras.Created.Connected_Functions) do
		v.Func(p1,p4.Text)
	end
	return true
end

-- Save/Load
pcall(function()
	if isfolder("FXAdmin") then
		if isfile("FXAdmin/" .. GameName .. ".lua") then
			data = loadfile("FXAdmin/" .. GameName .. ".lua")
			local succes,failure = pcall(function()
				data()

			end)
			if not succes then print(failure) else Already_Loaded = true end 
		end 
	else
		makefolder("FXAdmin")
	end
end)


local function sti(data,parent) return " Instance.new('"..data.ClassName.."',"..parent..")\n" end -- Instance to string

local function save()
	local a,b = pcall(function()
		local data = "\n-- FXAdmin save for "..GameName .. ".\n\nif game.GameId == " .. game.GameId .. " then\n"

		for _,p1 in pairs(_G.active_Objects.Waypoints.ActiveWaypoints) do
			data = data .. "    local w".. _ .." = Instance.new('" .. p1.Subject.ClassName .. "',_G.waypoint_Folder)\n"
			data = data .. "    table.insert(_G.active_Objects.Waypoints.ActiveWaypoints, {Type='Waypoint',Subject= w" .. _ .. "})\n"
			data = data .. "    w" .. _ .. ".CFrame = CFrame.new(" .. tostring(p1.Subject.CFrame) .. ")\n"
			data = data .. "    w" .. _ .. ".Transparency = 1\n"
			data = data .. "    w" .. _ .. ".Anchored = true\n"
			data = data .. "    w" .. _ .. ".CanCollide = false\n"
			data = data .. "	w" .. _ .. ".Name = math.random(1,100)\n"
			for x,z in pairs(p1.Subject:GetDescendants()) do
				local p2 
				if x == 1 then 
					p2 = ""
				else
					p2 = "_" .. 1*(x-1)
				end
				data = data .. "    local w".. _ .."_" .. x .. " = Instance.new('" .. z.ClassName .. "',w".. _ .. p2 ..")\n"
				data = data .. "	w" .. _ .. "_" .. x .. ".Name = math.random(1,100)\n"
				if z:IsA("Frame") then 
					data = data .. "	w" .. _ .. "_" .. x .. ".BorderSizePixel = 0\n"
					data = data .. "	w" .. _ .. "_" .. x .. ".Transparency = 0.5\n"
					data = data .. "	w" .. _ .. "_" .. x .. ".Size = UDim2.new(0,25,0,25)\n"
					data = data .. "	w" .. _ .. "_" .. x .. ".BackgroundColor3 = Color3.fromRGB(0,0,0)\n"
				elseif z:IsA("TextLabel") then 
					data = data .. "	w" .. _ .. "_" .. x .. ".Size = UDim2.new(0,10,0,10)\n"
					data = data .. "	w" .. _ .. "_" .. x .. ".Position = UDim2.new(0,7.5,0,-9.9)\n" 
					data = data .. "	w" .. _ .. "_" .. x .. ".TextXAlignment = Enum.TextXAlignment.Center\n"
					data = data .. "	w" .. _ .. "_" .. x .. ".BackgroundTransparency = 1\n"
					data = data .. "	w" .. _ .. "_" .. x .. ".TextColor3 = Color3.fromRGB(0,0,0)\n"
					data = data .. "	w" .. _ .. "_" .. x .. ".Text = '" .. z.Text .. "'\n"
				elseif z:IsA("BillboardGui") then 
					data = data .. "	w" .. _ .. "_" .. x .. ".AlwaysOnTop = true\n"
					data = data .. "	w" .. _ .. "_" .. x .. ".Size = UDim2.new(0,25,0,25)\n"
				end
			end
		end
		for _,p1 in pairs(_G.active_Objects.Cameras.ActiveCameras) do 
			data = data .. "    local c".. _ .." = Instance.new('" .. p1.Target.ClassName .. "',_G.camera_Folder)\n"
			data = data .. "    table.insert(_G.active_Objects.Cameras.ActiveCameras, {Type='Camera',Target=c" .. _ .. ",Extra='".. p1.Extra .."'})\n" 
			data = data .. "    c" .. _ .. ".CFrame = CFrame.new(" .. tostring(p1.Target.CFrame) .. ")\n"
			data = data .. "    c" .. _ .. ".Transparency = 1\n"
			data = data .. "    c" .. _ .. ".Anchored = true\n"
			data = data .. "    c" .. _ .. ".CanCollide = false\n"
			data = data .. "	c" .. _ .. ".Name = math.random(1,100)\n"
		end
		for _,p1 in pairs(_G.active_Objects.Cameras.CameraPoints) do 
			local p2 = false
			for a,x in pairs(p1.Target:GetDescendants()) do
				if x:IsA("Frame") then 
					p2 = true 
				end
			end 
			if p2 == true then 
				data = data .. "    local cw".. _ .." = Instance.new('" .. p1.Target.ClassName .. "',_G.camera_Folder)\n"
				data = data .. "    table.insert(_G.active_Objects.Waypoints.ActiveWaypoints, {Type='Waypoint',Subject= cw" .. _ .. "})\n"
				data = data .. "    cw" .. _ .. ".CFrame = CFrame.new(" .. tostring(p1.Target.CFrame) .. ")\n"
				data = data .. "    cw" .. _ .. ".Transparency = 1\n"
				data = data .. "    cw" .. _ .. ".Anchored = true\n"
				data = data .. "    cw" .. _ .. ".CanCollide = false\n"
				data = data .. "	cw" .. _ .. ".Name = math.random(1,100)\n"
				for x,z in pairs(p1.Target:GetDescendants()) do
					local p2 
					if x == 1 then 
						p2 = ""
					else
						p2 = "_" .. 1*(x-1)
					end
					data = data .. "    local cw".. _ .."_" .. x .. " = Instance.new('" .. z.className .. "',cw".. _ .. p2 ..")\n"
					data = data .. "	cw" .. _ .. "_" .. x .. ".Name = math.random(1,100)\n"
					if z:IsA("Frame") then 
						data = data .. "	cw" .. _ .. "_" .. x .. ".BorderSizePixel = 0\n"
						data = data .. "	cw" .. _ .. "_" .. x .. ".Transparency = 0.5\n"
						data = data .. "	cw" .. _ .. "_" .. x .. ".Size = UDim2.new(0,25,0,25)\n"
						data = data .. "	cw" .. _ .. "_" .. x .. ".BackgroundColor3 = Color3.fromRGB(0,0,0)\n"
					elseif z:IsA("TextLabel") then 
						data = data .. "	cw" .. _ .. "_" .. x .. ".Size = UDim2.new(0,10,0,10)\n"
						data = data .. "	cw" .. _ .. "_" .. x .. ".Position = UDim2.new(0,7.5,0,-9.9)\n" 
						data = data .. "	cw" .. _ .. "_" .. x .. ".TextXAlignment = Enum.TextXAlignment.Center\n"
						data = data .. "	cw" .. _ .. "_" .. x .. ".BackgroundTransparency = 1\n"
						data = data .. "	cw" .. _ .. "_" .. x .. ".TextColor3 = Color3.fromRGB(0,0,0)\n"
						data = data .. "	cw" .. _ .. "_" .. x .. ".Text = '" .. z.Text .. "'\n"
					elseif z:IsA("BillboardGui") then 
						data = data .. "	cw" .. _ .. "_" .. x .. ".Size = UDim2.new(0,25,0,25)\n"
						data = data .. "	cw" .. _ .. "_" .. x .. ".AlwaysOnTop = true\n"
					end
				end
			end
		end 
		data = data .. "	_G.active_Objects.Cameras.ActiveCamera = _G.active_Objects.Cameras.ActiveCamera + " .. #_G.active_Objects.Cameras.ActiveCameras .. "\n"
		data = data .. "end"
		print (data)
		print('Completed Save')
		writefile("FXAdmin/" .. GameName .. ".lua", data)
	end)
	if not a then print(b) end 
end

-- Dictionarys
local Commands = {
	[prefix .. 'tp '] = function(data)
		local p1,p2 = getPlayer(data)
		if p1 == true then
			Player.Character.HumanoidRootPart.CFrame = p2.Character.HumanoidRootPart.CFrame;
			return true, "Teleported to " .. p2.Name;
		end;
	end,
	[prefix .. 'follow '] = function(data)
		local p1,p2 = getPlayer(data)
		if p1 == true then
			for _,p3 in pairs(looped_Commands) do
				if p3.Type == "Follow" then
					table.remove(looped_Commands,_);
				end;
			end;
			table.insert(looped_Commands, {Type="Follow",Target=p2})
			Player.Character.HumanoidRootPart.CFrame = p2.Character.HumanoidRootPart.CFrame + (p2.Character.HumanoidRootPart.CFrame.lookVector * Vector3.new(-2.5,0,-2.5));
			return true, "Followed " .. p2.Name;
		end
	end,
	[prefix .. 'unfollow '] = function(data)
		local p1 = false 
		for _,p2 in pairs(looped_Commands) do
			if p2.Type == "Follow" then
				table.remove(looped_Commands, _);
				p1 = p2.Target.Name
			end;
		end;
		if p1 ~= false then 
			return true, "Unfollowed " .. p1;
		else
			return true, "Not following anyone"
		end
	end,
	[prefix .. 'view '] = function(data)
		local p1,p2 = getPlayer(data)
		if p1 == true then
			workspace.CurrentCamera.CameraSubject = p2.Character:FindFirstChildOfClass("Humanoid") or p2.Character.HumanoidRootPart or p2.Character:FindFirstChildOfClass("BasePart");
			_G.active_Objects.Viewing = p2.Character:FindFirstChildOfClass("Humanoid")
			view_Name = p2.Name
			return true, "Viewed " .. p2.Name;
		end;
	end,
	[prefix .. 'unview '] = function(data)
		AO.Cameras.Watching = false
		Player.CameraMode = Enum.CameraMode.Classic
		UIS.MouseIconEnabled = true
		pcall(function()
			for _,v in pairs(CamerasNotObstructed) do 
				table.remove(CamerasNotObstructed,_)
			end
			for _,v in pairs(looped_Commands) do 
				if v.Type == "CameraLookAt" then 
					table.remove(looped_Commands,_)
					UIS.MouseIconEnabled = true
				end
			end
		end)
		_G.active_Objects.Viewing = Player.Character:FindFirstChildOfClass("Humanoid")
		if _G.active_Objects.Freecam.Active == true then
			for _,p1 in pairs(looped_Commands) do 
				if p1.Type == "Freecam" then 
					p1.Target:Destroy();
					table.remove(looped_Commands,_);
				end;
			end;
			for _,v in pairs(_G.activ_eObjects.Freecam.Disabled.Connected_Functions) do
				v.Func()
			end
			workspace.CurrentCamera.CameraSubject = Player.Character:FindFirstChildOfClass("Humanoid")
			Player.Character.HumanoidRootPart.Anchored = false;
			_G.active_Objects.Freecam.Active = false
		end
		if _G.active_Objects.Cameras.Active == true then
			workspace.CurrentCamera.CameraSubject = Player.Character.Humanoid
			if _G.active_Objects.Cameras.Active == true then 
				for _,v in pairs(_G.active_Objects.Cameras.viewEnded.Connected_Functions) do
					v.Func()
				end
			end 
			_G.active_Objects.Cameras.Active = false
		end
		workspace.CurrentCamera.CameraSubject = Player.Character:FindFirstChildOfClass("Humanoid")

		return true, "Unviewed " .. view_Name;
	end,
	[prefix .. 'annoy '] = function(data)
		local p1,p2 = getPlayer(data)
		if p1 == true then
			for _,p3 in pairs(looped_Commands) do
				if p3.Type == "Annoy" then 
					table.remove(looped_Commands,_)
				end
			end
			table.insert(looped_Commands, {Type="Annoy",Target=p2});
			Player.Character.HumanoidRootPart.CFrame = p2.Character.HumanoidRootPart.CFrame;
			return true, "Annoyed " .. p2.Name;
		end;
	end,
	[prefix .. 'unannoy '] = function(data)
		local p2 = false 
		for _,p1 in pairs(looped_Commands) do 
			if p1.Type == "Annoy" then 
				table.remove(looped_Commands,_);
				p2 = p1.Target.Name
			end;
		end;
		if p2 ~= false then 
			return true, "Unannoyed " .. p2;
		else 
			return true, "Not annoying anyone"
		end
	end,
	[prefix.. 'waypoint '] = function(data)
		createWaypoint(data)
		return true, "Created waypoint";
	end,
	[prefix .. 'waypoints '] = function(data)
		if data:lower() == "on" then 
			for _,p1 in pairs(_G.waypoint_Folder:GetDescendants()) do
				if p1:IsA("Frame") then 
					p1.Visible = true;
				end;
			end;
			return true, "Toggled waypoints on";
		elseif data:lower() == "off" then
			for _,p1 in pairs(_G.waypoint_Folder:GetDescendants()) do
				if p1:IsA("Frame") then 
					p1.Visible = false;
				end;
			end;
			return true, "Toggled waypoints off";
		elseif data:lower() == "destroy" then
			_G.active_Objects.Waypoints.ActiveWaypoints = 0 
			for _,p1 in pairs(_G.waypoint_Folder:GetChildren()) do
				p1:Destroy();
			end;
			for _,p1 in pairs(_G.active_Objects.Waypoints.ActiveWaypoints) do 
				table.remove(_G.active_Objects.Waypoints.ActiveWaypoints,_)
			end 
			for _,v in pairs(_G.active_Objects.Waypoints.Destroyed.Connected_Functions) do
				v.Func()
			end
			return true, "Destroyed waypoints";
		end;
	end,
	[prefix .. 'freecam '] = function(data)
		if data:lower() == "on" then
			_G.active_Objects.Freecam.Active = true
			if _G.active_Objects.Cameras.Active == true then
				workspace.CurrentCamera.CameraSubject = Player.Character.Humanoid
				if _G.active_Objects.Cameras.Active == true then 
					for _,v in pairs(_G.active_Objects.Cameras.viewEnded.Connected_Functions) do
						v.Func()
					end
				end 
				_G.active_Objects.Cameras.Active = false
			end
			local p1 = Instance.new("Part",workspace);
			p1.Name = "Freecam";
			p1.CanCollide = false; 
			p1.Transparency = 1;
			p1.Anchored = true;
			p1.Parent = _G.activeObjects
			p1.CFrame = workspace.CurrentCamera.CFrame;
			workspace.CurrentCamera.CameraSubject = p1;
			_G.active_Objects.Viewing = p1;
			table.insert(looped_Commands, {Type="Freecam", Target=p1});
			Player.Character.HumanoidRootPart.Anchored = true;
			for _,v in pairs(_G.active_Objects.Freecam.Activated.Connected_Functions) do
				v.Func(p1)
			end
			return true, "Freecam enabled";
		elseif data:lower() == "off" then
			for _,p1 in pairs(looped_Commands) do 
				if p1.Type == "Freecam" then 
					p1.Target:Destroy();
					table.remove(looped_Commands,_);
				end;
			end;
			for _,v in pairs(_G.active_Objects.Freecam.Disabled.Connected_Functions) do
				v.Func()
			end
			workspace.CurrentCamera.CameraSubject = Player.Character:FindFirstChildOfClass("Humanoid")
			_G.active_Objects.Viewing = Player.Character:FindFirstChildOfClass("Humanoid")
			Player.Character.HumanoidRootPart.Anchored = false;
			_G.active_Objects.Freecam.Active = false
			return true, "Freecam disabled";
		end;
	end,
	[prefix .. 'createcam '] = function(data)
		local p1 = createCamera(data)
		return true, "Camera created"
	end,
	[prefix .. 'viewcam '] = function()
		if _G.active_Objects.Freecam.Active == true then
			for _,p1 in pairs(looped_Commands) do 
				if p1.Type == "Freecam" then 
					p1.Target:Destroy();
					table.remove(looped_Commands,_);
				end;
			end;
			for _,v in pairs(_G.activ_eObjects.Freecam.Disabled.Connected_Functions) do
				v.Func()
			end
			workspace.CurrentCamera.CameraSubject = Player.Character:FindFirstChildOfClass("Humanoid")
			Player.Character.HumanoidRootPart.Anchored = false;
			_G.active_Objects.Freecam.Active = false
		end
		for _,p1 in pairs(_G.active_Objects.Cameras.ActiveCameras) do 
			if _ == _G.active_Objects.Cameras.CameraPosition  then
				workspace.CurrentCamera.CameraSubject = p1.Target
				if _G.active_Objects.Cameras.Active == false then 
					for _,v in pairs(_G.active_Objects.Cameras.viewBegan.Connected_Functions) do
						v.Func(p1.Target,p1.Extra)
					end
				end 
				_G.active_Objects.Cameras.Active = true 
				_G.active_Objects.Viewing = p1.Target
				return true, "Viewing camera " .. _
			elseif _G.active_Objects.Cameras.CameraPosition == 0 then 
				workspace.CurrentCamera.CameraSubject = p1.Target
				_G.active_Objects.Viewing = p1.Target
				_G.active_Objects.Cameras.CameraPosition = _G.active_Objects.Cameras.CameraPosition + 1 
				for _,v in pairs(_G.active_Objects.Cameras.PositionChanged.Connected_Functions) do
					v.Func(p1.Target,p1.Extra)
				end
				_G.active_Objects.Cameras.Active = true 
				return true, "Viewing camera " .. _
			end
		end 
	end,
	[prefix .. 'next '] = function()
		next_cam()
		return true, "Viewing next Camera"
	end,
	[prefix .. 'last '] = function()
		last_cam()
		return true, "Viewing last Camera"
	end,
	[prefix .. 'unviewcameras '] = function()
		AO.Cameras.Watching = false 
		for _,v in pairs(CamerasNotObstructed) do 
			table.remove(CamerasNotObstructed,_)
		end
		for _,v in pairs(looped_Commands) do 
			if v.Type == "CameraLookAt" then 
				table.remove(looped_Commands,_)
				UIS.MouseIconEnabled = true
			end
		end

		Player.CameraMode = Enum.CameraMode.Classic
		UIS.MouseIconEnabled = false
		workspace.CurrentCamera.CameraSubject = Player.Character.Humanoid
		_G.active_Objects.Viewing = Player.Character.Humanoid
		if _G.active_Objects.Cameras.Active == true then 
			for _,v in pairs(_G.active_Objects.Cameras.viewEnded.Connected_Functions) do
				v.Func()
			end
		end 
		_G.active_Objects.Cameras.Active = false

		return true, "Unviewd camera " .. _G.active_Objects.Cameras.CameraPosition
	end,
	[prefix .. "tptocam "] = function()
		if _G.active_Objects.Cameras.Active == true then 
			for _,p1 in pairs(_G.active_Objects.Cameras.ActiveCameras) do 
				if _ == _G.active_Objects.Cameras.CameraPosition then
					Player.Character.HumanoidRootPart.CFrame = p1.Target.CFrame
					return true, 'Teleported to camera ' .. _
				end
			end 
		elseif _G.active_Objects.Freecam.Active == true then
			Player.Character.HumanoidRootPart.CFrame = _G.activeObjects:FindFirstChild("Freecam").CFrame
			return true, "Teleported to freecam camera"
		end
	end,
	[prefix .. "destroycam "] = function() 
		for _,p1 in pairs(_G.active_Objects.Cameras.ActiveCameras) do 
			if _ == _G.active_Objects.Cameras.CameraPosition then
				p1.Target:Destroy()
				for a,p2 in pairs(_G.active_Objects.Cameras.CameraPoints) do 
					if a == _G.active_Objects.Cameras.CameraPosition then
						p2.Target:Destroy()
						table.remove(_G.active_Objects.Cameras.CameraPoints,a)
					end
				end 
				table.remove(_G.active_Objects.Cameras.ActiveCameras,_)
				_G.active_Objects.Cameras.ActiveCamera = _G.active_Objects.Cameras.ActiveCamera - 1 
				if _G.active_Objects.Cameras.CameraPosition + 1 > _G.active_Objects.Cameras.ActiveCamera then 
					_G.active_Objects.Cameras.CameraPosition = 1
				else 
					_G.active_Objects.Cameras.CameraPosition = _G.active_Objects.Cameras.CameraPosition + 1 
				end 
				for _,p2 in pairs(_G.active_Objects.Cameras.ActiveCameras) do 
					if _ == _G.active_Objects.Cameras.CameraPosition then
						workspace.CurrentCamera.CameraSubject = p2.Target
						_G.active_Objects.Viewing = p2.Target
						_G.active_Objects.Cameras.Active = true 
					end
				end

				for _,p2 in pairs(_G.active_Objects.Cameras.CameraPoints) do 
					if p2.Check == false then 
						p2.Extra.Text = "Camera" .. _
					end
				end 
				return true, 'Destroyed camera ' .. _
			end
		end 	
	end,
	[prefix .. 'camwaypoints '] = function(data)
		if data:lower() == "on" then
			for _,p1 in pairs(_G.camera_Folder:GetDescendants()) do
				if p1:IsA("Frame") then 
					p1.Visible = true;
				end;
			end;
			return true, "Toggled camera waypoints on"
		elseif data:lower() == "off" then
			for _,p1 in pairs(_G.camera_Folder:GetDescendants()) do
				if p1:IsA("Frame") then 
					p1.Visible = false;
				end;
			end;
			return true, "Toggled camera waypoints off"
		end
	end,
	[prefix .. 'save '] = function()
		save()
		return true, "Saved data"
	end,
	[prefix .. 'load '] = function()
		if Already_Loaded == true then
			sendNotif("Already Loaded.")
		else
			if isfolder("FXAdmin") then
				if isfile("FXAdmin/" .. GameName .. ".lua") then
					data = loadfile("FXAdmin/" .. GameName .. ".lua")
					local succes,failure = pcall(function()
						data()
					end)
					if not succes then print(failure) else Already_Loaded = true end 
				end 
			else
				makefolder("FXAdmin")
			end
		end
	end,
	[prefix .. 'camview '] = function(data)
		local p1, p2 = getPlayer(data)
		if p1 == true then
			local p3 = p2.Character.HumanoidRootPart
			local p6 = p3.Position
			for _,p4 in pairs(AO.Cameras.ActiveCameras) do 
				p4.Target.CFrame = CFrame.lookAt(p4.Target.Position,Vector3.new(p6.X,p6.Y,p6.Z))
				Player.CameraMode = Enum.CameraMode.LockFirstPerson
			end
			AO.Cameras.Active = true 
			AO.Cameras.Watching = true 
			table.insert(looped_Commands,{Type="CameraLookAt",Target=p3})
			return true, "Looked at " .. p2.Name
		end
	end,
	[prefix .. 'rtp '] = function(data)
		local p1,p2 = getPlayer(data)
		if p1 == true then 
			Player.Character.Humanoid.Health = -Player.Character.Humanoid.Health
			RTP_TO = p2.Character.HumanoidRootPart.CFrame
			return true, "Reset teleported to " .. p2.Name;
		end
	end,
}
local CamerasNotObstructed = {}
local loop_Command = {
	['Follow'] = function(p1,p2,p3)
		Player.Character.HumanoidRootPart.CFrame = p1.Character.HumanoidRootPart.CFrame + (p1.Character.HumanoidRootPart.CFrame.lookVector * Vector3.new(-2.5,0,-2.5));
	end,
	['Annoy'] = function(p1,p2,p3)
		Player.Character.HumanoidRootPart.CFrame = p1.Character.HumanoidRootPart.CFrame;
	end,
	['Freecam'] = function(p1,p2,dt)
		if tb == false then 
			if UIS:IsKeyDown(Enum.KeyCode.W) then 
				p1.CFrame = p1.CFrame + workspace.CurrentCamera.CFrame.lookVector * Vector3.new(fcs*dt,1,fcs*dt)
			end
			if UIS:IsKeyDown(Enum.KeyCode.S) then 
				p1.CFrame = p1.CFrame + workspace.CurrentCamera.CFrame.lookVector * Vector3.new(-(fcs*dt),-1,-(fcs*dt))
			end
			if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then 
				p1.CFrame = p1.CFrame - Vector3.new(0,fcs*dt,0)
			end
			if UIS:IsKeyDown(Enum.KeyCode.Space) then 
				p1.CFrame = p1.CFrame + Vector3.new(0,fcs*dt,0)
			end
		end
	end,
	['CameraLookAt'] = function(p6)
		local obj = p6.Position
		UIS.MouseIconEnabled = false
		Holder.Visible = false
		if AO.Cameras.Active == true and AO.Cameras.Watching == true  then
			for __Index,v in pairs(AO.Cameras.ActiveCameras) do 
				local fromCameraToPart = obj - v.Target.CFrame.Position
				local p5 = Ray.new(v.Target.CFrame.Position, fromCameraToPart)
				local hit, position = workspace:FindPartOnRay(p5, p6)
				if Players:GetPlayerFromCharacter(hit:FindFirstAncestorWhichIsA("Model")) then
					local temp_A = false 
					for _,a in pairs(CamerasNotObstructed) do 
						if a.Target == v.Target then
							temp_A = true 
						end 
					end
					if temp_A == false then
						table.insert(CamerasNotObstructed,{Target=v.Target,Index=__Index})
					end
				else
					for _,a in pairs(CamerasNotObstructed) do 
						if a.Target == v.Target then
							table.remove(CamerasNotObstructed,_)
						end 
					end
				end
				local closest = 1000000000
				for _,a in pairs(CamerasNotObstructed) do 
					local b = a.Target.Position

					local e = dis2(b.X, obj.X, b.Y, obj.Y, b.Z, obj.Z)
					if e < closest then closest = e end
				end
				for _,a in pairs(CamerasNotObstructed) do 
					local b = a.Target.Position

					local e = dis2(b.X, obj.X, b.Y, obj.Y, b.Z, obj.Z)
					if e == closest then 
						for _,p1 in pairs(_G.active_Objects.Cameras.ActiveCameras) do 
							if _ == a.Index then
								AO.Cameras.CameraPosition = _
								workspace.CurrentCamera.CameraSubject = p1.Target
								workspace.CurrentCamera.CFrame = CFrame.lookAt(p1.Target.Position,obj)
								if _G.active_Objects.Cameras.Active == false then 
									for _,v in pairs(_G.active_Objects.Cameras.viewBegan.Connected_Functions) do
										v.Func(p1.Target,p1.Extra)
									end
								end 
								for _,v in pairs(_G.active_Objects.Cameras.PositionChanged.Connected_Functions) do
									v.Func(p1.Target,p1.Extra)
								end
								_G.active_Objects.Cameras.Active = true 
								_G.active_Objects.Viewing = p1.Target
							end
						end
					end
				end
			end
		end
	end,
	RefreshCam = function()
		if workspace.CurrentCamera.CameraSubject ~= _G.active_Objects.Viewing then 
			workspace.CurrentCamera.CameraSubject = _G.active_Objects.Viewing
		end
	end,
}

-- Listeners
local Command_Active = false
Player.Chatted:Connect(function(data)
	local p1,p2,p3 = scs(data)
	if p1 == true then
		local p4, p5
		if Commands[p2:lower()] == nil then 
		else
			if p3 ~= nil then
				Command_Active = true
				p4, p5 = Commands[p2:lower()](p3)
			else
				Command_Active = true
				p4, p5 = Commands[p2:lower()]()
			end
			if p4 == true then
				print("FXHub: " .. p5);
			elseif p4 == nil then
				error("FXHub: Command not found " .. p2);
			end;
			Command_Active = false
		end
	else
		Command_Active = false
	end;
end);

UIS.InputBegan:Connect(function(p1,p2)
	if p2 then 
		tb = true 
	end
end)

UIS.InputEnded:Connect(function()
	tb = false 
end)


-- Main Loop

Player.CharacterAdded:Connect(function(char)
	wait(0.15)
	if AO.Cameras.Active == false and AO.Freecam.Active == false then 
		AO.Viewing = char.Humanoid
		pcall(function()
			if RTP_TO ~= nil then 
				char.HumanoidRootPart.CFrame = RTP_TO
				RTP_TO = nil
			end
		end)
	end
end)

game:GetService("RunService").Heartbeat:Connect(function(dt)
	if Command_Active ~= true then 
		for _,p1 in pairs(looped_Commands) do 
			loop_Command[p1.Type](p1.Target,_,dt)
		end;
	end
	loop_Command.RefreshCam()
end);


game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "FXAdmin 2.5",
	Text = "Executed Successfully.",
	Duration = 60,
	Button1 = "Ok",
})
