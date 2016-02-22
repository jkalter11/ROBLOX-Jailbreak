--For those of you in GitHub - this is a LocalScript. For some reason this only works in StarterGui. Keep in mind this DOES NOT control a GUI.

local LocalPlayer = game.Players.LocalPlayer;
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
local Humanoid = Character:WaitForChild("Humanoid")

Humanoid.Died:connect(function()
	if not game.ReplicatedStorage.timeLeft.Value == 0 then
	    print(LocalPlayer.Name.. " has died.")
    	LocalPlayer.TeamColor = BrickColor.new("Really black")		
	end
end)
