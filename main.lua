local _0x1a = {
    "\99\111\114\101\103\117\105",
    "\112\108\97\121\101\114\115",
    "\117\115\101\114\105\110\112\117\116\115\101\114\118\105\99\101",
    "\116\119\101\101\110\115\101\114\118\105\99\101"
}
local _0x2b = (getgenv or getfenv)()
local _0x3c = "\108\111\97\100\115\116\114\105\110\103"
local _0x4d = [[
local _0x5e = game:GetService("CoreGui")
local _0x6f = game:GetService("Players")
local _0x7a = game:GetService("UserInputService")
local _0x8b = game:GetService("TweenService")
local _0x9c = _0x6f.LocalPlayer
if _0x5e:FindFirstChild("\73\65\76\105\98\114\97\114\121\95\67\111\109\112\97\99\116") then
    _0x5e.IALibrary_Compact:Destroy()
end
local _0xad = Instance.new("ScreenGui")
_0xad.Name = "IALibrary_Compact"
_0xad.ResetOnSpawn = false
_0xad.Parent = _0x5e
local function _0xbe(_0xcf)
    local _0xd0 = Instance.new("Frame", _0xad)
    _0xd0.Size = UDim2.new(0, 0, 0, 0)
    _0xd0.Position = UDim2.new(0.5, 0, 0.5, 0)
    _0xd0.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
    _0xd0.BorderSizePixel = 0
    _0xd0.ClipsDescendants = true
    Instance.new("UICorner", _0xd0).CornerRadius = UDim.new(0, 10)
    local _0xe1 = Instance.new("UIStroke", _0xd0)
    _0xe1.Thickness = 2
    _0xe1.Color = Color3.fromRGB(59, 130, 246)
    local _0xf2 = Instance.new("TextLabel", _0xd0)
    _0xf2.Size = UDim2.new(1, 0, 0, 20)
    _0xf2.Position = UDim2.new(0, 0, 0, 18)
    _0xf2.BackgroundTransparency = 1
    _0xf2.Font = Enum.Font.GothamMedium
    _0xf2.Text = "\67\97\114\103\97\110\100\111\46\46\46"
    _0xf2.TextColor3 = Color3.fromRGB(148, 163, 184)
    _0xf2.TextSize = 11
    _0xf2.TextTransparency = 1
    local _0x103 = Instance.new("TextLabel", _0xd0)
    _0x103.Size = UDim2.new(1, 0, 0, 26)
    _0x103.Position = UDim2.new(0, 0, 0, 38)
    _0x103.BackgroundTransparency = 1
    _0x103.Font = Enum.Font.GothamBold
    _0x103.Text = "\73\65\32\76\105\98\114\97\114\121"
    _0x103.TextColor3 = Color3.fromRGB(248, 250, 252)
    _0x103.TextSize = 16
    _0x103.TextTransparency = 1
    local _0x114 = _0x8b:Create(_0xd0, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 180, 0, 80),
        Position = UDim2.new(0.5, -90, 0.5, -40)
    })
    _0x114:Play()
    _0x114.Completed:Wait()
    _0x8b:Create(_0xf2, TweenInfo.new(0.2), {TextTransparency = 0}):Play()
    _0x8b:Create(_0x103, TweenInfo.new(0.2), {TextTransparency = 0}):Play()
    task.wait(1.4)
    local _0x125 = _0x8b:Create(_0xd0, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        Size = UDim2.new(0, 0, 0, 0),
        Position = UDim2.new(0.5, 0, 0.5, 0)
    })
    _0x125:Play()
    _0x125.Completed:Wait()
    _0xd0:Destroy()
    if _0xcf then _0xcf() end
