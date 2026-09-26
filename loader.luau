--[[
    Made by Shinitzuu @ashdahe
]]

local Players              = game:GetService("Players")
local TweenService         = game:GetService("TweenService")
local MarketplaceService   = game:GetService("MarketplaceService")
local CoreGui              = game:GetService("CoreGui")

local player    = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local placeId  = game.PlaceId
local gameInfo = MarketplaceService:GetProductInfo(placeId)
local GAME_NAME = gameInfo and gameInfo.Name or "Unknown Game"

local VALID_KEY = "AFXALPHA"
local DISCORD   = "https://discord.gg/afx-alphaforx"

-- ================================================
--             PASTE YOUR SOURCE HERE
-- ================================================
local function RunScript()
    -- paste here your source
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xyzhenrik/AFX/refs/heads/main/mlloader.luau", true))()
end
-- ================================================

-- ══════════════════════════════════════
--              INTRO SCREEN
-- ══════════════════════════════════════

local introGui = Instance.new("ScreenGui")
introGui.Name           = "AFX_Intro"
introGui.ResetOnSpawn   = false
introGui.IgnoreGuiInset = true
introGui.DisplayOrder   = 9999

local ok = pcall(function() introGui.Parent = CoreGui end)
if not ok then introGui.Parent = playerGui end

local bg = Instance.new("Frame")
bg.Size             = UDim2.fromScale(1, 1)
bg.BackgroundColor3 = Color3.fromRGB(18, 12, 32)
bg.BorderSizePixel  = 0
bg.ZIndex           = 100
bg.Parent           = introGui

local bgOverlay = Instance.new("Frame")
bgOverlay.Size                   = UDim2.fromScale(1, 1)
bgOverlay.BackgroundColor3       = Color3.fromRGB(80, 40, 140)
bgOverlay.BackgroundTransparency = 0.75
bgOverlay.BorderSizePixel        = 0
bgOverlay.ZIndex                 = 101
bgOverlay.Parent                 = bg

-- AFX SCRIPT title
local afxLabel = Instance.new("TextLabel")
afxLabel.Size                   = UDim2.new(1, 0, 0, 60)
afxLabel.Position               = UDim2.new(0, 0, 0.18, 0)
afxLabel.BackgroundTransparency = 1
afxLabel.Text                   = "AFX SCRIPT"
afxLabel.TextColor3             = Color3.fromRGB(190, 130, 255)
afxLabel.Font                   = Enum.Font.GothamBold
afxLabel.TextSize               = 36
afxLabel.TextXAlignment         = Enum.TextXAlignment.Center
afxLabel.ZIndex                 = 102
afxLabel.Parent                 = bg

local afxStroke = Instance.new("UIStroke")
afxStroke.Color     = Color3.fromRGB(100, 50, 180)
afxStroke.Thickness = 2
afxStroke.Parent    = afxLabel

-- WELCOME BACK
local welcomeLabel = Instance.new("TextLabel")
welcomeLabel.Size                   = UDim2.new(1, 0, 0, 24)
welcomeLabel.Position               = UDim2.new(0, 0, 0.37, 0)
welcomeLabel.BackgroundTransparency = 1
welcomeLabel.Text                   = "WELCOME BACK"
welcomeLabel.TextColor3             = Color3.fromRGB(160, 110, 230)
welcomeLabel.Font                   = Enum.Font.GothamBold
welcomeLabel.TextSize               = 14
welcomeLabel.TextXAlignment         = Enum.TextXAlignment.Center
welcomeLabel.ZIndex                 = 102
welcomeLabel.Parent                 = bg

-- Username
local usernameLabel = Instance.new("TextLabel")
usernameLabel.Size                   = UDim2.new(1, 0, 0, 40)
usernameLabel.Position               = UDim2.new(0, 0, 0.43, 0)
usernameLabel.BackgroundTransparency = 1
usernameLabel.Text                   = player.Name
usernameLabel.TextColor3             = Color3.fromRGB(240, 230, 255)
usernameLabel.Font                   = Enum.Font.GothamBold
usernameLabel.TextSize               = 26
usernameLabel.TextXAlignment         = Enum.TextXAlignment.Center
usernameLabel.ZIndex                 = 102
usernameLabel.Parent                 = bg

