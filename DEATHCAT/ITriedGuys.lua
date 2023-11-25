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


local plr = plrs.LocalPlayer
local charold = plr.Character
local char = charold:Clone()
local cam = workspace.CurrentCamera

function charnotright()
  charold:MoveTo(Vector3.new(9999999,9999999,9999999))
  for i,v in pairs(charold:GetChildren()) do
    if v:IsA("Part") or v:IsA("MeshPart") then
			v.Anchored = true
		end
	end
	cam.CameraSubject
	
