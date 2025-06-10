local player = game.Players.LocalPlayer

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


local scripts = {
	["дилдо выкидывать"] = {"https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt", 1},
	["летяга"] = {"https://raw.githubusercontent.com/skibidimattgig/bottlecap/refs/heads/main/flymatron%203000", 1},
	["мардер хуйня полная"] = {"rbxassetid://4001118261", 2},
	["мастурбация виброяйца вибропуля хуй соски мальдивы"] = {"https://raw.githubusercontent.com/skibidimattgig/scripts-for-script-hab/refs/heads/main/masterbait?token=GHSAT0AAAAAADE3442YZ5XJB4UKOENFQZ6U2CIGJMQ", 1},
	["залатые мусарги"] = {"https://raw.githubusercontent.com/yes1nt/yes/refs/heads/main/Trashcan%20Man", 1},
	["отчим шалава (вх)"] = {"https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP", 1},
}


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local function execute(n)
	local s = scripts[n]
	local method = s[2]
	local str = s[1]
	
	if n == "мастурбация виброяйца вибропуля хуй соски мальдивы" then
		local player = game.Players.LocalPlayer
		local char = player.Character or player.CharacterAdded:Wait()

		game.StarterGui:SetCoreGuiEnabled("Backpack", true)

		loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
		-- Made by muscle_legends2021 (Gio)
		-- YouTube: GioBolqvi

		loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
		return
	end

	if method == 1 then
		loadstring(game:HttpGet((str),true))()
	elseif method == 2 then
		loadstring(game:GetObjects(str)[1].Source)()
	end
end

if player:WaitForChild("PlayerGui"):FindFirstChild("skripthab") then
	player.PlayerGui.skripthab:Destroy()
end
local ui = Instance.new("ScreenGui")
ui.Name = "skripthab"
ui.Parent = player.PlayerGui

local frame = Instance.new("ImageLabel")
frame.Image = "rbxassetid://13585078598"
frame.ImageColor3 = Color3.fromRGB(89, 89, 89)
frame.ImageTransparency = 0.1
local drag = Instance.new("UIDragDetector")
drag.Parent = frame

frame.AnchorPoint = Vector2.new(.5,.5)
frame.Position = UDim2.new(.5,0,.5,0)
frame.Size = UDim2.new(.5,0,.5,0)
frame.Parent = ui

local text = Instance.new("TextLabel")
text.Text = "скибиди скрипт хаб брр брр долбаёб"
text.Size = UDim2.new(1,0,.1,0)
text.TextScaled = true
text.Parent = frame
local text = Instance.new("TextLabel")
text.Text = "нажми кнопачгу инсёрт (insert) чтабы закрыть/аткрыть хуйнюшу дилдо"
text.Size = UDim2.new(1,0,.1,0)
text.Position = UDim2.new(0,0,1,0)
text.TextScaled = true
text.Parent = frame

local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(input, gpe)
	if input.KeyCode ~= Enum.KeyCode.Insert then return end

	frame.Visible = not frame.Visible
end)

local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Transparency = 1
scrollFrame.Position = UDim2.new(0,0,.1,0)
scrollFrame.CanvasSize = UDim2.new(0,0,20,0)
scrollFrame.Size = UDim2.new(1,0,.9,0)
scrollFrame.Parent = frame

local grid = Instance.new("UIGridLayout")
grid.CellPadding = UDim2.new(0,5,0,5)
grid.CellSize = UDim2.new(0.3,0,0,50)
grid.Parent = scrollFrame

local function btn(i)
	local button = Instance.new("TextButton")
	button.Text = i
	button.Name = i
	button.TextScaled = true
	button.BackgroundColor3 = Color3.fromRGB(34, 35, 43)
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(.225,0)
	corner.Parent = button
	local stroke = Instance.new("UIStroke")
	stroke.Thickness = 3
	stroke.Color = Color3.fromRGB(67, 67, 67)
	stroke.Parent = button
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.Parent = scrollFrame
	return button
end

for i, v in scripts do
	local button = btn(i)
	button.MouseButton1Click:Connect(function()
		coroutine.wrap(function()
			execute(i)
		end)()
	end)
end

--local closeBtn = Instance.new("TextButton")
--local aspectRatio = Instance.new("UIAspectRatioConstraint")
--aspectRatio.Parent = closeBtn
--closeBtn.Size = UDim2.new(.15,0,.15,0)
--closeBtn.Text = ">"
--closeBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
--closeBtn.Position = UDim2.new(.15,0,0,0)
--closeBtn.Parent = frame
