if game:GetService("RunService"):IsClient() then error("Run As SERVER") end

-- Services
local RunServ = game:GetService("RunService")
local Plrs = game:GetService("Players")
local HttpServ = game:GetService("HttpService")

-- Variables
wait(3) -- For player loading time
local plr = Plrs.LocalPlayer
local char = plr.Character
local hum = char:FindFirstChildOfClass("Humanoid")
local hrp = char:FindFirstChild("HumanoidRootPart")

-- Variables for searching and syntax
local Priority = "DisplayName"
local Syntax = "" -- Currently No Syntax
local Whitelist = {"master200crate"}
local IgnoreWhitelist = true

-- Command Function
local function KickPlr(plr, reason)
  if Priority == Dospla
