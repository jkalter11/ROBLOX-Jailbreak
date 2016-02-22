while true do
	if game.ReplicatedStorage.timeLeft.Value == 0 then
		for k,v in pairs(game.Players:GetPlayers()) do
			print("Round over, switching to new round")
			wait(5)
			v.Character.Humanoid.Health = 0
			print("DEATH HAS BEEN WROUGHT!")
			local userData = game.ReplicatedStorage.userData:FindFirstChild(tostring(v))
			if userData.Value == 0 then
				v.TeamColor = BrickColor.new("Really red")
			elseif userData.Value == 1 then
				v.TeamColor = BrickColor.new("Really blue")
			end
				game.ReplicatedStorage.wardenClaimed.Value = 0
			game.ReplicatedStorage.timeLeft.Value = 600 --Adjust this depending on how long you want the round to be
		end
		wait(0.1)
	else
		game.ReplicatedStorage.timeLeft.Value = game.ReplicatedStorage.timeLeft.Value - 1
	end
	wait(1)
end
