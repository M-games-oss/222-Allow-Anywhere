local LocalPlayerInstance = game:GetService("Players").LocalPlayer
local MainScreenGui = Instance.new("ScreenGui")

-- GUI NAME
MainScreenGui.Name = "222 Allow Anywhere"
MainScreenGui.ResetOnSpawn = false
MainScreenGui.Parent = LocalPlayerInstance:WaitForChild("PlayerGui")

-- MAIN FRAME
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 180, 0, 120)
MainFrame.Position = UDim2.new(0, 40, 0, 60)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 30, 20) -- dark green
MainFrame.BackgroundTransparency = 0.35
MainFrame.Parent = MainScreenGui

local MainFrameCorner = Instance.new("UICorner")
MainFrameCorner.CornerRadius = UDim.new(0, 12)
MainFrameCorner.Parent = MainFrame

-- TITLE
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, -20, 0, 24)
TitleLabel.Position = UDim2.new(0, 10, 0, 6)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "222 Allow Anywhere"
TitleLabel.TextColor3 = Color3.fromRGB(120, 255, 180) -- green
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextSize = 16
TitleLabel.TextXAlignment = Enum.TextXAlignment.Center
TitleLabel.Parent = MainFrame

-- BUTTON
local AllowFriendsButton = Instance.new("TextButton")
AllowFriendsButton.Size = UDim2.new(1, -30, 0, 50)
AllowFriendsButton.Position = UDim2.new(0, 15, 0.5, -25)
AllowFriendsButton.Text = "Allow Friends"
AllowFriendsButton.TextColor3 = Color3.fromRGB(220, 255, 235)
AllowFriendsButton.Font = Enum.Font.GothamBold
AllowFriendsButton.TextSize = 18
AllowFriendsButton.BackgroundColor3 = Color3.fromRGB(40, 120, 80) -- green button
AllowFriendsButton.BackgroundTransparency = 0.2
AllowFriendsButton.Parent = MainFrame

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 10)
ButtonCorner.Parent = AllowFriendsButton

-- DISCORD LABEL
local DiscordLabel = Instance.new("TextLabel")
DiscordLabel.Size = UDim2.new(1, -30, 0, 16)
DiscordLabel.Position = UDim2.new(0, 15, 0, 90)
DiscordLabel.BackgroundTransparency = 1
DiscordLabel.Text = ".gg/tokinu"
DiscordLabel.TextColor3 = Color3.fromRGB(150, 220, 190)
DiscordLabel.Font = Enum.Font.Gotham
DiscordLabel.TextSize = 11
DiscordLabel.TextXAlignment = Enum.TextXAlignment.Center
DiscordLabel.Parent = MainFrame

-- UNUSED INPUT LISTENERS (LEFT INTACT)
MainFrame.InputBegan:Connect(function(InputObject)
    local InputType = InputObject.UserInputType
    local MouseButton = Enum.UserInputType.MouseButton1
    local _ = InputType == MouseButton
end)

MainFrame.InputEnded:Connect(function(InputObject)
    local InputType = InputObject.UserInputType
    local MouseButton = Enum.UserInputType.MouseButton1
    local _ = InputType == MouseButton
end)

game:GetService("UserInputService").InputChanged:Connect(function(InputObject)
    local InputType = InputObject.UserInputType
    local MouseMovement = Enum.UserInputType.MouseMovement
    local _ = InputType == MouseMovement
end)

-- BUTTON LOGIC
AllowFriendsButton.MouseButton1Click:Connect(function()
    AllowFriendsButton.Text = "Disallow"
end)

AllowFriendsButton.MouseButton1Click:Connect(function()
    game:GetService("ReplicatedStorage")
        :WaitForChild("Packages")
        :WaitForChild("Net")
        :WaitForChild("RE/PlotService/ToggleFriends")
        :FireServer()
end)
