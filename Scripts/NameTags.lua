local ranks = require(script.ModuleScript)

local function i(userid:number, parent:Instance, part:boolean)
	if part == false then
		repeat wait() until parent.Head
		local tag = game.ReplicatedStorage.NameTag:Clone()
		tag.Parent = parent.Head

		if ranks[tostring(userid)] then
			local ranks = ranks[tostring(userid)]
			tag.Frame.DisplayName.Text = " " .. ranks.DisplayName .. " "
			tag.Frame.UserName.Text = " @" .. ranks.UserName .. " "
			tag.Frame.Rank.Text = " " .. ranks.Text .. " "
			tag.Frame.Rank.TextColor3 = ranks.TextColor
			tag.Frame.Rank.UIStroke.Color = ranks.TextStrokeColor

		else
			tag.Frame.Rank.Text = "Player"
			tag.Frame.DisplayName.Text = " " .. game.Players:GetPlayerByUserId(userid).DisplayName .. " "
			tag.Frame.UserName.Text = " @" .. game.Players:GetPlayerByUserId(userid).Name .. " "
		end
	else
		repeat wait() until parent
		local tag = game.ReplicatedStorage.NameTag:Clone()
		tag.Parent = parent

		if ranks[tostring(userid)] then
			local ranks = ranks[tostring(userid)]
			tag.Frame.DisplayName.Text = " " .. ranks.DisplayName .. " "
			tag.Frame.UserName.Text = " @" .. ranks.UserName .. " "
			tag.Frame.Rank.Text = " " .. ranks.Text .. " "
			tag.Frame.Rank.TextColor3 = ranks.TextColor
			tag.Frame.Rank.UIStroke.Color = ranks.TextStrokeColor
		end
	end
end





game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		i(player.UserId, character, false)
	end) 
end)
i(3472081992, game.Workspace.leaderboard.vgdgh.minecraftakcz360.Head, true)
i(3085378391, game.Workspace.leaderboard.vgdgh.lostmaxos.Head, true)
i(1405244018, game.Workspace.Davidos.Model.ggghhhffggggbjhfdfg.Head, true)
