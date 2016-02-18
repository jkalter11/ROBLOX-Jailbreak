--[[If the button  is clicked, it will make you Warden IF no one else already is.
	To be added: LR menu for the last remaining prisoner.
--]]

script.Parent.MouseButton1Click:connect(function()
	for k,v in pairs(game.Players:GetChildren()) do
		if v.TeamColor.Name == "Lapis" then
			script.Parent.Text = "Someone is already warden"
			wait(5)
			script.Parent.Text = "Claim Warden"
			break
		else
			if not game.Players.LocalPlayer.TeamColor.Name == "Really red" then
				game.Players.LocalPlayer.TeamColor = BrickColor.new("Lapis")
				script.Parent.Text = "You are now warden!"
				wait(5)
				script.Parent.Text = "Claim Warden"
			end
		end
	end
end)
