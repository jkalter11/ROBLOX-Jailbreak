while true do
	for k,v in pairs(game.Players:GetPlayers()) do
		if v.TeamColor.Name == "Lapis" then
			script.Parent.ImageLabel.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username=" .. v.Name
			script.Parent.TextLabel.Text = v.Name .. " is this round's warden!"
		else
			script.Parent.ImageLabel.Image = "rbxassetid://133293265"
			script.Parent.TextLabel.Text = "There is no warden. Freeday!"
		end
	end
	wait(1)
end
