local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/atoyayaya/REDz-ui/refs/heads/main/REDzGui"))()

local Window = redzlib:MakeWindow({
  Title = "安脚本卡密系统",
  SaveFolder = "Redz Config"
})

print("反挂机已开启")
Start = tick()
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)

Window:AddMinimizeButton({
  Button = { Image = redzlib:GetIcon("close"), BackgroundTransparency = 0,Size = UDim2.fromOffset(60, 60), },
  Corner = { CornerRadius = UDim.new(0, 10) }
})

local Tab = Window:MakeTab({"卡密", "cool"})

local id = game.Players.LocalPlayer.UserId

local kam = ""

local ctc = "暂无返回结果"

local onyes = "卡密正确，正在为你执行脚本…"

local offno = "卡密错误！请输入正确卡密！"

Tab:AddTextBox({
    Title = "请输入卡密:",
    PlaceholderText = "请输入",
    ClearText = false,
    Callback = function(Value)
    kam = Value
end
})

Tab:AddButton({"检测卡密", function()
if id == 4106234624 then
    if kam == "ato_1" then
        ctc = (""..onyes)
    else
        ctc = (""..offno)  
    end
elseif id == 4825610036 then
    if kam == "293629393" then
        ctc = (""..onyes)
    else
        ctc = (""..offno)  
    end
elseif id == 3823054988 then
    if kam == "29371820" then
        ctc =  (""..onyes)
    else
        ctc = (""..offno)  
    end    
elseif id == 5469836478 then
    if kam == "29372937" then
        ctc =  (""..onyes)
    else
        ctc = (""..offno)  
    end        
else
ctc = "别想了老弟，白名单没有你的名字，你就算卡密对了也用不了"       
end
if ctc == (""..onyes) then
loadstring(game:HttpGet(('https://raw.githubusercontent.com/qosnysoskdhuaiskshaysi/script/refs/heads/main/%E5%8A%A0%E5%AF%86%E6%A3%80%E6%B5%8B%E7%BE%A4%E7%BB%84.lua')))()
end
end})

local fanhui = Tab:AddSection("返回结果:")
spawn(function()
while wait() do
pcall(function()
fanhui:Set("返回结果:"..ctc)
end)
end
end)

local Tab = Window:MakeTab({"购买白名单", "cool"})

Tab:AddSection("白名单30块钱")

Tab:AddDiscordInvite({
    Title = "买脚本白名单加作者qq",
    Logo = "rbxassetid://125659062095965",
    Invite = "2134702438"
})    

local Tab = Window:MakeTab({"活动", "cool"})

local Section = Tab:AddSection("当前活动：")

local Section = Tab:AddSection("活动1：前50个人买白名单只需20块钱")

local Section = Tab:AddSection("活动2：前30个人买白名单，抽一人送力量传奇18980")

local Section = Tab:AddSection("后续会更新更多活动，一直买就一直更新！")
