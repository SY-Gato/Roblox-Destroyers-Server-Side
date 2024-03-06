local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer

local function notif(str, dur)
  game:FindService("StarterGui"):SetCore("SendNotification", {
      Title = "yeet gui",
      Text = str,
      Duration = dur or 3
    })
end

local h = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Top = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local TextButton2 = Instance.new("TextButton")

h.Name = "h"
h.Parent = game:GetService("CoreGui")
h.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = h
Main.Active = true
Main.Draggable = true
Main.BackgroundColor3 = Color3.fromRGB(30,30,30)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.174545452, 0, 0.459574461, 0)
Main.Size = UDim2.new(0, 454, 0, 218)

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(20,20,20)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(0, 454, 0, 44)

Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, 0.295454562, 0)
Title.Size = UDim2.new(0, 454, 0, 30)
Title.Font = Enum.Font.SourceSans
Title.Text = "Flinger"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0704845786, 0, 0.270642221, 0)
TextBox.Size = UDim2.new(0, 388, 0, 62)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Player To Fling (Cannot Fling Self)"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.10352423-(0.10352423/1.8), 0, 0.596330225, 0)
TextButton.Size = UDim2.new(0, 359, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Fling"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton2.Parent = Main
TextButton2.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TextButton2.BorderSizePixel = 0
TextButton2.Position = UDim2.new(0.10352423+(0.10352423/1.8), 0, 0.596330225, 0)
TextButton2.Size = UDim2.new(0, 359, 0, 50)
TextButton2.Font = Enum.Font.SourceSans
TextButton2.Text = "Fling Random"
TextButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton2.TextScaled = true
TextButton2.TextSize = 14.000
TextButton2.TextWrapped = true
