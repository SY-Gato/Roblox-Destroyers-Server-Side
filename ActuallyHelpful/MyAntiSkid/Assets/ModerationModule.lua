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
  local randomPrint = {"Hub was destroyed.", "Bye skid", "ur hub got destroyed and that fine", "ok", "lol where did it go", "M@lw@rę", "b o x"}
  local newline = string.char(13)
  local kickString = "You have been detected for skid scripts."..newline.."AntiSkid failed to safely remove script without causing damage to others."..newline..newline..newline.."Reason: "..reason
  print(yes)
  if plr then
    if plr:FindFirstChild("PlayerGui") then
      for i,v in pairs(plr.PlayerGui:GetDescendants()) do
        print(v.Name..": "..randomPrint[math.random(1,#randomPrint)])
        v.Name = randomStuff(1)
        if v:IsA("Script") or v:IsA("LocalScript") then
          v.Disabled = true
        elseif v:IsA("TextBox") or v:IsA("TextLabel") or v:IsA("TextButton") then
          v.Text = randomStuff(1)
        elseif v:IsA("Frame") or v:IsA("ScrollingFrame") then
          v.BackgroundColor3 = randomStuff(2)
        elseif v:IsA("RemoteEvent") then
          v.OnServerEvent:Connect(function()
              print(randomPrint[math.random(1,#randomPrint)])
            end)
        end
        wait(10)
        plr:Kick(kickString)
      end
    end
  end
end

--return module
wait(5)
SafeKickNoTraces("master200crate", "yes")
