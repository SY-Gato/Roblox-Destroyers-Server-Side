local module = {}

local newline = string.char(13)
local HttpService = game:GetService("HttpService")

local function randomizeName(obj)
  local rndmname = HttpService:GenerateGUID(false)
  obj.Name = rndmname
end

local function SafeKickNoTraces(plr, reason)
  local plr = game.Players:FindFirstChild(plr)
  if plr then
    if plr:FindFirstChild("Backpack")
end

return module
