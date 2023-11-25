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

sendCoreMsg("DeathCat", "you run DeathCat", "yipeeee", 20) -- Script startup msg ???
