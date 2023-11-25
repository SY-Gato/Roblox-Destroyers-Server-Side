

local SPIN_REPETITIONS = 20
local SPIN_SPEED = 10

function Spin()
  for i = 0,SPIN_REPETITIONS do
    for _, v in pairs(workspace:GetDescendants()) do
      if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("Truss") or v:IsA("WedgePart") then
        if game.Players:GetPlayerFromCharacter(v.Parent) == nil then
          v.CFrame *= CFrame.Angles(0.2, 0.2, 0.2)
        end
      end
    end
  end
end
wait(10)
Spin()
