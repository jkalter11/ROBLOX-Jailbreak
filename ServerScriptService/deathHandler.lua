while true do
	for k,v in pairs(game.Players:GetChildren()) do
		if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
			v.TeamColor = BrickColor.new("Really black")
		end
	end
	wait(1)
end
