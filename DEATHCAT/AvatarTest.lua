local desc = Instance.new("HumanoidDescription") -- actual avatar data
desc.Shirt = 691316393
desc.Pants = 691316747
desc.HeadColor = Color3.new(0.960784, 0.803922, 0.188235)
--desc.Head = 14766408454
local AccessoriesTable = {
  {
    Order = 1,
    AssetId = 12076591932,
    AccessoryType = Enum.AccessoryType.Shoulder
  }
}
desc:SetAccessories(AccessoriesTable, false)
--desc.ShoulderAccessory = "12076591932"
--[[local desc = Instance.new("HumanoidDescription")
desc.HeadColor = Color3.fromRGB(161, 165, 162)
desc]]

--game.Players.CharacterAutoLoads = false

local plr = game.Players.master200crate
local char = plr.Character
local hum = char:FindFirstChildOfClass("Humanoid")
local hrp = char:FindFirstChild("HumanoidRootPart")
local var = Instance.new("Vector3Value", script)
var.Name = "SavedPos"
var.Value = hrp.Position

char:MoveTo(Vector3.new(9999999, 9999999, 9999999))
wait(0.05)
hum:ApplyDescription(desc)
wait(1)
char:MoveTo(var.Value)