local usernameStroke = Instance.new("UIStroke")
usernameStroke.Color     = Color3.fromRGB(120, 60, 210)
usernameStroke.Thickness = 1.5
usernameStroke.Parent    = usernameLabel

-- Divider
local divider = Instance.new("Frame")
divider.Size             = UDim2.new(0, 180, 0, 2)
divider.Position         = UDim2.new(0.5, -90, 0.52, 0)
divider.BackgroundColor3 = Color3.fromRGB(150, 90, 255)
divider.BorderSizePixel  = 0
divider.ZIndex           = 102
divider.Parent           = bg

local divCorner = Instance.new("UICorner")
divCorner.CornerRadius = UDim.new(1, 0)
divCorner.Parent       = divider

-- WELCOME TO
local welcomeToLabel = Instance.new("TextLabel")
welcomeToLabel.Size                   = UDim2.new(1, 0, 0, 20)
welcomeToLabel.Position               = UDim2.new(0, 0, 0.57, 0)
welcomeToLabel.BackgroundTransparency = 1
welcomeToLabel.Text                   = "WELCOME TO"
welcomeToLabel.TextColor3             = Color3.fromRGB(140, 90, 210)
welcomeToLabel.Font                   = Enum.Font.GothamBold
welcomeToLabel.TextSize               = 13
welcomeToLabel.TextXAlignment         = Enum.TextXAlignment.Center
welcomeToLabel.ZIndex                 = 102
welcomeToLabel.Parent                 = bg

-- Game name
local gameNameLabel = Instance.new("TextLabel")
gameNameLabel.Size                   = UDim2.new(1, 0, 0, 36)
gameNameLabel.Position               = UDim2.new(0, 0, 0.62, 0)
gameNameLabel.BackgroundTransparency = 1
gameNameLabel.Text                   = "| " .. GAME_NAME
gameNameLabel.TextColor3             = Color3.fromRGB(190, 130, 255)
gameNameLabel.Font                   = Enum.Font.GothamBold
gameNameLabel.TextSize               = 22
gameNameLabel.TextXAlignment         = Enum.TextXAlignment.Center
gameNameLabel.ZIndex                 = 102
gameNameLabel.Parent                 = bg

local gameStroke = Instance.new("UIStroke")
gameStroke.Color     = Color3.fromRGB(100, 50, 180)
gameStroke.Thickness = 1.5
gameStroke.Parent    = gameNameLabel

-- Progress track
local progressTrack = Instance.new("Frame")
progressTrack.Size             = UDim2.new(0.6, 0, 0, 7)
progressTrack.Position         = UDim2.new(0.2, 0, 0.72, 0)
progressTrack.BackgroundColor3 = Color3.fromRGB(35, 20, 60)
progressTrack.BorderSizePixel  = 0
progressTrack.ZIndex           = 102
progressTrack.Parent           = bg

local trackCorner = Instance.new("UICorner")
trackCorner.CornerRadius = UDim.new(1, 0)
trackCorner.Parent       = progressTrack

local progressFill = Instance.new("Frame")
progressFill.Size             = UDim2.new(0, 0, 1, 0)
progressFill.BackgroundColor3 = Color3.fromRGB(150, 90, 255)
progressFill.BorderSizePixel  = 0
progressFill.ZIndex           = 103
progressFill.Parent           = progressTrack

local fillCorner = Instance.new("UICorner")
fillCorner.CornerRadius = UDim.new(1, 0)
fillCorner.Parent       = progressFill

-- Percent label
local pctLabel = Instance.new("TextLabel")
pctLabel.Size                   = UDim2.new(1, 0, 0, 20)
pctLabel.Position               = UDim2.new(0, 0, 0.745, 0)
pctLabel.BackgroundTransparency = 1
pctLabel.Text                   = "0%"
pctLabel.TextColor3             = Color3.fromRGB(190, 130, 255)
pctLabel.Font                   = Enum.Font.GothamBold
pctLabel.TextSize               = 14
pctLabel.TextXAlignment         = Enum.TextXAlignment.Center
pctLabel.ZIndex                 = 102
pctLabel.Parent                 = bg

