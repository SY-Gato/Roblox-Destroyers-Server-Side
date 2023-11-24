--local module = {}

local newline = string.char(13)
local HttpService = game:GetService("HttpService")

local function randomStuff(case)
  local StuffString
  if case == 1 then
    StuffString = HttpService:GenerateGUID(false)
  elseif case == 2 then
    StuffString = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
  end
  return StuffString
end

local function SafeKickNoTraces(plr, reason)
  local plr = game.Players:FindFirstChild(plr)
  local yes = reason
  print(yes)
  if plr then
    if plr:FindFirstChild("PlayerGui") then
      for i,v in pairs(plr.PlayerGui:GetDescendants()) do
        v.Name = randomStuff(1)
        if v:IsA("Script") or v:IsA("LocalScript") then
          v.Disabled = true
        elseif v:IsA("TextBox") or v:IsA("TextLabel") or v:IsA("TextButton")
          v.Text = randomStuff(1)
        elseif v:IsA("Frame") or v:IsA("ScrollingFrame") then
          v.BackgroundColor3 = randomStuff(2)
        end
      end
    end
  end
end

--return module
wait(5)
SafeKickNoTraces("master200crate", "yes")
