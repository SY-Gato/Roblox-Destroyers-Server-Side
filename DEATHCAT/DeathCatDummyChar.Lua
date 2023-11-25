local desc = Instance.new("HumanoidDescription")
desc.HeadColor = Color3.fromRGB(161, 165, 162)
desc.TorsoColor = Color3.fromRGB(161, 165, 162)
desc.RightLegColor = Color3.fromRGB(161, 165, 162)
desc.LeftLegColor = Color3.fromRGB(161, 165, 162)
desc.RightArmColor = Color3.fromRGB(161, 165, 162)
desc.LeftArmColor = Color3.fromRGB(161, 165, 162)

local plr = game.Players.master200crate
local char = plr.Character
local hum = char:FindFirstChildOfClass("Humanoid")
hum:ApplyDescription(desc)
