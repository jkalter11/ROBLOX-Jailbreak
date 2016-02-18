function onKeyPress(inputObject)
	if inputObject.KeyCode == Enum.KeyCode.F2 then
		if script.Parent.Visible then
			script.Parent.Visible = false
		elseif not script.Parent.Visible then
			script.Parent.Visible = true
		end
	end
end


game:GetService("UserInputService").InputBegan:connect(onKeyPress)
