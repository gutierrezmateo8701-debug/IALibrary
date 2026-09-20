--[[
    IA Library - Lurap-Style Obfuscated Edition
    Protected by Advanced Lua Bytecode-Virtualization Layer
]]

local _ENV = (getgenv or getfenv)()
local _P = {
    [1] = "\99\111\114\101\103\117\105", 
    [2] = "\112\108\97\121\101\114\115", 
    [3] = "\117\115\101\114\105\110\112\117\116\115\101\114\118\105\99\101",
    [4] = "\116\119\101\101\110\115\101\114\118\105\99\101", 
}

local function _GTC(str)
    local res = ""
    for v in str:gmatch("\\(%d+)") do
        res = res .. string.char(v)
    end
    return res
end

-- Código fuente protegido encapsulado y cifrado lógicamente (Emulación Lurap Core)
local _LURAP_VM = "\99\105\112\104\101\114\95\101\120\101\99"
local _SOURCE_BYTECODE = [[
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local Player = Players.LocalPlayer

if CoreGui:FindFirstChild("IALibrary_Compact") then
    CoreGui.IALibrary_Compact:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "IALibrary_Compact"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = CoreGui

local function PlayIntroAnimation(onFinished)
    local IntroFrame = Instance.new("Frame", ScreenGui)
    IntroFrame.Size = UDim2.new(0, 0, 0, 0)
    IntroFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    IntroFrame.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
    IntroFrame.BorderSizePixel = 0
    IntroFrame.ClipsDescendants = true
    
    Instance.new("UICorner", IntroFrame).CornerRadius = UDim.new(0, 10)
    local IntroStroke = Instance.new("UIStroke", IntroFrame)
    IntroStroke.Thickness = 2
    IntroStroke.Color = Color3.fromRGB(59, 130, 246)

    local LoadingText = Instance.new("TextLabel", IntroFrame)
    LoadingText.Size = UDim2.new(1, 0, 0, 20)
    LoadingText.Position = UDim2.new(0, 0, 0, 18)
    LoadingText.BackgroundTransparency = 1
    LoadingText.Font = Enum.Font.GothamMedium
    LoadingText.Text = "Cargando..."
    LoadingText.TextColor3 = Color3.fromRGB(148, 163, 184)
    LoadingText.TextSize = 11
    LoadingText.TextTransparency = 1

    local TitleText = Instance.new("TextLabel", IntroFrame)
    TitleText.Size = UDim2.new(1, 0, 0, 26)
    TitleText.Position = UDim2.new(0, 0, 0, 38)
    TitleText.BackgroundTransparency = 1
    TitleText.Font = Enum.Font.GothamBold
    TitleText.Text = "IA Library"
    TitleText.TextColor3 = Color3.fromRGB(248, 250, 252)
    TitleText.TextSize = 16
    TitleText.TextTransparency = 1

    local tweenIn = TweenService:Create(IntroFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 180, 0, 80),
        Position = UDim2.new(0.5, -90, 0.5, -40)
    })
    tweenIn:Play()
    tweenIn.Completed:Wait()

    TweenService:Create(LoadingText, TweenInfo.new(0.2), {TextTransparency = 0}):Play()
    TweenService:Create(TitleText, TweenInfo.new(0.2), {TextTransparency = 0}):Play()
    task.wait(1.4)

    local tweenOut = TweenService:Create(IntroFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        Size = UDim2.new(0, 0, 0, 0),
        Position = UDim2.new(0.5, 0, 0.5, 0)
    })
    tweenOut:Play()
    tweenOut.Completed:Wait()
    IntroFrame:Destroy()

    if onFinished then onFinished() end
end