-- Skip button
local skipBtn = Instance.new("TextButton")
skipBtn.Size             = UDim2.new(0, 100, 0, 34)
skipBtn.Position         = UDim2.new(0.5, -50, 0.81, 0)
skipBtn.BackgroundColor3 = Color3.fromRGB(120, 60, 210)
skipBtn.BorderSizePixel  = 0
skipBtn.Text             = "SKIP"
skipBtn.TextColor3       = Color3.fromRGB(230, 215, 255)
skipBtn.Font             = Enum.Font.GothamBold
skipBtn.TextSize         = 14
skipBtn.AutoButtonColor  = false
skipBtn.Visible          = false
skipBtn.ZIndex           = 102
skipBtn.Parent           = bg

local skipCorner = Instance.new("UICorner")
skipCorner.CornerRadius = UDim.new(0, 8)
skipCorner.Parent       = skipBtn

-- ══════════════════════════════════════
--              KEY SYSTEM GUI
-- ══════════════════════════════════════

local function LaunchKeySystem()
    if playerGui:FindFirstChild("AFX_KeySystem") then
        playerGui.AFX_KeySystem:Destroy()
    end

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name           = "AFX_KeySystem"
    ScreenGui.ResetOnSpawn   = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.IgnoreGuiInset = true
    ScreenGui.Parent         = playerGui

    local Blur = Instance.new("BlurEffect")
    Blur.Size   = 20
    Blur.Parent = game:GetService("Lighting")

    local Overlay = Instance.new("Frame")
    Overlay.Size                   = UDim2.fromScale(1, 1)
    Overlay.BackgroundColor3       = Color3.fromRGB(10, 6, 22)
    Overlay.BackgroundTransparency = 0.35
    Overlay.BorderSizePixel        = 0
    Overlay.ZIndex                 = 1
    Overlay.Parent                 = ScreenGui

    local BorderFrame = Instance.new("Frame")
    BorderFrame.Size             = UDim2.new(0, 428, 0, 500)
    BorderFrame.AnchorPoint      = Vector2.new(0.5, 0.5)
    BorderFrame.Position         = UDim2.new(0.5, 0, -0.6, 0)
    BorderFrame.BackgroundColor3 = Color3.fromRGB(150, 90, 255)
    BorderFrame.BorderSizePixel  = 0
    BorderFrame.ZIndex           = 2
    BorderFrame.Parent           = ScreenGui

    local BorderCorner = Instance.new("UICorner")
    BorderCorner.CornerRadius = UDim.new(0, 16)
    BorderCorner.Parent       = BorderFrame

    local Main = Instance.new("Frame")
    Main.Size             = UDim2.new(1, -4, 1, -4)
    Main.AnchorPoint      = Vector2.new(0.5, 0.5)
    Main.Position         = UDim2.fromScale(0.5, 0.5)
    Main.BackgroundColor3 = Color3.fromRGB(32, 22, 52)
    Main.BorderSizePixel  = 0
    Main.ZIndex           = 3
    Main.ClipsDescendants = true
    Main.Parent           = BorderFrame

    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 14)
    MainCorner.Parent       = Main

    local NotifBar = Instance.new("Frame")
    NotifBar.Size             = UDim2.new(1, 0, 0, 42)
    NotifBar.Position         = UDim2.new(0, 0, 0, 0)
    NotifBar.BackgroundColor3 = Color3.fromRGB(120, 60, 210)
    NotifBar.BorderSizePixel  = 0
    NotifBar.ZIndex           = 4
    NotifBar.Parent           = Main

    local NotifCornerTop = Instance.new("UICorner")
    NotifCornerTop.CornerRadius = UDim.new(0, 14)
    NotifCornerTop.Parent       = NotifBar

    local NotifCornerFix = Instance.new("Frame")
    NotifCornerFix.Size             = UDim2.new(1, 0, 0, 14)
    NotifCornerFix.Position         = UDim2.new(0, 0, 1, -14)
    NotifCornerFix.BackgroundColor3 = Color3.fromRGB(120, 60, 210)
    NotifCornerFix.BorderSizePixel  = 0
    NotifCornerFix.ZIndex           = 4
    NotifCornerFix.Parent           = NotifBar

    local PlayDot = Instance.new("Frame")
    PlayDot.Size             = UDim2.new(0, 10, 0, 10)
    PlayDot.Position         = UDim2.new(0, 14, 0.5, -5)
    PlayDot.BackgroundColor3 = Color3.fromRGB(220, 200, 255)
    PlayDot.BorderSizePixel  = 0
    PlayDot.ZIndex           = 5
    PlayDot.Parent           = NotifBar

    local PlayDotCorner = Instance.new("UICorner")
    PlayDotCorner.CornerRadius = UDim.new(1, 0)
    PlayDotCorner.Parent       = PlayDot

    local NotifText = Instance.new("TextLabel")
    NotifText.Size                   = UDim2.new(1, -36, 1, 0)
    NotifText.Position               = UDim2.new(0, 32, 0, 0)
    NotifText.BackgroundTransparency = 1
    NotifText.Text                   = "AFX | ALPHAFORX SCRIPT | FAST ACCESS FOR MEMBERS"
    NotifText.TextColor3             = Color3.fromRGB(230, 215, 255)
    NotifText.Font                   = Enum.Font.GothamBold
    NotifText.TextSize               = 12
    NotifText.TextXAlignment         = Enum.TextXAlignment.Left
    NotifText.TextTruncate           = Enum.TextTruncate.AtEnd
    NotifText.ZIndex                 = 5
    NotifText.Parent                 = NotifBar

    local HubTitle = Instance.new("TextLabel")
    HubTitle.Size                   = UDim2.new(1, 0, 0, 40)
    HubTitle.Position               = UDim2.new(0, 0, 0, 58)
    HubTitle.BackgroundTransparency = 1
    HubTitle.Text                   = "AFX Hub"
    HubTitle.TextColor3             = Color3.fromRGB(240, 230, 255)
    HubTitle.Font                   = Enum.Font.GothamBold
    HubTitle.TextSize               = 26
    HubTitle.TextXAlignment         = Enum.TextXAlignment.Center
    HubTitle.ZIndex                 = 4
    HubTitle.Parent                 = Main

    local SubTitle = Instance.new("TextLabel")
    SubTitle.Size                   = UDim2.new(1, 0, 0, 20)
    SubTitle.Position               = UDim2.new(0, 0, 0, 100)
    SubTitle.BackgroundTransparency = 1
    SubTitle.Text                   = "AlphaForx  •  Enter your key below"
    SubTitle.TextColor3             = Color3.fromRGB(140, 110, 200)
    SubTitle.Font                   = Enum.Font.Gotham
    SubTitle.TextSize               = 13
    SubTitle.TextXAlignment         = Enum.TextXAlignment.Center
    SubTitle.ZIndex                 = 4
    SubTitle.Parent                 = Main

    local TitleDivider = Instance.new("Frame")
    TitleDivider.Size             = UDim2.new(0, 220, 0, 1)
    TitleDivider.Position         = UDim2.new(0.5, -110, 0, 128)
    TitleDivider.BackgroundColor3 = Color3.fromRGB(150, 90, 255)
    TitleDivider.BorderSizePixel  = 0
    TitleDivider.ZIndex           = 4
    TitleDivider.Parent           = Main

    local InputOutline = Instance.new("Frame")
    InputOutline.Size             = UDim2.new(0, 368, 0, 52)
    InputOutline.Position         = UDim2.new(0.5, -184, 0, 148)
    InputOutline.BackgroundColor3 = Color3.fromRGB(50, 35, 78)
    InputOutline.BorderSizePixel  = 0
    InputOutline.ZIndex           = 4
    InputOutline.Parent           = Main

    local InputOutlineCorner = Instance.new("UICorner")
    InputOutlineCorner.CornerRadius = UDim.new(0, 26)
    InputOutlineCorner.Parent       = InputOutline

    local InputStroke = Instance.new("UIStroke")
    InputStroke.Color     = Color3.fromRGB(150, 90, 255)
    InputStroke.Thickness = 1.5
    InputStroke.Parent    = InputOutline

    local InputBox = Instance.new("TextBox")
    InputBox.Size                   = UDim2.new(1, -24, 1, 0)
    InputBox.Position               = UDim2.new(0, 14, 0, 0)
    InputBox.BackgroundTransparency = 1
    InputBox.Text                   = ""
    InputBox.PlaceholderText        = "Paste your key here..."
    InputBox.PlaceholderColor3      = Color3.fromRGB(130, 100, 180)
    InputBox.TextColor3             = Color3.fromRGB(235, 220, 255)
    InputBox.Font                   = Enum.Font.GothamMedium
    InputBox.TextSize               = 14
    InputBox.ClearTextOnFocus       = false
    InputBox.ZIndex                 = 5
    InputBox.Parent                 = InputOutline

    local StatusLabel = Instance.new("TextLabel")
    StatusLabel.Size                   = UDim2.new(0, 368, 0, 20)
    StatusLabel.Position               = UDim2.new(0.5, -184, 0, 208)
    StatusLabel.BackgroundTransparency = 1
    StatusLabel.Text                   = ""
    StatusLabel.TextColor3             = Color3.fromRGB(255, 120, 120)
    StatusLabel.Font                   = Enum.Font.Gotham
    StatusLabel.TextSize               = 12
    StatusLabel.TextXAlignment         = Enum.TextXAlignment.Center
    StatusLabel.ZIndex                 = 4
    StatusLabel.Parent                 = Main

    local function MakeButton(text, posY, filled)
        local Outline = Instance.new("Frame")
        Outline.Size             = UDim2.new(0, 368, 0, 52)
        Outline.Position         = UDim2.new(0.5, -184, 0, posY)
        Outline.BackgroundColor3 = filled and Color3.fromRGB(120, 60, 210) or Color3.fromRGB(44, 30, 70)
        Outline.BorderSizePixel  = 0
        Outline.ZIndex           = 4
        Outline.Parent           = Main

        local OutlineCorner = Instance.new("UICorner")
        OutlineCorner.CornerRadius = UDim.new(0, 26)
        OutlineCorner.Parent       = Outline

        if not filled then
            local Stroke = Instance.new("UIStroke")
            Stroke.Color     = Color3.fromRGB(150, 90, 255)
            Stroke.Thickness = 1.5
            Stroke.Parent    = Outline
        end

        local Btn = Instance.new("TextButton")
        Btn.Size                   = UDim2.fromScale(1, 1)
        Btn.BackgroundTransparency = 1
        Btn.Text                   = text
        Btn.TextColor3             = Color3.fromRGB(230, 215, 255)
        Btn.Font                   = Enum.Font.GothamBold
        Btn.TextSize               = 14
        Btn.ZIndex                 = 5
        Btn.Parent                 = Outline

        Btn.MouseEnter:Connect(function()
            TweenService:Create(Outline, TweenInfo.new(0.15), {
                BackgroundColor3 = filled and Color3.fromRGB(150, 80, 245) or Color3.fromRGB(60, 42, 95)
            }):Play()
        end)

        Btn.MouseLeave:Connect(function()
            TweenService:Create(Outline, TweenInfo.new(0.15), {
                BackgroundColor3 = filled and Color3.fromRGB(120, 60, 210) or Color3.fromRGB(44, 30, 70)
            }):Play()
        end)

        return Btn
    end

    local RedeemBtn = MakeButton("INITIALIZE ACCESS", 238, true)
    local GetKeyBtn  = MakeButton("GET KEY", 304, false)

    local WatermarkLabel = Instance.new("TextLabel")
    WatermarkLabel.Size                   = UDim2.new(1, 0, 0, 22)
    WatermarkLabel.Position               = UDim2.new(0, 0, 1, -34)
    WatermarkLabel.BackgroundTransparency = 1
    WatermarkLabel.Text                   = "AFX  •  AlphaForx  •  2024"
    WatermarkLabel.TextColor3             = Color3.fromRGB(110, 80, 160)
    WatermarkLabel.Font                   = Enum.Font.Gotham
    WatermarkLabel.TextSize               = 12
    WatermarkLabel.TextXAlignment         = Enum.TextXAlignment.Center
    WatermarkLabel.ZIndex                 = 4
    WatermarkLabel.Parent                 = Main

    local VersionLabel = Instance.new("TextLabel")
    VersionLabel.Size                   = UDim2.new(0, 130, 0, 22)
    VersionLabel.Position               = UDim2.new(1, -140, 1, -30)
    VersionLabel.BackgroundTransparency = 1
    VersionLabel.Text                   = "AFX v1.0  ⚙"
    VersionLabel.TextColor3             = Color3.fromRGB(110, 80, 160)
    VersionLabel.Font                   = Enum.Font.Gotham
    VersionLabel.TextSize               = 12
    VersionLabel.TextXAlignment         = Enum.TextXAlignment.Right
    VersionLabel.ZIndex                 = 4
    VersionLabel.Parent                 = Main

    local function ShowStatus(msg, success)
        StatusLabel.Text       = msg
        StatusLabel.TextColor3 = success
            and Color3.fromRGB(160, 255, 160)
            or  Color3.fromRGB(255, 120, 120)
    end

    local function CopyToClipboard(text)
        if setclipboard then
            setclipboard(text)
        elseif syn and syn.setclipboard then
            syn.setclipboard(text)
        elseif Clipboard then
            Clipboard.set(text)
        end
    end

    local function CloseAndRun()
        local tween = TweenService:Create(BorderFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
            Position = UDim2.new(0.5, 0, 1.6, 0)
        })
        tween:Play()
        tween.Completed:Connect(function()
            TweenService:Create(Blur, TweenInfo.new(0.3), { Size = 0 }):Play()
            task.wait(0.3)
            ScreenGui:Destroy()
            Blur:Destroy()
            RunScript()
        end)
    end

    GetKeyBtn.MouseButton1Click:Connect(function()
        CopyToClipboard(DISCORD)
        ShowStatus("Discord link copied to clipboard!", true)
    end)

    RedeemBtn.MouseButton1Click:Connect(function()
        local entered = InputBox.Text:gsub("%s+", "")
        if entered == "" then
            ShowStatus("Please enter your key.", false)
            return
        end
        if entered == VALID_KEY then
            ShowStatus("Key accepted! Loading...", true)
            task.wait(0.9)
            CloseAndRun()
        else
            ShowStatus("Invalid key. Get yours on Discord.", false)
            TweenService:Create(InputOutline, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 5, true), {
                Position = UDim2.new(0.5, -180, 0, 148)
            }):Play()
        end
    end)

    InputBox:GetPropertyChangedSignal("Text"):Connect(function()
        StatusLabel.Text = ""
    end)

    task.wait(0.1)
    TweenService:Create(BorderFrame, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Position = UDim2.new(0.5, 0, 0.5, 0)
    }):Play()
