--- Is a spam script :D
--- use alt acc!

local spamsettings = {
    text = "im like spaming",
    waitingtime = 1,
    spaming = true
};

--------

game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "[Spam Script]: Text To Spam:  ".."'"..spamsettings.text.."'";
	Color = Color3.new(0.639216, 0.278431, 1);
	Font = Enum.Font.SourceSansBold;
	FontSize = Enum.FontSize.Size24;
});
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "[Spam Script]: Script made by b27xip on github";
	Color = Color3.new(0.639216, 0.278431, 1);
	Font = Enum.Font.SourceSansBold;
	FontSize = Enum.FontSize.Size24;
});
while wait(spamsettings.waitingtime) do
    if spamsettings.spaming == true then
        local args = {
          [1] = spamsettings.text,
          [2] = "All"
        }
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    end
end
