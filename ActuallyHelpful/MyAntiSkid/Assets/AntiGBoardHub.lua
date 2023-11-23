function ScanForHub()
  for i,v in pairs(game.Players:GetPlayers()) do
    for l,s in pairs(v.PlayerGui:GetDescendants()) do
      if s.Name = "LivingInTheLight" and s:FindFirstChild("TheCure") ~= nil then
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

wait(15)

while true do
  ScanForHub()
  wait(10)
end