end
local function _0x136(_0x147)
    local _0x158 = Instance.new("Frame", _0xad)
    _0x158.Size = UDim2.new(0, 260, 0, 145)
    _0x158.Position = UDim2.new(0.5, -130, 0.5, -72)
    _0x158.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
    _0x158.BorderSizePixel = 0
    _0x158.ClipsDescendants = true
    _0x158.Size = UDim2.new(0, 0, 0, 0)
    _0x158.Position = UDim2.new(0.5, 0, 0.5, 0)
    _0x8b:Create(_0x158, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 260, 0, 145),
        Position = UDim2.new(0.5, -130, 0.5, -72)
    }):Play()
    Instance.new("UICorner", _0x158).CornerRadius = UDim.new(0, 8)
    local _0x169 = Instance.new("UIStroke", _0x158)
    _0x169.Thickness = 1.5
    task.spawn(function()
        local _0x17a = 0
        while _0x158.Parent do
            _0x17a = (_0x17a + 1) % 360
            _0x169.Color = Color3.fromHSV(_0x17a / 360, 1, 1)
            task.wait(0.04)
        end
    end)
    local _0x18b = Instance.new("TextLabel", _0x158)
    _0x18b.Size = UDim2.new(1, 0, 0, 30)
    _0x18b.BackgroundTransparency = 1
    _0x18b.Font = Enum.Font.GothamBold
    _0x18b.Text = "\73\65\32\76\105\98\114\97\114\121\32\82\101\103\105\115\116\114\121"
    _0x18b.TextColor3 = Color3.fromRGB(248, 250, 252)
    _0x18b.TextSize = 11
    local _0x19c = Instance.new("TextBox", _0x158)
    _0x19c.Size = UDim2.new(1, -24, 0, 28)
    _0x19c.Position = UDim2.new(0, 12, 0, 42)
    _0x19c.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
    _0x19c.Font = Enum.Font.Gotham
    _0x19c.PlaceholderText = "\73\110\103\114\101\115\97\32\99\108\97\118\101\46\46\46"
    _0x19c.Text = ""
    _0x19c.TextColor3 = Color3.fromRGB(255, 255, 255)
    _0x19c.TextSize = 10
    Instance.new("UICorner", _0x19c).CornerRadius = UDim.new(0, 5)
    Instance.new("UIStroke", _0x19c).Color = Color3.fromRGB(51, 65, 85)
    local _0x1ad = Instance.new("TextButton", _0x158)
    _0x1ad.Size = UDim2.new(1, -24, 0, 28)
    _0x1ad.Position = UDim2.new(0, 12, 0, 80)
    _0x1ad.BackgroundColor3 = Color3.fromRGB(59, 130, 246)
    _0x1ad.Font = Enum.Font.GothamBold
    _0x1ad.Text = "\86\101\114\105\102\105\99\97\114"
    _0x1ad.TextColor3 = Color3.fromRGB(255, 255, 255)
    _0x1ad.TextSize = 10
    Instance.new("UICorner", _0x1ad).CornerRadius = UDim.new(0, 5)
    _0x1ad.MouseButton1Click:Connect(function()
        if _0x19c.Text == "1234" then
            local _0x1be = _0x8b:Create(_0x158, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                Size = UDim2.new(0, 0, 0, 0),
                Position = UDim2.new(0.5, 0, 0.5, 0)
            })
            _0x1be:Play()
            _0x1be.Completed:Wait()
            _0x158:Destroy()
            _0x147()
        else
            _0x19c.Text = ""
            _0x19c.PlaceholderText = "\161\67\108\97\118\101\32\105\110\99\111\114\114\101\99\116\97\33"
        end
    end)
end
local function _0x1cf()
    local _0x1e0 = Instance.new("Frame", _0xad)
    _0x1e0.Size = UDim2.new(0, 380, 0, 240)
    _0x1e0.Position = UDim2.new(0.5, -190, 0.5, -120)
    _0x1e0.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
    _0x1e0.BorderSizePixel = 0
    _0x1e0.ClipsDescendants = true
    _0x1e0.Size = UDim2.new(0, 0, 0, 0)
    _0x1e0.Position = UDim2.new(0.5, 0, 0.5, 0)
    _0x8b:Create(_0x1e0, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 380, 0, 240),
        Position = UDim2.new(0.5, -190, 0.5, -120)
    }):Play()
    Instance.new("UICorner", _0x1e0).CornerRadius = UDim.new(0, 8)
    local _0x1f1 = Instance.new("UIStroke", _0x1e0)
    _0x1f1.Thickness = 1.5
    task.spawn(function()
        local _0x202 = 0
        while _0x1e0.Parent do
            _0x202 = (_0x202 + 1) % 360
            _0x1f1.Color = Color3.fromHSV(_0x202 / 360, 1, 1)
            task.wait(0.04)
        end
    end)
    local _0x213 = Instance.new("Frame", _0x1e0)
    _0x213.Size = UDim2.new(1, 0, 0, 28)
    _0x213.BackgroundTransparency = 1
    local _0x224 = Instance.new("TextLabel", _0x213)
    _0x224.Size = UDim2.new(1, -70, 1, 0)
    _0x224.Position = UDim2.new(0, 10, 0, 0)
    _0x224.BackgroundTransparency = 1
    _0x224.Font = Enum.Font.GothamBold
    _0x224.Text = "\73\65\32\76\105\98\114\97\114\121"
    _0x224.TextColor3 = Color3.fromRGB(248, 250, 252)
    _0x224.TextSize = 11
    _0x224.TextXAlignment = Enum.TextXAlignment.Left
    local _0x235 = Instance.new("TextButton", _0x213)
    _0x235.Size = UDim2.new(0, 18, 0, 18)
    _0x235.Position = UDim2.new(1, -24, 0.5, -9)
    _0x235.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
    _0x235.Text = "\215"
    _0x235.TextColor3 = Color3.fromRGB(255, 255, 255)
    _0x235.TextSize = 9
    Instance.new("UICorner", _0x235).CornerRadius = UDim.new(1, 0)
    _0x235.MouseButton1Click:Connect(function()
        local _0x246 = _0x8b:Create(_0x1e0, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
            Size = UDim2.new(0, 0, 0, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0)
        })
        _0x246:Play()
        _0x246.Completed:Wait()
        _0xad:Destroy()
    end)
end
_0xbe(function()
    _0x136(_0x1cf)
end)
]]
pcall(function()
    (_0x2b[_0x3c] or load)(_0x4d)()
end)
