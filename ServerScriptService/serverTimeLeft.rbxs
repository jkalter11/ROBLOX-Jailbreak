--[[The time left is sort of done twice. Once to show in the GUI in the bottom right, then
	second for the actual server time. This is the server time - time until the next round.
--]]
active = true

game.Players.PlayerAdded:connect(function(fuuu) --There was so much annoyance making this function
	print(tostring(fuuu) .. " has joined the game")
	local userData = Instance.new("NumberValue")
	userData.Parent = game.ReplicatedStorage.userData
	userData.Name = tostring(fuuu)
	local blue = {}
	local red = {}
	for k,v in pairs(game.Players:GetPlayers()) do
		if v.TeamColor.Name == "Really blue" or v.TeamColor == "Lapis" then
			table.insert(blue,v)
		elseif v.TeamColor.Name == "Really red" then
			table.insert(red,v)
		end
	end
	if #blue / #red <= 0.3 then
		userData.Value = 1
	elseif #blue / #red >= 0.31 then
		userData.Value = 0
	end
	
	fuuu.TeamColor = BrickColor.new("Really black")
	wait(1)
end)
