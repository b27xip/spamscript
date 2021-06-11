local spamgui = Instance.new("ScreenGui", game:WaitForChild("CoreGui"))
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local textpp = Instance.new("TextBox")
local waittim = Instance.new("TextBox")
local spanb = Instance.new("TextButton")
local credits = Instance.new("TextLabel")
local exit = Instance.new("TextButton")
local toggle1 = false

main.Name = "main"
main.Parent = spamgui
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.Position = UDim2.new(0.30036363, 0, 0.5257985, 0)
main.Size = UDim2.new(0, 303, 0, 192)
main.Draggable = true
main.Active = true
main.Selectable = true

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.Size = UDim2.new(0, 285, 0, 18)
title.Font = Enum.Font.SourceSans
title.Text = "spam gui"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextSize = 14.000

textpp.Name = "textpp"
textpp.Parent = main
textpp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textpp.Position = UDim2.new(0.168316826, 0, 0.182291672, 0)
textpp.Size = UDim2.new(0, 200, 0, 24)
textpp.Font = Enum.Font.SourceSans
textpp.PlaceholderText = "text to spam"
textpp.Text = ""
textpp.TextColor3 = Color3.fromRGB(0, 0, 0)
textpp.TextSize = 14.000

waittim.Name = "waittim"
waittim.Parent = main
waittim.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
waittim.Position = UDim2.new(0.168316826, 0, 0.348958343, 0)
waittim.Size = UDim2.new(0, 200, 0, 24)
waittim.Font = Enum.Font.SourceSans
waittim.PlaceholderText = "waiting time"
waittim.Text = ""
waittim.TextColor3 = Color3.fromRGB(0, 0, 0)
waittim.TextSize = 14.000

spanb.Name = "spanb"
spanb.Parent = main
spanb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
spanb.Position = UDim2.new(0.168316826, 0, 0.583333313, 0)
spanb.Size = UDim2.new(0, 200, 0, 50)
spanb.Font = Enum.Font.SourceSans
spanb.Text = "Spaming: Off"
spanb.TextColor3 = Color3.fromRGB(0, 0, 0)
spanb.TextSize = 14.000
spanb.MouseButton1Click:Connect(function()
	if toggle1 == false then
		toggle1 = true
		spanb.Text = "Spaming: On"
	else
		toggle1 = false
		spanb.Text = "Spaming: Off"
	end
end)

credits.Name = "credits"
credits.Parent = main
credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credits.Position = UDim2.new(0, 0, 0.90625, 0)
credits.Size = UDim2.new(0, 303, 0, 18)
credits.Font = Enum.Font.SourceSans
credits.Text = "made by b27xip"
credits.TextColor3 = Color3.fromRGB(0, 0, 0)
credits.TextSize = 14.000

exit.Name = "exit"
exit.Parent = main
exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exit.Position = UDim2.new(0.940594077, 0, 0, 0)
exit.Size = UDim2.new(0, 18, 0, 18)
exit.Font = Enum.Font.SourceSans
exit.Text = "X"
exit.TextColor3 = Color3.fromRGB(0, 0, 0)
exit.TextSize = 14.000
exit.MouseButton1Click:Connect(function()
	spamgui:Destroy();
end)

if spamsettings.settingstogui == true then
	textpp.Text = spamsettings.text
	waittim.Text = spamsettings.waitingtime
end

while wait(waittim.Text) do
	if toggle1 == true then
		local args = {
			[1] = textpp.Text,
			[2] = "All"
		};
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	end
end
