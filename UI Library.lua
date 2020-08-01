local Settings = {
	Name = "Gay",
	Rainbow = false
}
for _, gui in pairs(game:GetService("CoreGui").RobloxGui:GetChildren()) do
    if gui:IsA("ScreenGui") and string.match(gui.Name, "_BACONLIB") then
        gui:Destroy()
    end
end

for _, gui in pairs(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):GetChildren()) do
    if gui:IsA("ScreenGui") and string.match(gui.Name, "_BACONLIB") then
        gui:Destroy()
    end
end
local ScreenGui = Instance.new("ScreenGui")
local TopBar = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Exit_Open = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local ItemsExtender = Instance.new("Frame")
local Frame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")

ScreenGui.Name = "..."
ScreenGui.Parent = game.CoreGui or game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TopBar.Name = "TopBar"
TopBar.Parent = ScreenGui
TopBar.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(0.016997166, 0, 0.0242290795, 0)
TopBar.Size = UDim2.new(0, 164, 0, 26)

TextLabel.Parent = TopBar
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.000365885295, 0, 0.154307649, 0)
TextLabel.Size = UDim2.new(0, 137, 0, 17)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = Settings.Name or "Text Here!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 17.000
TextLabel.TextWrapped = true

Exit_Open.Name = "Exit_Open"
Exit_Open.Parent = TopBar
Exit_Open.Active = false
Exit_Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit_Open.BackgroundTransparency = 1.000
Exit_Open.BorderSizePixel = 0
Exit_Open.Position = UDim2.new(0.835365832, 0, -0.0384615399, 0)
Exit_Open.Size = UDim2.new(0, 27, 0, 25)
Exit_Open.Font = Enum.Font.Cartoon
Exit_Open.Text = "+"
Exit_Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Exit_Open.TextScaled = true
Exit_Open.TextSize = 1.000
Exit_Open.TextWrapped = true

TextLabel_2.Parent = TopBar
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 255, 0)
TextLabel_2.Position = UDim2.new(0, 0, 0.99999994, 0)
TextLabel_2.Size = UDim2.new(0, 164, 0, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

ItemsExtender.Name = "ItemsExtender"
ItemsExtender.Parent = TopBar
ItemsExtender.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
ItemsExtender.BorderSizePixel = 0
ItemsExtender.Position = UDim2.new(0, 0, 0.99999994, 0)
ItemsExtender.Size = UDim2.new(0, 164, 0, 177)

Frame.Parent = ItemsExtender
Frame.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.048780486, 0, 0.0508474559, 0)
Frame.Size = UDim2.new(0, 148, 0, 168)

UIListLayout.Parent = Frame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 1)

if Settings.Rainbow then
	smoothness = 2
	TextLabel_2.BorderColor3 = Color3.fromRGB(math.random(100, 300), math.random(100, 300), math.random(100, 300)*smoothness)
end
-----------------------------------------------------------------------------|
function CreateButton(text, functionend)-------------------------------------|
local ButtonConfig = {-------------------------------------------------------|
buttontext = text or "Text Here!",-------------------------------------------|
functionend = functionend or function() print("Supply a Script here!") end---|
}----------------------------------------------------------------------------|
local Button = Instance.new("TextButton")------------------------------------|
Button.Name = "Button"-------------------------------------------------------|
Button.Parent = Frame------------------------------------------|
Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)-------------------------|
Button.BorderSizePixel = 0---------------------------------------------------|
Button.Size = UDim2.new(0, 147, 0, 20)---------------------------------------|
Button.Text = ButtonConfig.buttontext----------------------------------------|
Button.Font = Enum.Font.Gotham-----------------------------------------------|
Button.TextColor3 = Color3.fromRGB(255, 255, 255)----------------------------|
Button.TextSize = 14.000-----------------------------------------------------|
Button.TextWrapped = true----------------------------------------------------|
Button.MouseButton1Click:Connect(function()----------------------------------|
		local success,em= pcall(function()-----------------------------------|
			pcall(ButtonConfig.functionend)----------------------------------|
		end)-----------------------------------------------------------------|
if em then print("There was a error while running ur script: "..em) end------|
end)-------------------------------------------------------------------------|
end--------------------------------------------------------------------------|
-----------------------------------------------------------------------------|
return CreateButton()
