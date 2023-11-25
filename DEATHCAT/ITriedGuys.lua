local StarterGui = game:GetService("StarterGui")

--local Msgresponse = nil

function sendCoreMsg(title, text, button1, duration) --button2, duration)
  --local bindable = Instance.new("BindableFunction")
  StarterGui:SetCore("SendNotification", {
  Title = title,
	Text = text,
	Duration = duration,
	--Callback = bindable,
	Button1 = button1,
	--Button2 = button2  
  })
  --[[function bindable.OnInvoke(response)
    Msgresponse = response
    print(response .. " chosen")
  end]]
end

SendCoreMsg("DeathCat", "you run DeathCat", "yipeeee", 20) -- Script startup msg ???

local RepStorage = game:GetService("ReplicatedStorage")
local plrs = game:GetService("Players")
local RunService = game:GetService("RunService")


local plr = plrs.LocalPlayer
local charold = plr.Character
local char = charold:Clone()
local hum = char.Humanoid
local cam = workspace.CurrentCamera

function charnotright()
  charold:MoveTo(Vector3.new(9999999,9999999,9999999))
  for i,v in pairs(charold:GetChildren()) do
    if v:IsA("Part") or v:IsA("MeshPart") then
			v.Anchored = true
		end
	end
	cam.CameraSubject = hum
end

local function updateBobbleEffect()
	local now = tick()
	if hum.MoveDirection.Magnitude > 0 then -- Is the character walking?
		local velocity = humanoid.RootPart.Velocity
		local bobble_X = math.cos(now * 9) / 5
		local bobble_Y = math.abs(math.sin(now * 12)) / 5

		local bobble = Vector3.new(bobble_X, bobble_Y, 0) * math.min(1, velocity.Magnitude / hum.WalkSpeed)
		hum.CameraOffset = humanoid.CameraOffset:lerp(bobble, 0.25)
	else
		-- Scale down the CameraOffset so that it shifts back to its regular position.
		hum.CameraOffset = humanoid.CameraOffset * 0.75
	end
end

charnotright()
RunService.RenderStepped:Connect(updateBobbleEffect)