end

-- ══════════════════════════════════════
--         INTRO FLOW + HANDOFF
-- ══════════════════════════════════════

local introFinished = false

local function CloseIntro()
    if introFinished then return end
    introFinished = true

    for _, v in ipairs(bg:GetDescendants()) do
        if v:IsA("TextLabel") or v:IsA("TextButton") then
            TweenService:Create(v, TweenInfo.new(0.35), { TextTransparency = 1 }):Play()
        end
        if v:IsA("Frame") then
            TweenService:Create(v, TweenInfo.new(0.35), { BackgroundTransparency = 1 }):Play()
        end
    end

    TweenService:Create(bg, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        BackgroundTransparency = 1
    }):Play()

    task.delay(0.6, function()
        introGui:Destroy()
        LaunchKeySystem()
    end)
end

skipBtn.MouseButton1Click:Connect(CloseIntro)
skipBtn.TouchTap:Connect(CloseIntro)

local progress = 0

task.spawn(function()
    while not introFinished do
        task.wait(0.08)
        progress = progress + (math.random() * 2.2 + 0.4)
        if progress >= 100 then progress = 100 end
        local val = math.floor(progress)
        TweenService:Create(progressFill, TweenInfo.new(0.1), {
            Size = UDim2.new(progress / 100, 0, 1, 0)
        }):Play()
        pctLabel.Text = val .. "%"
        if val >= 10 then skipBtn.Visible = true end
        if progress >= 100 then
            task.wait(0.5)
            CloseIntro()
            break
        end
    end
end)
