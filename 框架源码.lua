local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "搬运脚本中心"; Text ="欢迎使用"; Duration = 2; })
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "搬运脚本中心中心"; Text ="作者：搬运工"; Duration = 4; })
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "搬运脚本中心中心"; Text ="快来找你要用的脚本吧"; Duration = 6; })

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/djdu894/ui/refs/heads/main/ui.lua"))();  
local win = ui:new("搬运脚本中心")

local UITab1 = win:Tab("来找吧",'4483345998')

local about = UITab1:section("通用",true)
about:Button("通用",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gufan969/General-Purpose/refs/heads/main/%E9%80%9A%E7%94%A8%E6%BA%90%E7%A0%81.lua))()
end)

local about = UITab1:section("木材大亨",true)
about:Button("通用",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gufan969/General-Purpose/refs/heads/main/%E9%80%9A%E7%94%A8%E6%BA%90%E7%A0%81.lua))()
end)