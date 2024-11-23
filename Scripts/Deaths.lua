local MarketplaceService = game:GetService("MarketplaceService")
local productID = 1681274643
local player = game.Players.LocalPlayer

game.Players.PlayerAdded:Connect(function(player)

local leaderstats = player:WaitForChild("leaderstats")
	local i = 1
	local aa = 1

	player.CharacterAdded:connect(function(character)
		if aa == 1 then
			aa = aa - 1
		else
			player.leaderstats.deaths.Value = player.leaderstats.deaths.Value + 1
			if i == 3 then
				MarketplaceService:PromptProductPurchase(player, productID)
				i = 1
			else
				i += 1
			end
		end
	end)
end)
