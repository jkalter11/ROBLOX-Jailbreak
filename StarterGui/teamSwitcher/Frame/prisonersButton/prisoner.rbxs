player = game.Players.LocalPlayer

script.Parent.MouseButton1Click:connect(function()
	if player.TeamColor.Name == "Really red" then
		return(player.Name .. ", you are already on this team!")
	else
		print(player.Name .. " has switched to the Prisoner team")
		player.TeamColor = BrickColor.new("Really black")

		local userData = game.ReplicatedStorage.userData:FindFirstChild(tostring(game.Players.LocalPlayer))
		userData.Value = 0
		
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end
end)
