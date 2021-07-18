local SFTHLoader = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

SFTHLoader.Name = "SFTHLoader"
SFTHLoader.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SFTHLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = SFTHLoader
Frame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.316087306, 0, 0.328834355, 0)
Frame.Size = UDim2.new(0, 455, 0, 278)

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0483516492, 0, 0.320143878, 0)
ImageLabel.Size = UDim2.new(0, 100, 0, 100)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.421978027, 0, 0.140287772, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Script Is Ready!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
TextButton.BorderColor3 = Color3.fromRGB(37, 37, 37)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.421978027, 0, 0.410071939, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Load Script"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

if game.PlaceId == 14375697 then
	ImageLabel.Image = "http://www.roblox.com/asset/?id=6896386230"
	TextButton.Text = "Load Script"
	TextLabel.Text = "Script Is Ready!"
	TextButton.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/t0rnado11/SFT-Hub/main/main.lua",true))()
	end)
else
	ImageLabel.Image = "http://www.roblox.com/asset/?id=4463096174"
	TextButton.Text = "Close"
	TextLabel.Text = "Wrong Game!"
	TextButton.MouseButton1Click:Connect(function()
		SFTHLoader:Destroy()
	end)
end
