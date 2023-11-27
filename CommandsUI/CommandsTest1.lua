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
local Priorities = {"DisplayName", "Username"}
local Priority = 1 -- 1 is DisplayName, 2 is Username
local Syntax = "" -- Currently No Syntax
local Whitelist = {"master200crate"}
local IgnoreWhitelist = true

-- Command Function
local function FindName(str)
  for i,v in pairs(Plrs:GetPlayers()) do
    local short
    if Priority == 1 then short = v.DisplayName else short = v.Name end
    local t, y = string.find(short, str)
    local Status, String
    if t ~ nil then
      Status = true
      String = string.sub(short, t, y)
      print(String)
    else
      Status = false
      String = nil
    end
    return Status, String
  end
end

local function KickPlr(plr, reason)
  if Priority == 1 then
    
