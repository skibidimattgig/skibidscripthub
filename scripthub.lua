local player = game.Players.LocalPlayer

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


local scripts = {
	["выкидышь"] = {"https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt", 1},
	["летяга"] = {"https://raw.githubusercontent.com/skibidimattgig/bottlecap/refs/heads/main/flymatron%203000", 1},
	["мардер"] = {"rbxassetid://4001118261", 2},
	["вибропуля"] = {"https://raw.githubusercontent.com/skibidimattgig/scripts-for-script-hab/refs/heads/main/masterbait?token=GHSAT0AAAAAADE3442YZ5XJB4UKOENFQZ6U2CIGJMQ", 1},
	["залатые мусарги"] = {"https://raw.githubusercontent.com/yes1nt/yes/refs/heads/main/Trashcan%20Man", 1},
	["отчим тварь (вх)"] = {"https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP", 1},
}


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local function execute(n)
	local s = scripts[n]
	local method = s[2]
	local str = s[1]

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
frame.Size = UDim2.new(.35,0,.35,0)
frame.Parent = ui

local sizeBox = Instance.new("TextBox")
sizeBox.Text = ""
sizeBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sizeBox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
sizeBox.TextScaled = true
local function sizeFormula(size)
	return size*0.35
end

sizeBox.PlaceholderText = "размер (деф. 1)"
sizeBox.Size = UDim2.new(.2,0,.2,0)
sizeBox.Position = UDim2.new(-.2,0,0,0)
sizeBox.Parent = frame
sizeBox.FocusLost:Connect(function()
	pcall(function()
		local s = sizeFormula(tonumber(sizeBox.Text)) or 1
		frame.Size = UDim2.new(s,0,s,0)
	end)
end)

local text = Instance.new("TextLabel")
text.Text = "скибиди скрипт хаб брр брр пимпочкин"
text.Size = UDim2.new(1,0,.1,0)
text.TextScaled = true
text.Parent = frame
local text = Instance.new("TextLabel")
text.Text = "нажми кнопачгу инсёрт (insert) чтабы закрыть/аткрыть менью"
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

local sort = Instance.new("Frame")
sort.Size = UDim2.new(.2,0,1,0)
sort.Position = UDim2.new(1,0,0,0)
sort.Parent = frame

local storeFrame = Instance.new("Frame")
storeFrame.Visible = false
storeFrame.Parent = frame

local listlayout = Instance.new("UIListLayout")
listlayout.Parent = sort

local values = {}
for _, v in scripts do
	table.insert(values, v)
end
local function getIndex(val)
	for i, v in scripts do
		if v == val then return i end
	end
end

local sorts = {
	["Все"] = values,
	["Троллинг"] = {
		scripts["летяга"],
		scripts["выкидышь"],
		scripts["отчим тварь (вх)"],
		scripts["вибропуля"]
	},
	["Murder Mystery 2"] = {
		scripts["мардер"]
	},
	["The Strongest Battlegrounds"] = {
		scripts["залатые мусарги"]
	},
}
local amountOfSorts = 0
for _, _ in sorts do
	amountOfSorts += 1
end

local function sortBtn(i)
	local button = Instance.new("TextButton")
	button.Text = i
	button.Name = i
	button.TextScaled = true
	button.Size = UDim2.new(1,0,1/amountOfSorts,0)
	button.BackgroundColor3 = Color3.fromRGB(25, 25, 31)
	button.BorderSizePixel = 3
	button.BorderColor3 = Color3.fromRGB(255, 255, 255)
	local stroke = Instance.new("UIStroke")
	stroke.Thickness = 3
	stroke.Color = Color3.fromRGB(0, 0, 0)
	stroke.Parent = button
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.Parent = sort
	return button
end

for i, array in sorts do
	local button = sortBtn(i)
	button.MouseButton1Click:Connect(function()
		for _, v in scrollFrame:GetChildren() do
			if not v:IsA("TextButton") then continue end
			
			v.Parent = storeFrame
		end
		for _, v in array do
			storeFrame[getIndex(v)].Parent = scrollFrame
		end
	end)
end

local function btn(i)
	local button = Instance.new("TextButton")
	button.Text = i
	button.Name = i
	button.TextScaled = true
	button.BackgroundColor3 = Color3.fromRGB(25, 25, 31)
	button.BorderSizePixel = 3
	button.BorderColor3 = Color3.fromRGB(255, 255, 255)
	local stroke = Instance.new("UIStroke")
	stroke.Thickness = 3
	stroke.Color = Color3.fromRGB(0, 0, 0)
	stroke.Parent = button
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.Parent = scrollFrame
	return button
end

for i, v in pairs(scripts) do
	local button = btn(i)
	button.MouseButton1Click:Connect(function()
		coroutine.wrap(function()
			execute(i)
		end)()
	end)
end
