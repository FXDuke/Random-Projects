-- Credit: FXDuke#9178
-- How to use:
-- local a = button(frame_variable)
-- a.MouseButton1Down:Connect(function() can be mousebutton1/2down or mouseenter/left
-- 	print("Mouse 1 Got clicked!")
-- end)
function button(p1)
	p1.Name = (p1.Name~=p1.ClassName) and p1.Name or (p1.Name .. math.random());
	local UIS = game:GetService("UserInputService");
	local _M = game.Players.LocalPlayer:GetMouse();
	local p2 = p1.AbsolutePosition;
	local p3 = p1.Size;
	local p4,p5 = p2.X,p2.Y;
	local p6,p7 = p4+p3.Height.Offset,p5+p3.Width.Offset;
	p8 = {
		Entered = false;
		Fired = false;
		MouseButton1Down = {
			__Connected = {};
			Connect = function(...)
				local p2 = {...};
				table.insert(p8.MouseButton1Down.__Connected, p2[2]);
			end;
		};
		MouseButton2Down = {
			__Connected = {};
			Connect = function(...)
				local p2 = {...};
				table.insert(p8.MouseButton2Down.__Connected, p2[2]);
			end;
		};
		MouseEnter = {
			__Connected = {};
			Connect = function(...)
				local p2 = {...};
				table.insert(p8.MouseEnter.__Connected, p2[2]);
			end;
		};
		MouseLeft = {
			__Connected = {};
			Connect = function(...)
				local p2 = {...};
				table.insert(p8.MouseLeft.__Connected, p2[2]);
			end;
		};
	};
	task.spawn(function()
		while task.wait() do
			if p1.Parent:FindFirstChild(p1.Name) then
				if p1.Visible and _M.X>=p4 and _M.Y>=p5 and _M.X<=p6 and _M.Y<=p7 then
					for _,p9 in pairs(UIS:GetMouseButtonsPressed()) do
						if p8.Fired == false then
							if p9.UserInputType == Enum.UserInputType.MouseButton1 then
								for _,p10 in pairs(p8.MouseButton1Down.__Connected) do 
									p8.Fired = true;
									p10();
								end;
							end;
							if p9.UserInputType == Enum.UserInputType.MouseButton2 then
								for _,p10 in pairs(p8.MouseButton2Down.__Connected) do 
									p8.Fired = true;
									p10();
								end;
							end;
						end;
					end;
					p8.Fired = if (#UIS:GetMouseButtonsPressed()==0) then false else true;
					if p8.Entered == false then
						p8.Entered = true;
						for _,p9 in pairs(p8.MouseEnter.__Connected) do 
							p9();
						end;
					end;
				else 
					p8.Fired = false;
					if p8.Entered == true then
						p8.Entered = false;
						for _,p9 in pairs(p8.MouseLeft.__Connected) do 
							p9();
						end;
					end;
				end;
			else
				break;
			end;
		end;
	end);
	return p8;
end;
