local whitelisted = "master200crate"
function ScanForHub1()
  for i,v in pairs(game.Players:GetPlayers()) do
    for l,s in pairs(v.PlayerGui:GetDescendants()) do
      if s.Name == "LivingInTheLight" then --and s:FindFirstChild("TheCure") ~= nil then
        for h,d in pairs(s.Parent:GetDescendants()) do
          if d:IsA("Script") or d:IsA("LocalScript") then
            d.Disabled = true
          end
        end
        s.Parent.Enabled = false
        warn(tostring(s.Parent.Parent.Parent.Name))
        s.Parent.Parent = game.ReplicatedStorage
        s.Parent:Destroy()
      end
    end
  end
end
function ScanForHub2()
  for i,v in pairs(game.Players:GetPlayers()) do
    if v.Name ~= whitelisted then
    for l,s in pairs(v.PlayerGui:GetDescendants()) do
      --if s.Name = "Hub" and s:FindFirstChild("Hub Frame") ~= nil or s.Name = "Hub Frame" then
      if s.Name == "HubFrame" and s.Parent:FindFirstChild("LC_Rainbow") then
        for h,d in pairs(s.Parent:GetDescendants()) do
          if d:IsA("Script") or d:IsA("LocalScript") then
            d.Disabled = true
          end
        end
        warn(tostring(s.Parent.Parent.Parent.Name))
        for h,d in pairs(s.Parent:GetDescendants()) do
          if d:IsA("TextLabel") or d:IsA("TextBox") or d:IsA("TextButton") then
            d.Text = "SGHR 3 detected by AntiSGHR"
          end
        end
        wait(2)
        s.Parent.Enabled = false
        s.Parent.Name = "DELETEMENOW"
        s.Parent.Parent = game.ReplicatedStorage
        game.ReplicatedStorage.DELETEMENOW:Destroy()
      end
    end
    end
  end
end
      

wait(15)

while true do
  ScanForHub1()
  ScanForHub2()
  wait(10)
end
