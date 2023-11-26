if not game.RunService:IsClient() then error("Script Must Be Run As Client!") end -- Must be run as client

-- Services
local RunServ = game:GetService("RunService")
local Plrs = game:GetService("Players")

-- Variables
local plr = Plrs.LocalPlayer
local char = plr.Character
local hum = char:FindFirstChildOfClass("Humanoid")
local plrGui = plr:FindFirstChild("PlayerGui")
local cam = workspace.CurrentCamera

local function CheckForRequired()
  if plr and char and hum and plrGui and cam then print("All Found") else error("Missing Required Object") end
end
-- Define GUI with properties
local G -- Variables Must Be Accessible By All Scripts
local Viewport
local Cworkspace
local function MakeViewportGui()
  CheckForRequired()
  G = Instance.new("ScreenGui")
  Viewport = Instance.new("ViewportFrame")
  Cworkspace = Instance.new("WorldModel")
  
  G.Parent = plrGui
  G.IgnoreGuiInset = True
  G.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  Viewport.Parent = G
  Viewport.BackgroundTransparency = 1
  Viewport.Position = UDim2.new(0,0,0,0)
  Viewport.Size = UDim2.new(0,1,0,1)
  




  