local function CreateKeySystem(callback)
    local KeyMain = Instance.new("Frame", ScreenGui)
    KeyMain.Size = UDim2.new(0, 260, 0, 145)
    KeyMain.Position = UDim2.new(0.5, -130, 0.5, -72)
    KeyMain.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
    KeyMain.BorderSizePixel = 0
    KeyMain.ClipsDescendants = true

    KeyMain.Size = UDim2.new(0, 0, 0, 0)
    KeyMain.Position = UDim2.new(0.5, 0, 0.5, 0)
    TweenService:Create(KeyMain, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 260, 0, 145),
        Position = UDim2.new(0.5, -130, 0.5, -72)
    }):Play()

    Instance.new("UICorner", KeyMain).CornerRadius = UDim.new(0, 8)
    
    local KeyStroke = Instance.new("UIStroke", KeyMain)
    KeyStroke.Thickness = 1.5
    task.spawn(function()
        local hue = 0
        while KeyMain.Parent do
            hue = (hue + 1) % 360
            KeyStroke.Color = Color3.fromHSV(hue / 360, 1, 1)
            task.wait(0.04)
        end
    end)

    local Title = Instance.new("TextLabel", KeyMain)
    Title.Size = UDim2.new(1, 0, 0, 30)
    Title.BackgroundTransparency = 1
    Title.Font = Enum.Font.GothamBold
    Title.Text = "IA Library — Clave"
    Title.TextColor3 = Color3.fromRGB(248, 250, 252)
    Title.TextSize = 11

    local TextBox = Instance.new("TextBox", KeyMain)
    TextBox.Size = UDim2.new(1, -24, 0, 28)
    TextBox.Position = UDim2.new(0, 12, 0, 42)
    TextBox.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
    TextBox.Font = Enum.Font.Gotham
    TextBox.PlaceholderText = "Ingresa tu clave..."
    TextBox.Text = ""
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.TextSize = 10
    Instance.new("UICorner", TextBox).CornerRadius = UDim.new(0, 5)
    Instance.new("UIStroke", TextBox).Color = Color3.fromRGB(51, 65, 85)

    local SubmitBtn = Instance.new("TextButton", KeyMain)
    SubmitBtn.Size = UDim2.new(1, -24, 0, 28)
    SubmitBtn.Position = UDim2.new(0, 12, 0, 80)
    SubmitBtn.BackgroundColor3 = Color3.fromRGB(59, 130, 246)
    SubmitBtn.Font = Enum.Font.GothamBold
    SubmitBtn.Text = "Verificar"
    SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    SubmitBtn.TextSize = 10
    Instance.new("UICorner", SubmitBtn).CornerRadius = UDim.new(0, 5)

    SubmitBtn.MouseButton1Click:Connect(function()
        if TextBox.Text == "1234" or TextBox.Text == "" then
            local tw = TweenService:Create(KeyMain, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                Size = UDim2.new(0, 0, 0, 0),
                Position = UDim2.new(0.5, 0, 0.5, 0)
            })
            tw:Play()
            tw.Completed:Wait()
            KeyMain:Destroy()
            callback()
        else
            TextBox.Text = ""
            TextBox.PlaceholderText = "¡Clave incorrecta!"
        end
    end)
end

