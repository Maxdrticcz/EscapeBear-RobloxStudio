game.Players.PlayerAdded:Connect(function(player)

	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	
	local stage = Instance.new("NumberValue")
	stage.Name = "stage"
	stage.Parent = leaderstats
	
	local deaths = Instance.new("NumberValue")
	deaths.Name = "deaths"
	deaths.Parent = leaderstats
	
	local time = Instance.new("NumberValue")
	time.Name = "time"
	time.Parent = leaderstats
	
end)
