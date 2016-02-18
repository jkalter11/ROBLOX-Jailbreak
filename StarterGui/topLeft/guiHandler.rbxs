local player = game.Players.LocalPlayer
local gui = script.Parent

gui.name.TextLabel.Text = player.Name
gui.avatar.ImageLabel.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username=" .. player.Name

local healthbar = gui.healthContainer.health

player.CharacterAdded:connect(function(character)
	local humanoid = character:WaitForChild('Humanoid')
	humanoid.HealthChanged:connect(function(health)
		local healthPercentage = health / character.Humanoid.MaxHealth
		healthbar.Size = UDim2.new(healthPercentage, 0, 1, 0)
	end)
end)
