local desc = Instance.new("HumanoidDescription")
desc.HeadColor = Color3.fromRGB(161, 165, 162)
desc.TorsoColor = Color3.fromRGB(161, 165, 162)



local plr = game.Players.LocalPlayer
local char = plr.Character
local hum = char:FindFirstChildOfClass("Humanoid")
hum:ApplyDescription(desc)
