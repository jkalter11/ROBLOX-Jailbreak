player = game.Players.LocalPlayer

script.Parent.MouseButton1Click:connect(function()
	if player.TeamColor.Name == "Really blue" or player.TeamColor.Name == "Lapis" then
		return(player.Name .. ", you are already on this team!")
	else
		print(player.Name .. " has switched to the Guard team.")
		player.TeamColor = BrickColor.new("Really black")
		
		local userData = game.ReplicatedStorage.userData:FindFirstChild(tostring(game.Players.LocalPlayer))
		userData.Value = 1
		
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end
end)
