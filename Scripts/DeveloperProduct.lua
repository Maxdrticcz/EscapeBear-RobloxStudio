local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MarketplaceService =game:GetService("MarketplaceService")
local players = game:GetService("Players")

local productid = {
	skipstage = 1681274643,
	gravitycoil = 1681323843,
	speedcoil = 1681324741,
	sword = 1681325106
}

local tools = {
	gravitycoil = ReplicatedStorage:WaitForChild("GravityCoil"),
	speedcoil = ReplicatedStorage:WaitForChild("SpeedCoil"),
	sword = ReplicatedStorage:WaitForChild("Sword")
}

local function processReceipt(receiptInfo)
	local player = players:GetPlayerByUserId(receiptInfo.PlayerId)
	if not player then
		return Enum.ProductPurchaseDecision.NotProcessedYet
	end
	
	if receiptInfo.ProductId == productid.skipstage then
		if player then
			local checkpoint = tostring(game.ServerStorage.CheckpointData[player.UserId].Value)
			game.ServerStorage.CheckpointData[player.UserId].Value = game.Workspace[checkpoint]
			player.Character.HumanoidRootPart.CFrame = game.Workspace[checkpoint + 1].CFrame
		end
	end

	if receiptInfo.ProductId == productid.gravitycoil then
		if player then
			local char = game.Workspace:FindFirstChild(player.name)
			local gravitycoilclone = tools.gravitycoil:Clone()
			gravitycoilclone.Name = ("Gravity Coil")
			gravitycoilclone.Parent = char
		end
	end
	
	if receiptInfo.ProductId == productid.speedcoil then
		if player then
			local char = game.Workspace:FindFirstChild(player.name)
			local speedcoilclone = tools.speedcoil:Clone()
			speedcoilclone.Name = ("Speed Coil")
			speedcoilclone.Parent = char
		end
	end
	
	if receiptInfo.ProductId == productid.sword then
		if player then
			local char = game.Workspace:FindFirstChild(player.name)
			local swordclone = tools.sword:Clone()
			swordclone.Name = ("Sword")
			swordclone.Parent = char
		end
	end
	
	

end

MarketplaceService.ProcessReceipt = processReceipt
