-- Someone asked me to make this for free
local Slowness = {};
Slowness = {
	active = {};
	default_speed = 16; -- Change this to your normal speed
	begin = function(player, amount)
		if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
			table.insert(Slowness.active, {Name=player.Name,Amount=amount,plr=player});
		end;
	end;
	stop = function(player)
		for _,v in pairs(Slowness.active) do 
			if v.Name == player.Name then
				table.remove(Slowness.active, _);
			end;
		end;
		if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
			player.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = Slowness.default_speed;
		end;
	end;
};
task.spawn(function()
	while task.wait() do 
		for _,v in pairs(Slowness.active) do 
			local player = v.plr;
			if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
				player.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = v.Amount;
			end;
		end;
	end;
end);
return Slowness;
