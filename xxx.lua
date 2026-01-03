local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

WindUI.TransparencyValue = 0.2
WindUI:SetTheme("Dark")

local function gradient(text, startColor, endColor)
    local result = ""
    for i = 1, #text do
        local t = (i - 1) / (#text - 1)
        local r = math.floor((startColor.R + (endColor.R - startColor.R) * t) * 255)
        local g = math.floor((startColor.G + (endColor.G - startColor.G) * t) * 255)
        local b = math.floor((startColor.B + (endColor.B - startColor.B) * t) * 255)
        result = result .. string.format('<font color="rgb(%d,%d,%d)">%s</font>', r, g, b, text:sub(i, i))
    end
    return result
end

local Window = WindUI:CreateWindow({
    Title = "Aternos",
    Icon = "palette",
    Author = "By Love",
    Folder = "文件夹路径",
    Size = UDim2.fromOffset(700, 500),
    Theme = "Dark",
    User = {
        Enabled = true,
        Callback = function()
            WindUI:Notify({Title = "配置触发", Content = "用户配置回调已执行", Duration = 1.5})
        end
    },
    SideBarWidth = 220,
    ScrollBarEnabled = true
})

Window:Tag({
    Title = "1.0",
    Color = Color3.fromHex("#306aff")
})

local Tab = Window:Tab({
    Title = "公告",
    Icon = "app-window",
    Locked = false,
    OnCreate = function()
        WindUI:Notify({Title = "标签页加载", Content = "公告标签页创建完成", Duration = 1.5})
    end
})

Tab:Paragraph({
    Title = "复制QQ群号",
    Image = "nil",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("873920318")
                WindUI:Notify({
                    Title = "已复制！",
                    Content = "已复制到剪贴板",
                    Duration = 2
                })
            end
        }
    }
})

local Tab = Window:Tab({
    Title = "公告",
    Icon = "app-window",
    Locked = false,
    OnCreate = function()
        WindUI:Notify({Title = "标签页加载", Content = "公告标签页创建完成", Duration = 1.5})
    end
})

Tab:Paragraph({
    Title = "复制作者QQ号",
    Image = "nil",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("3552415099")
                WindUI:Notify({
                    Title = "已复制！",
                    Content = "已复制到剪贴板",
                    Duration = 2
                })
            end
        }
    }
})

local Section = Tab:Section({ 
    Title = "此为缝合脚本 新手制作",
    TextXAlignment = "Left",
    TextSize = 17
})
 
local Tab = Window:Tab({
    Title = "通用功能",
    Icon = "bird",
    Locked = false,
})

local Button = Tab:Button({
    Title = "Dex汉化",
    Locked = false,
    Callback = function()
       loadstring(game:HttpGet("https://gitee.com/cmbhbh/cmbh/raw/master/Bex.lua"))()
    end
})

local Button = Tab:Button({
    Title = "飞行",
    locked = false,
    Callback = function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\70\118\67\80\52\118\72\72\34\41\41\40\41")()
    end
})

local Button = Tab:Button({
     Title = "穿墙",
     Locked = false,
     Callback = function()
     
     end
})

local Tab = Window:Tab({
    Title = "脚本区",
    iron = "bird",
    locked = false,
})    
    
local Button = Tab:Button({
    Title = "迪脚本",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://api.junkie-development.de/api/v1/luascripts/public/54464412341ef904e10fb8d7ea70e047969d47b06a488cac60fbf8484ff70b83/download"))()
    end
})                          
    
local Button = Tab:Button({
    Title = "XK HUB",
    Locked = false,
    Callback = function()
       loadstring(game:HttpGet(('https://github.com/devslopo/DVES/raw/main/XK%20Hub')))()
    end
})

local Button = Tab:Button({
    Title = "vm 脚本",
    Locked = false,
    Callback = function()
       loadstring(game:HttpGet(('https://raw.githubusercontent.com/chano-oss/d/refs/heads/main/obfwni7iq3q.lua')))()       
    end
})