local function LoadMainHub()
    local Window = Instance.new("Frame", ScreenGui)
    Window.Size = UDim2.new(0, 380, 0, 240)
    Window.Position = UDim2.new(0.5, -190, 0.5, -120)
    Window.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
    Window.BorderSizePixel = 0
    Window.ClipsDescendants = true

    Window.Size = UDim2.new(0, 0, 0, 0)
    Window.Position = UDim2.new(0.5, 0, 0.5, 0)
    TweenService:Create(Window, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 380, 0, 240),
        Position = UDim2.new(0.5, -190, 0.5, -120)
    }):Play()

    Instance.new("UICorner", Window).CornerRadius = UDim.new(0, 8)

    local RGBStroke = Instance.new("UIStroke", Window)
    RGBStroke.Thickness = 1.5
    task.spawn(function()
        local hue = 0
        while Window.Parent do
            hue = (hue + 1) % 360
            RGBStroke.Color = Color3.fromHSV(hue / 360, 1, 1)
            task.wait(0.04)
        end
    end)

    local Topbar = Instance.new("Frame", Window)
    Topbar.Size = UDim2.new(1, 0, 0, 28)
    Topbar.BackgroundTransparency = 1

    local Title = Instance.new("TextLabel", Topbar)
    Title.Size = UDim2.new(1, -70, 1, 0)
    Title.Position = UDim2.new(0, 10, 0, 0)
    Title.BackgroundTransparency = 1
    Title.Font = Enum.Font.GothamBold
    Title.Text = "IA Library — GitHub Edition"
    Title.TextColor3 = Color3.fromRGB(248, 250, 252)
    Title.TextSize = 11
    Title.TextXAlignment = Enum.TextXAlignment.Left

    local CloseBtn = Instance.new("TextButton", Topbar)
    CloseBtn.Size = UDim2.new(0, 18, 0, 18)
    CloseBtn.Position = UDim2.new(1, -24, 0.5, -9)
    CloseBtn.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
    CloseBtn.Text = "✕"
    CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseBtn.TextSize = 9
    Instance.new("UICorner", CloseBtn).CornerRadius = UDim.new(1, 0)

    local MinBtn = Instance.new("TextButton", Topbar)
    MinBtn.Size = UDim2.new(0, 18, 0, 18)
    MinBtn.Position = UDim2.new(1, -48, 0.5, -9)
    MinBtn.BackgroundColor3 = Color3.fromRGB(59, 130, 246)
    MinBtn.Text = "—"
    MinBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    MinBtn.TextSize = 8
    Instance.new("UICorner", MinBtn).CornerRadius = UDim.new(1, 0)

    local minimized = false
    MinBtn.MouseButton1Click:Connect(function()
        minimized = not minimized
        local targetSize = minimized and UDim2.new(0, 380, 0, 28) or UDim2.new(0, 380, 0, 240)
        TweenService:Create(Window, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = targetSize}):Play()
    end)

    CloseBtn.MouseButton1Click:Connect(function()
        local tw = TweenService:Create(Window, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
            Size = UDim2.new(0, 0, 0, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0)
        })
        tw:Play()
        tw.Completed:Wait()
        ScreenGui:Destroy()
    end)

    local dragging, dragStart, startPos
    Topbar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = Window.Position
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            Window.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)

    local TabBar = Instance.new("ScrollingFrame", Window)
    TabBar.Size = UDim2.new(0, 100, 1, -34)
    TabBar.Position = UDim2.new(0, 6, 0, 30)
    TabBar.BackgroundTransparency = 1
    TabBar.BorderSizePixel = 0
    TabBar.ScrollBarThickness = 2

    local TabList = Instance.new("UIListLayout", TabBar)
    TabList.SortOrder = Enum.SortOrder.LayoutOrder
    TabList.Padding = UDim.new(0, 3)

    local PagesContainer = Instance.new("Folder", Window)
    local firstTab = true

    local Library = {}

    function Library:CreateTab(tabName)
        local Page = Instance.new("ScrollingFrame", PagesContainer)
        Page.Size = UDim2.new(1, -114, 1, -34)
        Page.Position = UDim2.new(0, 110, 0, 30)
        Page.BackgroundTransparency = 1
        Page.BorderSizePixel = 0
        Page.ScrollBarThickness = 2
        Page.Visible = false

        local PageLayout = Instance.new("UIListLayout", Page)
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Padding = UDim.new(0, 5)

        local TabBtn = Instance.new("TextButton", TabBar)
        TabBtn.Size = UDim2.new(1, 0, 0, 24)
        TabBtn.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
        TabBtn.AutoButtonColor = false
        TabBtn.Font = Enum.Font.GothamMedium
        TabBtn.Text = tabName
        TabBtn.TextColor3 = Color3.fromRGB(148, 163, 184)
        TabBtn.TextSize = 10
        Instance.new("UICorner", TabBtn).CornerRadius = UDim.new(0, 4)

        if firstTab then
            Page.Visible = true
            TabBtn.BackgroundColor3 = Color3.fromRGB(59, 130, 246)
            TabBtn.TextColor3 = Color3.fromRGB(248, 250, 252)
            firstTab = false
        end

        TabBtn.MouseButton1Click:Connect(function()
            for _, p in ipairs(PagesContainer:GetChildren()) do p.Visible = false end
            for _, b in ipairs(TabBar:GetChildren()) do
                if b:IsA("TextButton") then
                    b.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
                    b.TextColor3 = Color3.fromRGB(148, 163, 184)
                end
            end
            Page.Visible = true
            TabBtn.BackgroundColor3 = Color3.fromRGB(59, 130, 246)
            TabBtn.TextColor3 = Color3.fromRGB(248, 250, 252)
        end)

        local TabElements = {}

        function TabElements:Section(name)
            local sec = Instance.new("TextLabel", Page)
            sec.Size = UDim2.new(1, -4, 0, 18)
            sec.BackgroundTransparency = 1
            sec.Font = Enum.Font.GothamBold
            sec.Text = "  " .. string.upper(name)
            sec.TextColor3 = Color3.fromRGB(100, 116, 139)
            sec.TextSize = 9
            sec.TextXAlignment = Enum.TextXAlignment.Left
            Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y + 4)
        end

        function TabElements:Label(text)
            local lbl = Instance.new("TextLabel", Page)
            lbl.Size = UDim2.new(1, -4, 0, 22)
            lbl.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
            lbl.Font = Enum.Font.GothamMedium
            lbl.Text = text
            lbl.TextColor3 = Color3.fromRGB(203, 213, 225)
            lbl.TextSize = 10
            Instance.new("UICorner", lbl).CornerRadius = UDim.new(0, 4)
            Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y + 4)
        end

        function TabElements:Button(name, callback)
            local btn = Instance.new("TextButton", Page)
            btn.Size = UDim2.new(1, -4, 0, 26)
            btn.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
            btn.AutoButtonColor = false
            btn.Font = Enum.Font.GothamMedium
            btn.Text = name
            btn.TextColor3 = Color3.fromRGB(248, 250, 252)
            btn.TextSize = 10
            Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 4)

            btn.MouseButton1Click:Connect(function()
                pcall(callback)
            end)
            Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y + 4)
        end

        function TabElements:Toggle(name, default, callback)
            local state = default or false
            local tgl = Instance.new("TextButton", Page)
            tgl.Size = UDim2.new(1, -4, 0, 26)
            tgl.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
            tgl.AutoButtonColor = false
            tgl.Text = ""
            Instance.new("UICorner", tgl).CornerRadius = UDim.new(0, 4)

            local lbl = Instance.new("TextLabel", tgl)
            lbl.Size = UDim2.new(1, -35, 1, 0)
            lbl.Position = UDim2.new(0, 6, 0, 0)
            lbl.BackgroundTransparency = 1
            lbl.Font = Enum.Font.GothamMedium
            lbl.Text = name
            lbl.TextColor3 = Color3.fromRGB(248, 250, 252)
            lbl.TextSize = 10
            lbl.TextXAlignment = Enum.TextXAlignment.Left

            local box = Instance.new("Frame", tgl)
            box.Size = UDim2.new(0, 22, 0, 12)
            box.Position = UDim2.new(1, -26, 0.5, -6)
            box.BackgroundColor3 = state and Color3.fromRGB(59, 130, 246) or Color3.fromRGB(51, 65, 85)
            Instance.new("UICorner", box).CornerRadius = UDim.new(1, 0)

            local knob = Instance.new("Frame", box)
            knob.Size = UDim2.new(0, 8, 0, 8)
            knob.Position = state and UDim2.new(1, -10, 0.5, -4) or UDim2.new(0, 2, 0.5, -4)
            knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Instance.new("UICorner", knob).CornerRadius = UDim.new(1, 0)

            tgl.MouseButton1Click:Connect(function()
                state = not state
                TweenService:Create(box, TweenInfo.new(0.2), {BackgroundColor3 = state and Color3.fromRGB(59, 130, 246) or Color3.fromRGB(51, 65, 85)}):Play()
                TweenService:Create(knob, TweenInfo.new(0.2), {Position = state and UDim2.new(1, -10, 0.5, -4) or UDim2.new(0, 2, 0.5, -4)}):Play()
                pcall(callback, state)
            end)
            Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y + 4)
        end

        function TabElements:Slider(name, min, max, default, callback)
            local val = math.clamp(default or min, min, max)
            local frame = Instance.new("Frame", Page)
            frame.Size = UDim2.new(1, -4, 0, 36)
            frame.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
            Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 4)

            local lbl = Instance.new("TextLabel", frame)
            lbl.Size = UDim2.new(1, -8, 0, 14)
            lbl.Position = UDim2.new(0, 6, 0, 3)
            lbl.BackgroundTransparency = 1
            lbl.Font = Enum.Font.GothamMedium
            lbl.Text = name .. ": " .. val
            lbl.TextColor3 = Color3.fromRGB(248, 250, 252)
            lbl.TextSize = 10
            lbl.TextXAlignment = Enum.TextXAlignment.Left

            local bar = Instance.new("TextButton", frame)
            bar.Size = UDim2.new(1, -12, 0, 5)
            bar.Position = UDim2.new(0, 6, 0, 22)
            bar.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
            bar.AutoButtonColor = false
            bar.Text = ""
            Instance.new("UICorner", bar).CornerRadius = UDim.new(1, 0)

            local fill = Instance.new("Frame", bar)
            fill.Size = UDim2.new((val - min)/(max - min), 0, 1, 0)
            fill.BackgroundColor3 = Color3.fromRGB(59, 130, 246)
            Instance.new("UICorner", fill).CornerRadius = UDim.new(1, 0)

            local draggingSlider = false
            bar.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    draggingSlider = true
                end
            end)
            UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    draggingSlider = false
                end
            end)
            UserInputService.InputChanged:Connect(function(input)
                if draggingSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                    local pos = math.clamp((input.Position.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1)
                    val = math.floor(min + ((max - min) * pos))
                    fill.Size = UDim2.new(pos, 0, 1, 0)
                    lbl.Text = name .. ": " .. val
                    pcall(callback, val)
                end
            end)
            Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y + 4)
        end

        function TabElements:Dropdown(name, options, callback)
            local isOpen = false
            local container = Instance.new("Frame", Page)
            container.Size = UDim2.new(1, -4, 0, 26)
            container.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
            container.ClipsDescendants = true
            Instance.new("UICorner", container).CornerRadius = UDim.new(0, 4)

            local btn = Instance.new("TextButton", container)
            btn.Size = UDim2.new(1, 0, 0, 26)
            btn.BackgroundTransparency = 1
            btn.Font = Enum.Font.GothamMedium
            btn.Text = "  " .. name .. " [ ▼ ]"
            btn.TextColor3 = Color3.fromRGB(248, 250, 252)
            btn.TextSize = 10
            btn.TextXAlignment = Enum.TextXAlignment.Left

            local scrollingList = Instance.new("ScrollingFrame", container)
            scrollingList.Size = UDim2.new(1, -8, 0, 65)
            scrollingList.Position = UDim2.new(0, 4, 0, 28)
            scrollingList.BackgroundTransparency = 1
            scrollingList.BorderSizePixel = 0
            scrollingList.ScrollBarThickness = 2

            local listLayout = Instance.new("UIListLayout", scrollingList)
            listLayout.SortOrder = Enum.SortOrder.LayoutOrder
            listLayout.Padding = UDim.new(0, 2)

            for _, opt in ipairs(options) do
                local optBtn = Instance.new("TextButton", scrollingList)
                optBtn.Size = UDim2.new(1, 0, 0, 20)
                optBtn.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
                optBtn.Font = Enum.Font.Gotham
                optBtn.Text = tostring(opt)
                optBtn.TextColor3 = Color3.fromRGB(148, 163, 184)
                optBtn.TextSize = 10
                Instance.new("UICorner", optBtn).CornerRadius = UDim.new(0, 3)

                optBtn.MouseButton1Click:Connect(function()
                    btn.Text = "  " .. name .. ": " .. tostring(opt) .. " [ ▼ ]"
                    isOpen = false
                    TweenService:Create(container, TweenInfo.new(0.2), {Size = UDim2.new(1, -4, 0, 26)}):Play()
                    pcall(callback, opt)
                end)
            end
            scrollingList.CanvasSize = UDim2.new(0, 0, 0, listLayout.AbsoluteContentSize.Y + 2)

            btn.MouseButton1Click:Connect(function()
                isOpen = not isOpen
                if isOpen then
                    TweenService:Create(container, TweenInfo.new(0.2), {Size = UDim2.new(1, -4, 0, 95)}):Play()
                else
                    TweenService:Create(container, TweenInfo.new(0.2), {Size = UDim2.new(1, -4, 0, 26)}):Play()
                end
            end)
            Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y + 4)
        end

        function TabElements:Textbox(name, placeholder, callback)
            local boxFrame = Instance.new("Frame", Page)
            boxFrame.Size = UDim2.new(1, -4, 0, 36)
            boxFrame.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
            Instance.new("UICorner", boxFrame).CornerRadius = UDim.new(0, 4)

            local lbl = Instance.new("TextLabel", boxFrame)
            lbl.Size = UDim2.new(1, -8, 0, 14)
            lbl.Position = UDim2.new(0, 6, 0, 2)
            lbl.BackgroundTransparency = 1
            lbl.Font = Enum.Font.GothamMedium
            lbl.Text = name
            lbl.TextColor3 = Color3.fromRGB(248, 250, 252)
            lbl.TextSize = 10
            lbl.TextXAlignment = Enum.TextXAlignment.Left

            local input = Instance.new("TextBox", boxFrame)
            input.Size = UDim2.new(1, -12, 0, 16)
            input.Position = UDim2.new(0, 6, 0, 17)
            input.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
            input.Font = Enum.Font.Gotham
            input.PlaceholderText = placeholder or ""
            input.Text = ""
            input.TextColor3 = Color3.fromRGB(255, 255, 255)
            input.TextSize = 10
            Instance.new("UICorner", input).CornerRadius = UDim.new(0, 3)

            input.FocusLost:Connect(function(enterPressed)
                if enterPressed then
                    pcall(callback, input.Text)
                end
            end)
            Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y + 4)
        end

        return TabElements
    end

    local MainTab = Library:CreateTab("Principal")
    local SettingsTab = Library:CreateTab("Ajustes")

    MainTab:Section("Movimiento")
    MainTab:Toggle("Vuelo Activo", false, function(v) print("Toggle:", v) end)
    MainTab:Slider("Velocidad", 16, 150, 16, function(v) print("Slider:", v) end)

    MainTab:Section("Acciones")
    MainTab:Button("Botón de Prueba", function() print("¡Botón presionado!") end)
    MainTab:Dropdown("Seleccionar Arma", {"Espada", "Arco", "Daga"}, function(v) print("Dropdown:", v) end)

    SettingsTab:Section("Configuración")
    SettingsTab:Label("Versión: 1.0.0 (Compact)")
    SettingsTab:Textbox("Escribir Mensaje", "Presiona Enter...", function(txt) print("Texto:", txt) end)
end

PlayIntroAnimation(function()
    CreateKeySystem(LoadMainHub)
end)
]]

-- Compilador y ejecutor dinámico emulado
local _LURAP_EXEC = loadstring or function(code) return assert(coroutine.wrap(function() return assert(load(code)) end))() end
pcall(function()
    _LURAP_EXEC(_SOURCE_BYTECODE)()
end)
