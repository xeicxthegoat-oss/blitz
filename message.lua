-- Deobfuscated by ! Seth (https://discord.gg/QcH6vkUzQ)

local function geniter(f, s, c)
	if type(f) ~= "function" then
		local mt = getmetatable(f)

		if type(mt) == "table" and mt.__iter then
			f, s, c = mt.__iter(f)
		elseif type(f) == "table" then
			f, s, c = next, f, nil
		end
	end

	return function()
		local r = table.pack(f(s, c))

		if r[1] == nil then
			return false
		end

		c = r[1]

		return true, table.unpack(r, 1, r.n)
	end
end

if getgenv().d84jdnmasjdh43d or game.PlaceId ~= 6961824067 then
	return
end

getgenv().d84jdnmasjdh43d = true
PS = game:GetService("Players")
CABM_script = function(p1)
	pcall(function()
		game.Players.LocalPlayer.PlayerScripts.CharacterAndBeamMove.Disabled = p1
	end)
end
CABM_script(true)

local u4

-- Key system + all premium/superpremium/ownership auth removed. Everything free for everyone.
GetKey = function()
	return "Xana"
end

GetKeyType = function()
	return "superpremium"
end

local ok2, result = pcall(function()
	return loadstring(game:HttpGet("https://raw.githubusercontent.com/BlizTBr/scripts/refs/heads/main/Orion%20X", true))()
end)

if not ok2 then
	print("Orion Library Execution Failed!")
	print(result, ok2)
	getgenv().d84jdnmasjdh43d = false

	return
end

do
	task.spawn(function()
		local ok, result2 = pcall(function()
			return loadstring(game:HttpGet("https://pastefy.app/JljHgOiz/raw", true))()
		end)

		_ = ok
		u4 = result2
	end)
end

task.spawn(function()
	local ok, result2 = pcall(function()
		return loadstring(game:HttpGet("https://pastefy.app/i4Hk500Q/raw"))()
	end)

	if ok and typeof(result2) == "table" then
		Happy_MD = result2
		result2.Start()
	end
end)
CABM_Module = nil

do
	VFlyIY_MD = {
		Flying = false,
		Speed = 1,
		QEfly = true,
		SetSpeed = function()
		end,
		Enable = function()
		end,
		Disable = function()
		end,
		Toggle = function()
		end
	}
end

pt = function(p2, p3, p4)
	if not p2 then
		return
	end

	if p3 then
		task.spawn(p2)

		return
	end

	local ok, result2 = pcall(p2)

	if ok then
		return result2
	end

	if not p4 then
		warn(result2)
	end

	return nil
end

do
	GetDestroyFrameToyNumber = function(p5)
		local MenuGui = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MenuGui")

		if not MenuGui then
			return nil
		end

		local Contents = MenuGui:FindFirstChild("Menu") and MenuGui.Menu:FindFirstChild("TabContents") and MenuGui.Menu.TabContents:FindFirstChild("ToyDestroy") and MenuGui.Menu.TabContents.ToyDestroy:FindFirstChild("Contents")

		if not Contents then
			return nil
		end

		local v17 = p5 * -1

		for _, child in ipairs(Contents:GetChildren()) do
			if child:IsA("Frame") then
				if child.LayoutOrder == v17 then
					return child
				end
			end
		end

		return nil
	end
end

do
	makeTripleClickCallback = function(p6, p7)
		local n1 = 0
		local n2 = 0

		local function v22()
			local now = os.clock()

			if now - n2 > 2 then
				n1 = 1
			else
				n1 += 1
			end

			n2 = now

			if n1 >= 4 then
				n1 = 0
				p7()
			else
				local s1 = ""

				if n1 == 1 then
					s1 = "Are you sure?"
				elseif n1 == 2 then
					s1 = "Are you really sure?"
				elseif n1 == 3 then
					s1 = "Are you really fucking sure?"
				end

				result:MakeNotification({
					Name = "Security",
					Content = s1,
					Time = 1.5
				})
			end
		end

		return v22
	end
end

fsearch = function(p8, p9, p10)
	local now = os.clock()

	while p8.Parent do
		local v26 = p8:FindFirstChild(p9)

		if v26 then
			return v26
		end

		if (p10 or 30) <= os.clock() - now then
			return false
		end

		task.wait()
	end

	return false
end

do
	findPartByPosition = function(p11, p12, p13)
		local v27 = p13 or 0.01

		for _, child in pairs(p11:GetChildren()) do
			if child:IsA("BasePart") then
				if (child.Position - p12).Magnitude <= v27 then
					return child
				end
			end
		end

		return nil
	end
end

task.spawn(function()
	aclls_t = 0

	local v30 = pt(function()
		return loadstring(game:HttpGet("https://pastefy.app/KagyjTyp/raw"))()
	end)

	if v30 then
		if typeof(v30) == "table" then
			CABM_Module = v30

			if anticreatelinelocalscript then
				anticreatelinelocalscript.Parent = nil
				anticreatelinelocalscript:GetPropertyChangedSignal("Parent"):Connect(function()
					if anticreatelinelocalscript.Parent ~= nil then
						aclls_t += 1

						local aclls_t_ = aclls_t

						task.delay(0.1, function()
							if aclls_t ~= aclls_t_ then
								return
							end

							anticreatelinelocalscript.Parent = nil
						end)
					end
				end)
			end
		end
	end
end)
task.spawn(function()
	local v32 = pt(function()
		return loadstring(game:HttpGet("https://pastefy.app/Qbn9Afb3/raw"))()
	end)

	if v32 then
		VFlyIY_MD = v32
	end
end)
mapRange = function(p14, p15, p16, p17, p18)
	return p17 + (p14 - p15) / (p16 - p15) * (p18 - p17)
end
premium_text = ""
s_premium_text = ""
ownership_text = ""
laggyv3_text = " <font color='#4a4846'>「</font><font color='#73706c'>STICKY</font><font color='#4a4846'>」</font>"
GetToySpacePoints = function(p19)
	if u4 then
		local v33 = u4.GetMenuToyData(p19)

		if v33 then
			return v33.SpacePoints
		end
	end
end

do
	GetToyCoinsCost = function(p20)
		if u4 then
			local v34 = u4.GetMenuToyData(p20)

			if v34 then
				return v34.Price
			end
		end
	end
end

SitOnVS = function(p21, p22, p23)
	if not p21 then
		return
	end

	if p23 == nil then
	end

	if not (typeof(p21) == "Instance" and p21:IsA("VehicleSeat") or not not p21:IsA("Seat") and p21.Parent) then
		return
	end

	if typeof(_G.UniversalPlayerHumanoid) == "Instance" then
		if _G.UniversalPlayerHumanoid:IsA("Humanoid") and _G.UniversalPlayerHumanoid.Parent and _G.UniversalPlayerHumanoid.Health > 0 then
			if p21.Occupant then
				local Occupant = p21.Occupant

				if Occupant ~= _G.UniversalPlayerHumanoid then
					local Parent = Occupant.Parent
					local HumanoidRootPart = Parent and Parent:FindFirstChild("HumanoidRootPart")

					if HumanoidRootPart and p22 == true then
						TeleportPlayer(CFrame.new(HumanoidRootPart.CFrame.Position + Vector3.new(0, 5, 0)))
						task.wait(0.1)
						SNOWshipOnce(HumanoidRootPart)
					end

					return
				end
			end

			if replicatesignal then
				replicatesignal(p21.RemoteCreateSeatWeld, _G.UniversalPlayerHumanoid)
			else
				p21:Sit(_G.UniversalPlayerHumanoid)
			end

			return
		end
	end
end
SFcQ = function(p24)
	if typeof(p24) == "Instance" then
		for _, child in pairs(p24:GetChildren()) do
			if child:IsA("BasePart") and child.CanQuery then
				return child
			end
		end
	end
end

do
	IsPlayerInAir = function(p25, p26)
		local v40 = p26 or 40
		local Character = p25.Character

		if not Character then
			return false
		end

		local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

		if not HumanoidRootPart then
			return false
		end

		local raycastParams = RaycastParams.new()

		raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
		raycastParams.FilterDescendantsInstances = { Character }
		raycastParams.IgnoreWater = true

		return workspace:Raycast(HumanoidRootPart.Position, Vector3.new(0, -v40, 0), raycastParams) == nil
	end
end

IsNetworkOwner = function(p27)
	if p27 and p27.AssemblyRootPart then
		return not p27:IsGrounded() and p27.AssemblyRootPart.ReceiveAge == 0
	end

	return false
end
DB = game:GetService("Debris")
W = game:GetService("Workspace")
Lighting = game:GetService("Lighting")
Tween = game:GetService("TweenService")
uis = game:GetService("UserInputService")
RS = game:GetService("ReplicatedStorage")
RF = game:GetService("ReplicatedFirst")
CAS = game:GetService("ContextActionService")
R = game:GetService("RunService")
VU = game:GetService("VirtualUser")
SoundService = game:GetService("SoundService")
HttpService = game:GetService("HttpService")
SG = game:GetService("StarterGui")
ReplicatedStorage = game:GetService("ReplicatedStorage")
TextChatService = game:GetService("TextChatService")
chatstyle = TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService

local LocalPlayer = PS.LocalPlayer

og_cam = W.CurrentCamera
new_cam = og_cam:Clone()
placeLocations = {
	["Green House"] = CFrame.new(-352, 99, 354),
	["Green Safe-House"] = CFrame.new(-584, -6, 93),
	["Chinese Safe-House"] = CFrame.new(579, 124, -94),
	["Farm House"] = CFrame.new(-234, 83, -324),
	Spawn = CFrame.new(4, -7, -3),
	["Blue Safe-House"] = CFrame.new(538, 96, -372),
	["Secret Big Cave"] = CFrame.new(17, -7, 539),
	["Mine Cave"] = CFrame.new(-254, -7, 518),
	["Witch Safe-House"] = CFrame.new(296, -4, 494),
	["Red Safe-House"] = CFrame.new(-516, -6, -162)
}
placeLocationsIcons = {
	["Green House"] = "rbxassetid://8989330316",
	["Green Safe-House"] = "rbxassetid://8989327148",
	["Chinese Safe-House"] = "rbxassetid://9108988013",
	["Farm House"] = "rbxassetid://8989332406",
	Spawn = "rbxassetid://3724740797",
	["Blue Safe-House"] = "rbxassetid://9909733734",
	["Secret Big Cave"] = "rbxassetid://98442905803581",
	["Mine Cave"] = "rbxassetid://100036128031145",
	["Witch Safe-House"] = "rbxassetid://9909725942",
	["Red Safe-House"] = "rbxassetid://8989326312"
}
GameLocationLists = {}

for k in pairs(placeLocations) do
	local v46 = placeLocationsIcons[k]

	if v46 then
		table.insert(GameLocationLists, {
			Name = k,
			Image = v46,
			Height = 65
		})
	else
		table.insert(GameLocationLists, k)
	end
end

og_camT = {}
UseFakeCam = function(p28, p29)
	local v47 = p28:lower()
	local v48 = table.find(og_camT, v47)

	if p29 or not v48 then
		if p29 and not v48 then
			table.insert(og_camT, v47)
		end
	else
		table.remove(og_camT, v48)
	end

	if p29 then
		new_cam.Parent = W
		new_cam.CameraSubject = _G.UniversalPlayerHumanoid
		new_cam.CameraType = Enum.CameraType.Custom
		W.CurrentCamera = new_cam
	elseif #og_camT == 0 then
		og_cam.Parent = W
		og_cam.CameraSubject = _G.UniversalPlayerHumanoid
		og_cam.CameraType = Enum.CameraType.Custom
		workspace.CurrentCamera = og_cam
	end
end

do
	task.spawn(function()
		for _, child in pairs(TextChatService:GetChildren()) do
			if child.Name == "TextChannels" then
				if not child:FindFirstChild("RBXGeneral") then
					child:Destroy()
				end
			end
		end
	end)
end

chatMessage = function(p30)
	local v51 = tostring(p30)

	if chatstyle then
		RS.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v51, "All")
	else
		TextChatService.TextChannels.RBXGeneral:SendAsync(v51)
	end
end
PlayerEventsFolder = RS:FindFirstChild("PlayerEvents")

if PlayerEventsFolder then
	StickyPartRE = PlayerEventsFolder:FindFirstChild("StickyPartEvent")
else
	StickyPartRE = nil
end

SetStickyPart = function(p31, p32, p33)
	if not p31 or not p32 or not p33 then
		return
	end

	local StickyPart = p31:FindFirstChild("StickyPart")

	if not StickyPart then
		return
	end

	if p31:IsDescendantOf(workspace.PlotItems) ~= p32:IsDescendantOf(workspace.PlotItems) then
		return
	end

	StickyPartRE:FireServer(StickyPart, p32, p33)
end

do
	DisconnectAll = function(p34)
		if typeof(p34) == "table" then
			for _, v in pairs(p34) do
				if typeof(v) == "RBXScriptConnection" then
					v:Disconnect()
				end
			end

			table.clear(p34)
		end
	end
end

SafeGetC = function(p35, p36, p37)
	if not p35 then
		warn("SafeGet: parent é nil ao procurar '" .. p36 .. "'")

		return nil
	end

	local v55 = p35:WaitForChild(p36, p37 or 3)

	if not v55 then
		warn("SafeGet: '" .. p36 .. "' não foi encontrado após " .. (p37 or 3) .. " segundos.")
	end

	return v55
end

do
	WaitForChildrenAddedOnce = function(p38, p39, p40)
		if typeof(p38) ~= "Instance" then
			return
		end

		local v56 = p39 or 1
		local now = tick()
		local connection

		local function v59()
			if v56 <= tick() - now then
				if connection then
					connection:Disconnect()
				end

				p40(p38:GetChildren())
			end
		end

		connection = p38.ChildAdded:Connect(function()
			now = tick()
			task.delay(v56, v59)
		end)

		if #p38:GetChildren() > 0 then
			now = tick()
			task.delay(v56, v59)
		end
	end
end

do
	chatMessagePrivate = function(p41, p42)
		local v60 = tostring(p41)
		local v61 = PS:FindFirstChild(p42)

		if chatstyle or not v61 then
			RS.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v60, "All")
		else
			for i = 0, 15 do
				local v63 = TextChatService.TextChannels:FindFirstChild("RBXWhisper:" .. v61.UserId .. "_" .. LocalPlayer.UserId)

				if v63 then
					TextChatService.TextChannels[v63.Name]:SendAsync(v60)

					break
				end

				TextChatService.TextChannels.RBXGeneral:SendAsync("/w " .. "@" .. v61.Name)
				wait(0.05)
			end
		end
	end
end

do
	GetAllPlayerToys = function(p43)
		if typeof(p43) == "string" then
			p43 = PS:FindFirstChild(p43)
		end

		if p43 then
			if p43:IsA("Player") then
				local t1 = {}
				local v65 = W:FindFirstChild(p43.Name .. "SpawnedInToys")
				local PlotItems = W:FindFirstChild("PlotItems")

				if not PlotItems then
					return t1
				end

				local function v67(p44)
					if not p44 or not p44:IsA("Model") then
						return false
					end

					local PlayerValue = p44:FindFirstChild("PlayerValue")

					return PlayerValue and PlayerValue.Value == p43
				end

				if v65 then
					for _, child in ipairs(v65:GetChildren()) do
						if v67(child) then
							table.insert(t1, child)
						end
					end
				end

				for i = 1, 5 do
					local v72 = PlotItems:FindFirstChild("Plot" .. i)

					if v72 then
						for _, child in ipairs(v72:GetChildren()) do
							if v67(child) then
								table.insert(t1, child)
							end
						end
					end
				end

				return t1
			end
		end

		return {}
	end
end

ConnectionsTF = ConnectionsTF or {}
executor_name = identifyexecutor and identifyexecutor() or "idk"
OutsideFToys = {
	"Lincoln Planks",
	"Pallets",
	"Cubes",
	"Furniture",
	"Balloons",
	"Ladders",
	"Robloxians",
	"Glass Boxes",
	"Food",
	"Large Animals",
	"Cave",
	"Music",
	"Rollers",
	"Farm",
	"Other",
	"🍗",
	"NOT New",
	"Drawers"
}

do
	ConnectPlayersTF = function(p45, p46, p47, p48)
		if p46 == "Add" then
			if typeof(ConnectionsTF[p45]) == "table" then
				warn("Já existe esta conexão!")

				return
			end

			if typeof(p47) ~= "function" then
				warn("Necessita de uma função!")

				return
			end

			ConnectionsTF[p45] = {}

			local function v75(p49)
				if not p49 then
					return
				end

				local connection = p49.ChildAdded:Connect(p47)

				table.insert(ConnectionsTF[p45], connection)

				for _, child in ipairs(p49:GetChildren()) do
					task.spawn(function()
						p47(child)
					end)
				end
			end

			for _, player in ipairs(PS:GetPlayers()) do
				v75(W:FindFirstChild(player.Name .. "SpawnedInToys"))
			end

			if p48 == true then
				local connection = W.ChildAdded:Connect(function(child)
					if table.find(OutsideFToys, child.Name) then
						WaitForChildrenAddedOnce(child, 0.25, function()
							v75(child)
						end)
					end
				end)

				table.insert(ConnectionsTF[p45], connection)

				for _, v in pairs(OutsideFToys) do
					local v84 = W:FindFirstChild(v)

					if v84 then
						v75(v84)
					end
				end
			end

			local PlotItems = W:FindFirstChild("PlotItems")

			if PlotItems then
				for i = 1, 5 do
					v75(PlotItems:FindFirstChild("Plot" .. i))
				end
			end

			local connection = workspace.ChildAdded:Connect(function(child)
				if child:IsA("Folder") then
					if child.Name:find("SpawnedInToys") then
						v75(child)
					end
				end
			end)

			table.insert(ConnectionsTF[p45], 1, connection)
		elseif typeof(ConnectionsTF[p45]) == "table" then
			for _, v in ipairs(ConnectionsTF[p45]) do
				if v and v.Disconnect then
					v:Disconnect()
				end
			end

			ConnectionsTF[p45] = nil
			warn("Conexões limpas!")
		end
	end
end

predictPos = function(p50)
	local AssemblyLinearVelocity = p50.AssemblyLinearVelocity

	if AssemblyLinearVelocity.Magnitude < 2 then
		return p50.Position
	end

	local v91 = (ping() or 0) / 1000 * 0.8 + 0.05

	return p50.Position + AssemblyLinearVelocity * v91 + Vector3.new(0, -workspace.Gravity * 0.5, 0) * v91 * v91 * 0.5
end
GetFullPath = function(p51)
	if typeof(p51) ~= "Instance" then
		error("Instance expected, got " .. typeof(p51))
	end

	local t2 = {}

	while p51 and p51 ~= game do
		local Name = p51.Name
		local Parent = p51.Parent

		if Parent then
			local t3 = {}

			for _, child in ipairs(Parent:GetChildren()) do
				if child.Name == Name then
					table.insert(t3, child)
				end
			end

			if #t3 > 1 then
				local v98 = table.find(t3, p51)

				Name = string.format("%s[%d]", Name, v98)
			end
		end

		table.insert(t2, 1, Name)
		p51 = Parent
	end

	return "game." .. table.concat(t2, ".")
end

do
	GetInstanceFromPath = function(p52)
		if typeof(p52) ~= "string" then
			error("String expected, got " .. typeof(p52))
		end

		local game_ = game

		for match in string.gmatch(p52, "[^%.]+") do
			if match == "game" then
				game_ = game

				continue
			end

			local v101, v102 = string.match(match, "^(.-)%[(%d+)%]$")
			local v103 = tonumber(v102)

			v101 = v101 or match

			local v104

			if game_ == game then
				local ok, result2 = pcall(function()
					return game:GetService(v101)
				end)

				if ok and result2 then
					v104 = result2
				end
			end

			if not v104 then
				if v103 then
					local t4 = {}

					for _, child in ipairs(game_:GetChildren()) do
						if child.Name == v101 then
							table.insert(t4, child)
						end
					end

					v104 = t4[v103]
				else
					v104 = game_:FindFirstChild(v101)
				end
			end

			if v104 then
				game_ = v104

				continue
			end

			return nil
		end

		return game_
	end
end

local v110 = SafeGetC(RS, "CharacterEvents")
local v111 = SafeGetC(LocalPlayer, "PlayerGui")

LocalPlayer:GetMouse()

local u112 = SafeGetC(workspace, LocalPlayer.Name .. "SpawnedInToys")
local v113 = SafeGetC(LocalPlayer, "InPlot")
local v114 = SafeGetC(LocalPlayer, "ToysLimitCap")
local v115 = SafeGetC(LocalPlayer, "UsedToyPoints")
local v116 = SafeGetC(RS, "GrabEvents")
local v117 = v116 and SafeGetC(v116, "CreateGrabLine")
local v118 = v116 and SafeGetC(v116, "DestroyGrabLine")
local v119 = v116 and SafeGetC(v116, "SetNetworkOwner")
local v120 = v116 and SafeGetC(v116, "ExtendGrabLine")

module_upvr_2 = {
	Buttons = {}
}

do
	module_upvr_2.PlaceButton = function(p53)
		if CAG then
			local v121 = module_upvr_2.Buttons[p53]

			if v121 then
				v121.Visible = true
			else
				local ImageButton = Instance.new("ImageButton", CAG.ContextButtonFrame)

				module_upvr_2.Buttons[p53] = ImageButton
				ImageButton.Name = "ContextActionButton"
				ImageButton.Active = true
				ImageButton.AutoButtonColor = true
				ImageButton.BackgroundTransparency = 1
				ImageButton.ClipsDescendants = false
				ImageButton.Image = "rbxassetid://97166444"
				ImageButton.ImageColor3 = Color3.fromRGB(142, 142, 142)
				ImageButton.ImageTransparency = 0.2

				local ImageLabel_ = Instance.new("ImageLabel", ImageButton)

				ImageLabel_.Name = "ActionIcon"
				ImageLabel_.Size = UDim2.new(0.649999976, 0, 0.649999976, 0)
				ImageLabel_.Position = UDim2.new(0.174999997, 0, 0.174999997, 0)
				ImageLabel_.BackgroundTransparency = 1
				ImageLabel_.ImageColor3 = Color3.fromRGB(255, 255, 255)

				if p53 == "Rotate" then
					ImageLabel_.Image = "rbxassetid://9603830181"
					ImageLabel_.Size = UDim2.new(0.649999976, 0, 0.649999976, 0)
					ImageLabel_.Position = UDim2.new(0.174999997, 0, 0.174999997, 0)
					ImageButton.Size = UDim2.new(0, 45, 0, 45)
					ImageButton.Position = UDim2.new(1, -70, 1, -307)
				elseif p53 == "ZoomOut" then
					ImageLabel_.Image = "rbxassetid://9603831913"
					ImageLabel_.Size = UDim2.new(0.649999976, 0, 0.649999976, 0)
					ImageLabel_.Position = UDim2.new(0.174999997, 0, 0.174999997, 0)
					ImageButton.Size = UDim2.new(0, 45, 0, 45)
					ImageButton.Position = UDim2.new(1, -70, 1, -259)
				elseif p53 == "ZoomIn" then
					ImageLabel_.Image = "rbxassetid://9603826756"
					ImageLabel_.Size = UDim2.new(0.649999976, 0, 0.649999976, 0)
					ImageLabel_.Position = UDim2.new(0.174999997, 0, 0.174999997, 0)
					ImageButton.Size = UDim2.new(0, 45, 0, 45)
					ImageButton.Position = UDim2.new(1, -70, 1, -211)
				elseif p53 == "Throw" then
					ImageLabel_.Image = "http://www.roblox.com/asset/?id=9603678090"
					ImageButton.Size = UDim2.new(0, 70, 0, 70)
					ImageButton.Position = UDim2.new(1, -168, 1, -163)
				end
			end
		end
	end
end

do
	module_upvr_2.GrayOutButton = function(p54, p55)
		local v124 = module_upvr_2.Buttons[p54]

		if v124 then
			local ActionIcon = v124:FindFirstChild("ActionIcon")

			if p55 then
				v124.ImageTransparency = 0.8
				ActionIcon.ImageTransparency = 0.5
			else
				v124.ImageTransparency = 0.2
				ActionIcon.ImageTransparency = 0
			end
		end
	end
end

do
	module_upvr_2.ChangeColor = function(p56, p57)
		local v126 = module_upvr_2.Buttons[p56]

		if v126 then
			local ActionIcon = v126:FindFirstChild("ActionIcon")

			if p57 then
				v126.ImageColor3 = p57
				ActionIcon.ImageColor3 = p57
			else
				v126.ImageColor3 = Color3.fromRGB(142, 142, 142)
				ActionIcon.ImageColor3 = Color3.fromRGB(255, 255, 255)
			end
		end
	end
end

module_upvr_2.DisableButton = function(p58)
	local v128 = module_upvr_2.Buttons[p58]

	if v128 then
		local ActionIcon = v128:FindFirstChild("ActionIcon")

		v128.Visible = false
		v128.ImageTransparency = 0.2
		ActionIcon.ImageTransparency = 0
		v128.ImageColor3 = Color3.fromRGB(142, 142, 142)
		ActionIcon.ImageColor3 = Color3.fromRGB(255, 255, 255)
	end
end
StatsService = game:GetService("Stats")
ping = function()
	return StatsService.Network.ServerStatsItem["Data Ping"]:GetValue()
end
fps = nil

do
	R.RenderStepped:Connect(function(dt)
		fps = math.floor(1 / dt)
	end)
end

do
	ChangeCrosshairsFrame = function(p59)
		local Crosshairs = v111:FindFirstChild("Crosshairs")

		if Crosshairs then
			local CrosshairsFrame = Crosshairs:FindFirstChild("CrosshairsFrame")

			if CrosshairsFrame then
				CrosshairsFrame.Size = p59
			end
		end
	end
end

ActionEvent = function(p60, p61)
	local ControlsGui = v111:FindFirstChild("ControlsGui")

	if ControlsGui then
		local ActionEvent_ = ControlsGui:FindFirstChild("ActionEvent")

		if ActionEvent_ then
			ActionEvent_:Fire(p60, p61)
		end
	end
end
MenuToysF = SafeGetC(RS, "MenuToys")
SpawnToyRF = MenuToysF and SafeGetC(MenuToysF, "SpawnToyRemoteFunction")
DeleteToyRE = MenuToysF and SafeGetC(MenuToysF, "DestroyToy")
BuyToy = MenuToysF and SafeGetC(MenuToysF, "BuyToyRemoteFunction")
BombEvents = SafeGetC(RS, "BombEvents")
typeAnimation = RF.Typing.Type
flailAnimation = RF.ThrowPlayers.Flail

local v134 = v110 and SafeGetC(v110, "RagdollRemote")

ChatTypingBoard = v110 and SafeGetC(v110, "ChatTyping")

local SayMessageRequest

if RS:FindFirstChild("DefaultChatSystemChatEvents") then
	if RS.DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest") then
		SayMessageRequest = RS.DefaultChatSystemChatEvents.SayMessageRequest
	end
end

DataEventsFolder = SafeGetC(RS, "DataEvents")

local DataEventsFolder_ = DataEventsFolder and SafeGetC(DataEventsFolder, "UpdateLineColorsEvent")

BeingHeld = SafeGetC(LocalPlayer, "IsHeld")
PlayerScripts = SafeGetC(LocalPlayer, "PlayerScripts")
PlayerWhoIsHolding = nil
StruggleEvent = v110 and SafeGetC(v110, "Struggle")
endGrab = function(p62)
	ChangeCrosshairsFrame(UDim2.new(0, 11, 0, 11))

	if anticreatelinelocalscript then
		if anticreatelinelocalscript:FindFirstChild("GrabNotifyEvent") then
			anticreatelinelocalscript.GrabNotifyEvent:Fire(false)
		end
	end

	module_upvr_2.ChangeColor("Grab")

	if p62 then
		CAS:UnbindAction("Throw")
		CAS:UnbindAction("ZoomIn")
		CAS:UnbindAction("ZoomOut")
		CAS:UnbindAction("ZoomPC")
		CAS:UnbindAction("Rotate")
		ActionEvent("GrabbingControls", false)
		ActionEvent("GrabControls", false)
		ActionEvent("RotatingControls", false)
		ActionEvent("RotateControls", false)
		workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
		R:UnbindFromRenderStep("dragBinding")
		R:UnbindFromRenderStep("buttonDistanceMoving")

		if p62:FindFirstChild("GrabPart") then
			if p62.GrabPart:FindFirstChild("WeldConstraint") and p62.GrabPart.WeldConstraint.Part1 then
				v118:FireServer(p62.GrabPart.WeldConstraint.Part1)
			end
		end

		p62:Destroy()
	end
end
W:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	if W.CurrentCamera ~= nil then
		local GrabbingScript = LocalPlayer.Character:FindFirstChild("GrabbingScript") or LocalPlayer.Character:WaitForChild("GrabbingScript", 1)
		local GrabParts = workspace:FindFirstChild("GrabParts")

		if GrabbingScript then
			GrabbingScript.Enabled = false
			GrabbingScript.Enabled = true
		end

		wait(0)

		if GrabParts then
			endGrab(GrabParts)
		end
	end
end)
anticreatelinelocalscript = SafeGetC(PlayerScripts, "CharacterAndBeamMove")

if not anticreatelinelocalscript then
	anticreatelinelocalscript = Instance.new("LocalScript")
	Instance.new("RemoteEvent", anticreatelinelocalscript).Name = "GrabNotifyEvent"
end

LocalPlayer.Changed:Connect(function(p63)
	if p63 == "userId" or p63 == "UserId" then
		while true do
		end
	end
end)
Type = function(p64)
	SayMessageRequest:FireServer(p64, "All")
end
notify = function(p65)
	result:MakeNotification({
		Name = "Bliz_T HUB",
		Content = p65,
		Image = "rbxassetid://16570630989",
		Time = 5
	})
end
notifypremium = function()
	-- disabled - everything is free
end

do
	WaitForAttribute = function(p66, p67, p68)
		local v139 = p68 or 10
		local now = os.clock()

		while not (v139 <= os.clock() - now) do
			R.Heartbeat:Wait()

			if p66:GetAttribute(p67) ~= nil then
				break
			end
		end

		return p66:GetAttribute(p67)
	end
end

do
	hasProperty = function(p69, p70)
		local ok = pcall(function()
			p69[p70] = p69[p70]
		end)

		return ok
	end
end

do
	IsDescendantOfPlayerBag = function(p71)
		local v143 = false

		if p71:IsDescendantOf(W[LocalPlayer.Name .. "SpawnedInToys"]) or _G.PlotPlayerIsOwner and p71:IsDescendantOf(W.PlotItems[tostring(_G.PlotPlayerIsOwner)]) then
			v143 = true
		end

		return v143
	end
end

Coins = function()
	if LocalPlayer.PlayerGui:WaitForChild("MenuGui") then
		return tonumber(LocalPlayer.PlayerGui.MenuGui.TopRight.CoinsFrame.CoinsDisplay.Coins.Text)
	end
end
ToyFirstSeen = setmetatable({}, {
	__mode = "k"
})
LastToyDeleteRequest = setmetatable({}, {
	__mode = "k"
})

do
	RequestDeleteToy = function(p72)
		local now = os.clock()

		if LastToyDeleteRequest[p72] and now - LastToyDeleteRequest[p72] < 1 then
			return
		end

		LastToyDeleteRequest[p72] = now
		DeleteToyRE:FireServer(p72)
	end
end

do
	CheckToyLimit = function(p73, p74, p75)
		local v145 = p73 or 0
		local v146 = (v115.Value + v145) / v114.Value > 1

		if v146 and p74 then
			if typeof(p75) == "table" then
				local now = os.clock()

				for _, child in pairs(u112:GetChildren()) do
					if child:IsA("Model") and not (table.find(p75, child.Name) or child:GetAttribute("Connected2")) then
						ToyFirstSeen[child] = ToyFirstSeen[child] or now

						if now - ToyFirstSeen[child] >= 1 and (v115.Value + v145) / v114.Value > 1 then
							RequestDeleteToy(child)
						end
					end
				end
			end
		end

		return v146
	end
end

IsMobile = function()
	if LocalPlayer.PlayerGui:FindFirstChild("ContextActionGui") then
		return true
	end
end

local t5 = {}

ToysQueue = {}
ToysQueueTime = setmetatable({}, {
	__mode = "k"
})
RemoveToyFromQueueList = function(p76)
	local Name = typeof(p76) == "Instance" and p76.Name or typeof(p76) == "string" and p76 or nil

	if Name then
		for i = #ToysQueue, 1, -1 do
			if ToysQueue[i][1] == Name then
				table.remove(ToysQueue, i)
			end
		end
	end
end
PruneToysQueue = function(p77)
	local now = os.clock()

	for i = #ToysQueue, 1, -1 do
		local v155 = ToysQueueTime[ToysQueue[i]]

		if v155 and p77 < now - v155 then
			table.remove(ToysQueue, i)
		end
	end
end

if u112 then
	u112.ChildAdded:Connect(RemoveToyFromQueueList)
end

do
	DoesPlayerHasThisToy = function(p78)
		if LocalPlayer:FindFirstChild("PlayerGui") then
			if LocalPlayer.PlayerGui:FindFirstChild("MenuGui") then
				if LocalPlayer.PlayerGui.MenuGui:FindFirstChild("Menu") then
					if LocalPlayer.PlayerGui.MenuGui.Menu:FindFirstChild("TabContents") then
						if LocalPlayer.PlayerGui.MenuGui.Menu.TabContents:FindFirstChild("Toys") then
							if LocalPlayer.PlayerGui.MenuGui.Menu.TabContents.Toys:FindFirstChild("Contents") then
								return LocalPlayer.PlayerGui.MenuGui.Menu.TabContents.Toys.Contents:FindFirstChild(p78)
							end
						end
					end
				end
			end
		end
	end
end

do
	GetToyInfo = function(p79, p80)
		if typeof(p79) == "string" and typeof(p80) == "string" and LocalPlayer:FindFirstChild("PlayerGui") then
			if LocalPlayer.PlayerGui:FindFirstChild("MenuGui") then
				if LocalPlayer.PlayerGui.MenuGui:FindFirstChild("Menu") then
					if LocalPlayer.PlayerGui.MenuGui.Menu:FindFirstChild("TabContents") then
						if LocalPlayer.PlayerGui.MenuGui.Menu.TabContents:FindFirstChild("ToyShop") then
							if LocalPlayer.PlayerGui.MenuGui.Menu.TabContents.ToyShop:FindFirstChild("ToyInfoFrameHolder") then
								local v156 = LocalPlayer.PlayerGui.MenuGui.Menu.TabContents.ToyShop.ToyInfoFrameHolder:FindFirstChild(p79)
								local v157 = LocalPlayer.PlayerGui.MenuGui.Menu.TabContents.ToyShop.Contents:FindFirstChild(p79)

								if not v156 or not v157 then
									return p79, 9099782826, Vector2.new(0, 0), p80
								end

								local Text = v156.ItemName.Text

								return Text, tostring(v157.ViewItemButton.LowResImage.Image):match("%d+"), v157.ViewItemButton.LowResImage.ImageRectOffset, p80
							end
						end
					end
				end
			end
		end
	end
end

_blobmanRunning = false
_blobmanDestroyConn = nil
GetBlobmanV2 = function()
	if _blobmanRunning then
		return nil
	end

	_blobmanRunning = true

	local ok, result2 = pcall(function()
		if not CheckBlobman(BlobmanV2) then
			print(BlobmanV2)

			for _, child in pairs(u112:GetChildren()) do
				if child.Name == "CreatureBlobman" and child ~= gucci_toy then
					BlobmanV2 = child
				end
			end

			if not BlobmanV2 then
				SpawnToy({
					"CreatureBlobman",
					CFrame.new(0, 50, 0),
					(Vector3.new(0, 0, 0))
				}, true)
				task.wait(0.1)
			end

			if CheckBlobman(BlobmanV2) then
				if _blobmanDestroyConn then
					_blobmanDestroyConn:Disconnect()
				end

				_blobmanDestroyConn = BlobmanV2.Destroying:Connect(function()
					BlobmanV2 = nil
					_blobmanDestroyConn = nil
				end)

				local VehicleSeat = BlobmanV2:FindFirstChild("VehicleSeat")

				if VehicleSeat then
					local v164 = false
					local now = tick()

					while tick() - now < 7 do
						R.Heartbeat:Wait()

						if VehicleSeat.Occupant then
							if VehicleSeat.Occupant:IsDescendantOf(Workspace) then
								_G.UniversalPlayerHumanoid.Health = 0
								_G.UniversalPlayerHumanoid.EvaluateStateMachine = false
								_G.UniversalPlayerHumanoid.BreakJointsOnDeath = false

								if not v164 then
									v134:FireServer(_G.UniversalPlayerRoot, math.huge)
									v164 = true
								end

								if not _G.UniversalPlayerHumanoid.SeatPart then
									_G.UniversalPlayerHumanoid.Sit = false
								end

								VehicleSeat:Sit(_G.UniversalPlayerHumanoid)
								fireproximityprompt(VehicleSeat.ProximityPrompt)
								_G.UniversalPlayerHumanoid.EvaluateStateMachine = true

								continue
							end
						else
							_G.UniversalPlayerHumanoid.Health = 0
							_G.UniversalPlayerHumanoid.EvaluateStateMachine = false
							_G.UniversalPlayerHumanoid.BreakJointsOnDeath = false

							if not v164 then
								v134:FireServer(_G.UniversalPlayerRoot, math.huge)
								v164 = true
							end

							if not _G.UniversalPlayerHumanoid.SeatPart then
								_G.UniversalPlayerHumanoid.Sit = false
							end

							VehicleSeat:Sit(_G.UniversalPlayerHumanoid)
							fireproximityprompt(VehicleSeat.ProximityPrompt)
							_G.UniversalPlayerHumanoid.EvaluateStateMachine = true

							continue
						end

						break
					end
				end
			end
		end

		local ok = not CheckBlobman(BlobmanV2)
		local VehicleSeat

		if not ok then
			VehicleSeat = BlobmanV2:FindFirstChild("VehicleSeat")
			ok = not VehicleSeat
		end

		local PrimaryPart, v169, Value, LowResImage, TextLabel, BodyVelocity

		if ok then
			if CheckBlobman(BlobmanV2) then
				PrimaryPart = BlobmanV2.PrimaryPart or BlobmanV2:FindFirstChild("VehicleSeat")

				if PrimaryPart then
					BlobmanV2:PivotTo(CFrame.new(PrimaryPart.Position.X, 2e9, PrimaryPart.Position.Z))
					v169 = fsearch(BlobmanV2, "ThisToysNumber")
					Value = v169 and v169.Value and GetDestroyFrameToyNumber(v169.Value)
					LowResImage = Value and Value:FindFirstChild("ViewItemButton") and Value.ViewItemButton:FindFirstChild("LowResImage")

					if LowResImage and not LowResImage:FindFirstChild("ToyType") then
						TextLabel = Instance.new("TextLabel")
						TextLabel.Name = "ToyType"
						TextLabel.Position = UDim2.new(0, 0, 0, 0)
						TextLabel.Size = UDim2.new(1, 0, 1, 0)
						TextLabel.AnchorPoint = Vector2.new(0, 0)
						TextLabel.AutomaticSize = Enum.AutomaticSize.None
						TextLabel.SizeConstraint = Enum.SizeConstraint.RelativeXY
						TextLabel.LayoutOrder = 0
						TextLabel.ZIndex = 1
						TextLabel.Rotation = 0
						TextLabel.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
						TextLabel.BackgroundTransparency = 1
						TextLabel.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
						TextLabel.BorderMode = Enum.BorderMode.Outline
						TextLabel.BorderSizePixel = 1
						TextLabel.ClipsDescendants = false
						TextLabel.Visible = true
						TextLabel.Text = "Seatless"
						TextLabel.TextColor3 = Color3.new(1, 1, 1)
						TextLabel.TextSize = 14
						TextLabel.TextTransparency = 0
						TextLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
						TextLabel.TextStrokeTransparency = 0
						TextLabel.TextScaled = false
						TextLabel.TextWrapped = false
						TextLabel.TextTruncate = Enum.TextTruncate.None
						TextLabel.TextXAlignment = Enum.TextXAlignment.Center
						TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
						TextLabel.TextDirection = Enum.TextDirection.Auto
						TextLabel.RichText = false
						TextLabel.LineHeight = 1
						TextLabel.MaxVisibleGraphemes = -1
						TextLabel.FontFace = Font.new("rbxasset://fonts/families/LegacyArial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
						TextLabel.Active = true
						TextLabel.Interactable = true
						TextLabel.Selectable = false
						TextLabel.Draggable = false
						TextLabel.SelectionGroup = false
						TextLabel.SelectionOrder = 0
						TextLabel.SelectionBehaviorDown = Enum.SelectionBehavior.Escape
						TextLabel.SelectionBehaviorUp = Enum.SelectionBehavior.Escape
						TextLabel.SelectionBehaviorLeft = Enum.SelectionBehavior.Escape
						TextLabel.SelectionBehaviorRight = Enum.SelectionBehavior.Escape
						TextLabel.InputSink = Enum.InputSink.None
						TextLabel.AutoLocalize = true
						TextLabel.Localize = true
						TextLabel.Archivable = true
						TextLabel.Parent = LowResImage
						BodyVelocity = Instance.new("BodyVelocity")
						BodyVelocity.Name = "BlobmanFreeze"
						BodyVelocity.Velocity = Vector3.zero
						BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						BodyVelocity.P = math.huge
						BodyVelocity.Parent = PrimaryPart
					end
				end
			end

			return BlobmanV2
		end

		if VehicleSeat.Occupant then
			if not VehicleSeat.Occupant:IsDescendantOf(Workspace) then
				if CheckBlobman(BlobmanV2) then
					PrimaryPart = BlobmanV2.PrimaryPart or BlobmanV2:FindFirstChild("VehicleSeat")

					if PrimaryPart then
						BlobmanV2:PivotTo(CFrame.new(PrimaryPart.Position.X, 2e9, PrimaryPart.Position.Z))
						v169 = fsearch(BlobmanV2, "ThisToysNumber")
						Value = v169 and v169.Value and GetDestroyFrameToyNumber(v169.Value)
						LowResImage = Value and Value:FindFirstChild("ViewItemButton") and Value.ViewItemButton:FindFirstChild("LowResImage")

						if LowResImage and not LowResImage:FindFirstChild("ToyType") then
							TextLabel = Instance.new("TextLabel")
							TextLabel.Name = "ToyType"
							TextLabel.Position = UDim2.new(0, 0, 0, 0)
							TextLabel.Size = UDim2.new(1, 0, 1, 0)
							TextLabel.AnchorPoint = Vector2.new(0, 0)
							TextLabel.AutomaticSize = Enum.AutomaticSize.None
							TextLabel.SizeConstraint = Enum.SizeConstraint.RelativeXY
							TextLabel.LayoutOrder = 0
							TextLabel.ZIndex = 1
							TextLabel.Rotation = 0
							TextLabel.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
							TextLabel.BackgroundTransparency = 1
							TextLabel.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
							TextLabel.BorderMode = Enum.BorderMode.Outline
							TextLabel.BorderSizePixel = 1
							TextLabel.ClipsDescendants = false
							TextLabel.Visible = true
							TextLabel.Text = "Seatless"
							TextLabel.TextColor3 = Color3.new(1, 1, 1)
							TextLabel.TextSize = 14
							TextLabel.TextTransparency = 0
							TextLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
							TextLabel.TextStrokeTransparency = 0
							TextLabel.TextScaled = false
							TextLabel.TextWrapped = false
							TextLabel.TextTruncate = Enum.TextTruncate.None
							TextLabel.TextXAlignment = Enum.TextXAlignment.Center
							TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
							TextLabel.TextDirection = Enum.TextDirection.Auto
							TextLabel.RichText = false
							TextLabel.LineHeight = 1
							TextLabel.MaxVisibleGraphemes = -1
							TextLabel.FontFace = Font.new("rbxasset://fonts/families/LegacyArial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
							TextLabel.Active = true
							TextLabel.Interactable = true
							TextLabel.Selectable = false
							TextLabel.Draggable = false
							TextLabel.SelectionGroup = false
							TextLabel.SelectionOrder = 0
							TextLabel.SelectionBehaviorDown = Enum.SelectionBehavior.Escape
							TextLabel.SelectionBehaviorUp = Enum.SelectionBehavior.Escape
							TextLabel.SelectionBehaviorLeft = Enum.SelectionBehavior.Escape
							TextLabel.SelectionBehaviorRight = Enum.SelectionBehavior.Escape
							TextLabel.InputSink = Enum.InputSink.None
							TextLabel.AutoLocalize = true
							TextLabel.Localize = true
							TextLabel.Archivable = true
							TextLabel.Parent = LowResImage
							BodyVelocity = Instance.new("BodyVelocity")
							BodyVelocity.Name = "BlobmanFreeze"
							BodyVelocity.Velocity = Vector3.zero
							BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
							BodyVelocity.P = math.huge
							BodyVelocity.Parent = PrimaryPart
						end
					end
				end

				return BlobmanV2
			end
		end

		BlobmanV2 = nil

		return nil
	end)

	_blobmanRunning = false

	if ok then
		return result2
	end

	warn("GetBlobmanV2 falhou:", result2)

	return nil
end
GetToyInfo2 = function(p81)
	if typeof(p81) == "string" and LocalPlayer:FindFirstChild("PlayerGui") then
		if LocalPlayer.PlayerGui:FindFirstChild("MenuGui") then
			if LocalPlayer.PlayerGui.MenuGui:FindFirstChild("Menu") then
				if LocalPlayer.PlayerGui.MenuGui.Menu:FindFirstChild("TabContents") then
					if LocalPlayer.PlayerGui.MenuGui.Menu.TabContents:FindFirstChild("ToyShop") then
						if LocalPlayer.PlayerGui.MenuGui.Menu.TabContents.ToyShop:FindFirstChild("ToyInfoFrameHolder") then
							local v174 = LocalPlayer.PlayerGui.MenuGui.Menu.TabContents.ToyShop.ToyInfoFrameHolder:FindFirstChild(p81)
							local v175 = LocalPlayer.PlayerGui.MenuGui.Menu.TabContents.ToyShop.Contents:FindFirstChild(p81)

							if v174 and v175 then
								return v174.ItemName.Text, tostring(v175.ViewItemButton.LowResImage.Image):match("%d+"), v175.ViewItemButton.LowResImage.ImageRectOffset
							end

							return p81, 9099782826, Vector2.new(0, 0)
						end
					end
				end
			end
		end
	end
end

local UserInputService = game:GetService("UserInputService")

do
	local u177

	FixCam = function()
		local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart

		if not HumanoidRootPart then
			return
		end

		if UserInputService.MouseBehavior ~= Enum.MouseBehavior.LockCenter then
			UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
		end

		if workspace.CurrentCamera.CameraType ~= Enum.CameraType.Scriptable then
			workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
		end

		workspace.CurrentCamera.CFrame = CFrame.new((HumanoidRootPart.CFrame * u177).Position) * workspace.CurrentCamera.CFrame.Rotation
	end
	og_cam:GetPropertyChangedSignal("CameraType"):Connect(function()
		if og_cam.CameraType == Enum.CameraType.Scriptable then
			new_cam.CameraType = Enum.CameraType.Scriptable
			UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
			u177 = _G.UniversalPlayerRoot.CFrame:ToObjectSpace(workspace.CurrentCamera.CFrame)
			R:BindToRenderStep("rfix", Enum.RenderPriority.Camera.Value - 1, FixCam)
			ActionEvent("RotatingControls", true)
			ActionEvent("RotateControls", false)
			task.spawn(function()
				for _, descendant in pairs(LocalPlayer.Character:GetDescendants()) do
					if descendant:IsA("BasePart") then
						descendant.Transparency = 1
					end
				end
			end)
			module_upvr_2.ChangeColor("Rotate", Color3.new(0, 1, 1))
		elseif og_cam.CameraType == Enum.CameraType.Custom then
			u177 = nil
			new_cam.CameraType = Enum.CameraType.Custom
			UserInputService.MouseBehavior = Enum.MouseBehavior.Default
			R:UnbindFromRenderStep("rfix")
			module_upvr_2.ChangeColor("Rotate")
			ActionEvent("RotatingControls", false)
			ActionEvent("RotateControls", true)
		end
	end)
end

CreateMissingToysUI = function()
	local Players = game:GetService("Players")
	local UserInputService2 = game:GetService("UserInputService")
	local LocalPlayer2 = Players.LocalPlayer
	local ScreenGui = Instance.new("ScreenGui")

	ScreenGui.Name = "MissingToysUI"
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset = false
	ScreenGui.DisplayOrder = 101
	ScreenGui.Parent = LocalPlayer2:WaitForChild("PlayerGui")

	local TextButton = Instance.new("TextButton")

	TextButton.Name = "ModalButton"
	TextButton.Size = UDim2.new(0, 0, 0, 0)
	TextButton.Position = UDim2.new(0, 0, 0, 0)
	TextButton.BackgroundTransparency = 1
	TextButton.Text = ""
	TextButton.Visible = false
	TextButton.Modal = true
	TextButton.Parent = ScreenGui

	local Frame = Instance.new("Frame")

	Frame.Name = "MainFrame"
	Frame.Size = UDim2.new(0, 300, 0, 400)
	Frame.Position = UDim2.new(0.5, -150, 0.5, -200)
	Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Frame.BorderSizePixel = 0
	Frame.BackgroundTransparency = 0.1
	Frame.Active = true
	Frame.Draggable = true
	Frame.Visible = false
	Frame.Parent = ScreenGui

	local TextLabel = Instance.new("TextLabel")

	TextLabel.Name = "Title"
	TextLabel.Size = UDim2.new(1, 0, 0, 40)
	TextLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	TextLabel.Text = "Missing Toys"
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.TextSize = 20
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.TextStrokeTransparency = 0.8
	TextLabel.Parent = Frame
	TextLabel.AutoLocalize = false

	local TextButton2 = Instance.new("TextButton")

	TextButton2.Name = "CloseButton"
	TextButton2.Size = UDim2.new(0, 40, 1, 0)
	TextButton2.Position = UDim2.new(1, -40, 0, 0)
	TextButton2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	TextButton2.Text = "X"
	TextButton2.Font = Enum.Font.GothamBold
	TextButton2.TextSize = 18
	TextButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton2.Parent = TextLabel
	TextButton2.AutoLocalize = false
	TextButton2.MouseEnter:Connect(function()
		TextButton2.BackgroundColor3 = Color3.fromRGB(90, 0, 0)
	end)
	TextButton2.MouseLeave:Connect(function()
		TextButton2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	end)

	local ScrollingFrame = Instance.new("ScrollingFrame")

	ScrollingFrame.Name = "ToyList"
	ScrollingFrame.Size = UDim2.new(1, 0, 1, -40)
	ScrollingFrame.Position = UDim2.new(0, 0, 0, 40)
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollingFrame.ScrollBarThickness = 6
	ScrollingFrame.BackgroundTransparency = 1
	ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(150, 150, 150)
	ScrollingFrame.Parent = Frame

	local UIListLayout = Instance.new("UIListLayout")

	UIListLayout.Padding = UDim.new(0, 6)
	UIListLayout.FillDirection = Enum.FillDirection.Vertical
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Parent = ScrollingFrame

	local UIPadding = Instance.new("UIPadding")

	UIPadding.PaddingTop = UDim.new(0, 5)
	UIPadding.PaddingBottom = UDim.new(0, 5)
	UIPadding.PaddingLeft = UDim.new(0, 5)
	UIPadding.PaddingRight = UDim.new(0, 5)
	UIPadding.Parent = ScrollingFrame
	UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 10)
	end)

	local t6 = {}

	local function v193()
		Frame.Visible = true
		TextButton.Visible = true
		UserInputService2.MouseIconEnabled = true
		task.spawn(function()
			while Frame.Visible do
				task.wait(0.1)

				if not UserInputService2.MouseIconEnabled then
					UserInputService2.MouseIconEnabled = true
				end
			end
		end)
	end
	local function v194()
		Frame.Visible = false
		TextButton.Visible = false
	end

	TextButton2.MouseButton1Click:Connect(v194)

	local function v195()
		for _, v in pairs(t6) do
			if v.Frame then
				v.Frame:Destroy()
			end
		end

		t6 = {}
		ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	end

	return {
		AddToy = function(p82, p83, p84, p85)
			local v198 = t6[p82]

			v193()

			if v198 then
				v198.Count += 1
				v198.Frame:FindFirstChild("CountLabel").Text = "x" .. v198.Count
			else
				local Frame2 = Instance.new("Frame")

				Frame2.Size = UDim2.new(1, -10, 0, 60)
				Frame2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				Frame2.BorderSizePixel = 0
				Frame2.Parent = ScrollingFrame

				local ImageLabel_ = Instance.new("ImageLabel")

				ImageLabel_.Size = UDim2.new(0, 50, 0, 50)
				ImageLabel_.Position = UDim2.new(0, 5, 0.5, -25)
				ImageLabel_.BackgroundTransparency = 1
				ImageLabel_.Image = "rbxassetid://" .. tostring(p83)

				if p84 then
					ImageLabel_.ImageRectSize = Vector2.new(90, 90)
					ImageLabel_.ImageRectOffset = p84
				end

				ImageLabel_.Parent = Frame2

				local TextLabel2 = Instance.new("TextLabel")

				TextLabel2.Size = UDim2.new(1, -70, 0.5, 0)
				TextLabel2.Position = UDim2.new(0, 65, 0, 8)
				TextLabel2.BackgroundTransparency = 1
				TextLabel2.Font = Enum.Font.GothamSemibold
				TextLabel2.TextSize = 16
				TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
				TextLabel2.Text = p82
				TextLabel2.Parent = Frame2
				TextLabel2.AutoLocalize = false

				if typeof(p85) == "string" then
					local TextLabel3 = Instance.new("TextLabel")

					TextLabel3.Size = UDim2.new(1, -70, 0.5, 0)
					TextLabel3.Position = UDim2.new(0, 65, 0, 21)
					TextLabel3.BackgroundTransparency = 1
					TextLabel3.Font = Enum.Font.GothamSemibold
					TextLabel3.TextSize = 14
					TextLabel3.TextTransparency = 0.3
					TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
					TextLabel3.Text = "From: " .. p85
					TextLabel3.Parent = Frame2
					TextLabel3.AutoLocalize = false
				end

				local TextLabel3 = Instance.new("TextLabel")

				TextLabel3.Name = "CountLabel"
				TextLabel3.Size = UDim2.new(0, 40, 0.5, 0)
				TextLabel3.Position = UDim2.new(1, -45, 0, 8)
				TextLabel3.BackgroundTransparency = 1
				TextLabel3.Font = Enum.Font.GothamBold
				TextLabel3.TextSize = 16
				TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel3.Text = "x1"
				TextLabel3.TextXAlignment = Enum.TextXAlignment.Right
				TextLabel3.Parent = Frame2
				t6[p82] = {
					Count = 1,
					Frame = Frame2
				}
			end
		end,
		ClearToys = v195,
		OpenInterface = v193,
		CloseInterface = v194
	}
end

do
	CreateRequiredToysUI = function()
		local Players = game:GetService("Players")
		local UserInputService2 = game:GetService("UserInputService")
		local TweenService = game:GetService("TweenService")
		local RunService = game:GetService("RunService")
		local LocalPlayer2 = Players.LocalPlayer
		local t7 = {
			Background = Color3.fromRGB(13, 13, 16),
			Header = Color3.fromRGB(18, 18, 22),
			Card = Color3.fromRGB(22, 22, 27),
			CardHover = Color3.fromRGB(28, 29, 35),
			ImageBackground = Color3.fromRGB(30, 31, 37),
			Stroke = Color3.fromRGB(48, 50, 60),
			StrokeLight = Color3.fromRGB(65, 70, 85),
			Accent = Color3.fromRGB(100, 150, 255),
			AccentDark = Color3.fromRGB(55, 85, 150),
			Text = Color3.fromRGB(240, 242, 247),
			TextSecondary = Color3.fromRGB(155, 160, 175),
			TextMuted = Color3.fromRGB(105, 110, 125),
			Success = Color3.fromRGB(85, 215, 135),
			SuccessBackground = Color3.fromRGB(28, 65, 45),
			Danger = Color3.fromRGB(235, 90, 100),
			DangerBackground = Color3.fromRGB(65, 30, 35),
			Warning = Color3.fromRGB(255, 195, 70)
		}
		local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local tweenInfo2 = TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local ScreenGui = Instance.new("ScreenGui")

		ScreenGui.Name = "RequiredToysUI"
		ScreenGui.ResetOnSpawn = false
		ScreenGui.IgnoreGuiInset = false
		ScreenGui.DisplayOrder = 102
		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		ScreenGui.Parent = LocalPlayer2:WaitForChild("PlayerGui")

		local TextButton = Instance.new("TextButton")

		TextButton.Name = "ModalButton"
		TextButton.Size = UDim2.new(0, 0, 0, 0)
		TextButton.BackgroundTransparency = 1
		TextButton.Text = ""
		TextButton.Visible = false
		TextButton.Modal = true
		TextButton.Parent = ScreenGui

		local Frame = Instance.new("Frame")

		Frame.Name = "MainFrame"
		Frame.Size = UDim2.new(0, 330, 0, 430)
		Frame.Position = UDim2.new(0.5, -165, 0.5, -215)
		Frame.BackgroundColor3 = t7.Background
		Frame.BorderSizePixel = 0
		Frame.BackgroundTransparency = 0
		Frame.Active = true
		Frame.Visible = false
		Frame.ZIndex = 2
		Frame.Parent = ScreenGui

		local UIShadow = Instance.new("UIShadow")

		UIShadow.Name = "Shadow"
		UIShadow.Enabled = true
		UIShadow.Color = Color3.fromRGB(0, 0, 0)
		UIShadow.Transparency = 0.35
		UIShadow.BlurRadius = UDim.new(0, 10)
		UIShadow.Offset = UDim2.new(0, 0, 0, 3)
		UIShadow.Spread = UDim2.new(0, 5, 0, 5)
		UIShadow.ZIndex = 0
		UIShadow.Parent = Frame

		local UICorner = Instance.new("UICorner")

		UICorner.CornerRadius = UDim.new(0, 12)
		UICorner.Parent = Frame

		local UIStroke = Instance.new("UIStroke")

		UIStroke.Color = t7.Stroke
		UIStroke.Thickness = 1
		UIStroke.Transparency = 1
		UIStroke.Parent = Frame

		local Frame2 = Instance.new("Frame")

		Frame2.Name = "TitleBar"
		Frame2.Size = UDim2.new(1, 0, 0, 62)
		Frame2.BackgroundColor3 = t7.Header
		Frame2.BorderSizePixel = 0
		Frame2.ZIndex = 3
		Frame2.Parent = Frame

		local u219 = false
		local u220
		local Position
		local Position2
		local Position3 = Frame.Position
		local u224 = false
		local connection
		local connection2

		local function v227()
			if connection then
				connection:Disconnect()
				connection = nil
			end
		end
		local function v228()
			if connection then
				return
			end

			connection = RunService.RenderStepped:Connect(function(dt)
				if not Frame or not Frame.Parent then
					v227()

					return
				end

				if not u219 then
					v227()

					return
				end

				Frame.Position = Frame.Position:Lerp(Position3, 1 - math.exp(-22 * dt))
			end)
		end
		local function v229()
			u219 = false
			u220 = nil
			Frame.Position = Position3
			v227()
			u224 = false

			if connection2 then
				connection2:Disconnect()
				connection2 = nil
			end
		end
		local function v230(p86)
			v229()
			u219 = true
			u220 = p86
			Position = p86.Position
			Position2 = Frame.Position
			Position3 = Position2
			u224 = false
			connection2 = UserInputService2.InputChanged:Connect(function(input)
				if not u219 then
					return
				end

				local v231 = false

				if input.UserInputType == Enum.UserInputType.MouseMovement then
					v231 = true
				elseif input.UserInputType == Enum.UserInputType.Touch and input == u220 then
					v231 = true
				end

				if v231 then
					local v232 = input.Position - Position

					if not u224 then
						if v232.Magnitude < 4 then
							return
						end

						u224 = true
					end

					Position3 = UDim2.new(Position2.X.Scale, Position2.X.Offset + v232.X, Position2.Y.Scale, Position2.Y.Offset + v232.Y)
				end
			end)
			v228()
		end

		Frame2.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				v230(input)

				local connection3

				connection3 = input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						v229()
						connection3:Disconnect()

						return
					elseif input.UserInputState == Enum.UserInputState.Cancel then
						v229()
						connection3:Disconnect()
					end
				end)
			end
		end)

		local UICorner2 = Instance.new("UICorner")

		UICorner2.CornerRadius = UDim.new(0, 12)
		UICorner2.Parent = Frame2

		local Frame3 = Instance.new("Frame")

		Frame3.Size = UDim2.new(1, 0, 0, 15)
		Frame3.Position = UDim2.new(0, 0, 1, -15)
		Frame3.BackgroundColor3 = t7.Header
		Frame3.BorderSizePixel = 0
		Frame3.ZIndex = 3
		Frame3.Parent = Frame2

		local Frame4 = Instance.new("Frame")

		Frame4.Name = "IconContainer"
		Frame4.Size = UDim2.new(0, 36, 0, 36)
		Frame4.Position = UDim2.new(0, 12, 0.5, -18)
		Frame4.BackgroundColor3 = Color3.fromRGB(45, 38, 22)
		Frame4.BackgroundTransparency = 1
		Frame4.BorderSizePixel = 0
		Frame4.ZIndex = 4
		Frame4.Parent = Frame2

		local UICorner3 = Instance.new("UICorner")

		UICorner3.CornerRadius = UDim.new(0, 9)
		UICorner3.Parent = Frame4

		local UIStroke2 = Instance.new("UIStroke")

		UIStroke2.Color = t7.Warning
		UIStroke2.Thickness = 1
		UIStroke2.Transparency = 1

		local ImageLabel_ = Instance.new("ImageLabel")

		ImageLabel_.Name = "WarningIcon"
		ImageLabel_.Size = UDim2.new(0, 36, 0, 36)
		ImageLabel_.Position = UDim2.new(0.5, -15, 0.5, -15)
		ImageLabel_.BackgroundTransparency = 1
		ImageLabel_.Image = "rbxassetid://8657059521"
		ImageLabel_.ImageColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel_.ZIndex = 5
		ImageLabel_.Parent = Frame4

		local TextLabel = Instance.new("TextLabel")

		TextLabel.Name = "Title"
		TextLabel.Size = UDim2.new(1, -125, 0, 21)
		TextLabel.Position = UDim2.new(0, 58, 0, 11)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Text = "Required Toys"
		TextLabel.Font = Enum.Font.GothamBold
		TextLabel.TextSize = 16
		TextLabel.TextColor3 = t7.Text
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel.AutoLocalize = false
		TextLabel.ZIndex = 4
		TextLabel.Parent = Frame2

		local TextLabel2 = Instance.new("TextLabel")

		TextLabel2.Name = "Subtitle"
		TextLabel2.Size = UDim2.new(1, -125, 0, 16)
		TextLabel2.Position = UDim2.new(0, 58, 0, 32)
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.Text = "Some toys are required for the script"
		TextLabel2.Font = Enum.Font.Gotham
		TextLabel2.TextSize = 10
		TextLabel2.TextColor3 = t7.TextSecondary
		TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel2.AutoLocalize = false
		TextLabel2.ZIndex = 4
		TextLabel2.Parent = Frame2

		local TextButton2 = Instance.new("TextButton")

		TextButton2.Name = "CloseButton"
		TextButton2.Size = UDim2.new(0, 34, 0, 34)
		TextButton2.Position = UDim2.new(1, -46, 0.5, -17)
		TextButton2.BackgroundColor3 = Color3.fromRGB(32, 32, 38)
		TextButton2.BorderSizePixel = 0
		TextButton2.Text = "×"
		TextButton2.Font = Enum.Font.GothamMedium
		TextButton2.TextSize = 21
		TextButton2.TextColor3 = t7.TextSecondary
		TextButton2.AutoLocalize = false
		TextButton2.ZIndex = 5
		TextButton2.Parent = Frame2

		local UICorner4 = Instance.new("UICorner")

		UICorner4.CornerRadius = UDim.new(0, 8)
		UICorner4.Parent = TextButton2

		local UIStroke3 = Instance.new("UIStroke")

		UIStroke3.Color = t7.Stroke
		UIStroke3.Thickness = 1
		UIStroke3.Transparency = 0.25
		UIStroke3.Parent = TextButton2
		TextButton2.MouseEnter:Connect(function()
			TweenService:Create(TextButton2, tweenInfo, {
				BackgroundColor3 = t7.DangerBackground,
				TextColor3 = t7.Danger
			}):Play()
		end)
		TextButton2.MouseLeave:Connect(function()
			TweenService:Create(TextButton2, tweenInfo, {
				BackgroundColor3 = Color3.fromRGB(32, 32, 38),
				TextColor3 = t7.TextSecondary
			}):Play()
		end)

		local Frame5 = Instance.new("Frame")

		Frame5.Name = "AccentLine"
		Frame5.Size = UDim2.new(1, -24, 0, 1)
		Frame5.Position = UDim2.new(0, 12, 0, 62)
		Frame5.BackgroundColor3 = t7.Accent
		Frame5.BackgroundTransparency = 1
		Frame5.BorderSizePixel = 0
		Frame5.ZIndex = 5
		Frame5.Parent = Frame

		local ScrollingFrame = Instance.new("ScrollingFrame")

		ScrollingFrame.Name = "ToyList"
		ScrollingFrame.Size = UDim2.new(1, -12, 1, -73)
		ScrollingFrame.Position = UDim2.new(0, 6, 0, 69)
		ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		ScrollingFrame.ScrollBarThickness = 3
		ScrollingFrame.ScrollBarImageColor3 = t7.Accent
		ScrollingFrame.ScrollBarImageTransparency = 0.35
		ScrollingFrame.BackgroundTransparency = 1
		ScrollingFrame.BorderSizePixel = 0
		ScrollingFrame.ZIndex = 3
		ScrollingFrame.Parent = Frame

		local UIListLayout = Instance.new("UIListLayout")

		UIListLayout.Padding = UDim.new(0, 7)
		UIListLayout.FillDirection = Enum.FillDirection.Vertical
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Parent = ScrollingFrame

		local UIPadding = Instance.new("UIPadding")

		UIPadding.PaddingTop = UDim.new(0, 4)
		UIPadding.PaddingBottom = UDim.new(0, 8)
		UIPadding.PaddingLeft = UDim.new(0, 5)
		UIPadding.PaddingRight = UDim.new(0, 5)
		UIPadding.Parent = ScrollingFrame
		UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 12)
		end)

		local t8 = {}
		local n3 = 0
		local u251 = false

		local function v252()
			local now = os.clock()

			if now - n3 < 5 then
				return
			end

			n3 = now
			Frame.Visible = true
			TextButton.Visible = true
			UserInputService2.MouseIconEnabled = true
			Frame.Size = UDim2.new(0, 320, 0, 415)
			Frame.Position = UDim2.new(0.5, -160, 0.5, -207.5)
			TweenService:Create(Frame, tweenInfo2, {
				Size = UDim2.new(0, 330, 0, 430),
				Position = UDim2.new(0.5, -165, 0.5, -215)
			}):Play()

			if not u251 then
				u251 = true
				task.spawn(function()
					while Frame.Visible do
						task.wait(0.1)

						if not UserInputService2.MouseIconEnabled then
							UserInputService2.MouseIconEnabled = true
						end
					end

					u251 = false
				end)
			end
		end
		local function v254()
			Frame.Visible = false
			TextButton.Visible = false
		end

		TextButton2.MouseButton1Click:Connect(v254)

		local function v255(p87)
			if DoesPlayerHasThisToy(p87.toyName) then
				p87.statusLabel.Text = "Bought"
				p87.statusLabel.TextColor3 = t7.Success
				p87.statusBackground.BackgroundColor3 = t7.SuccessBackground
				p87.buyButton.BackgroundColor3 = t7.SuccessBackground
				p87.buyButton.Text = "Owned"
				p87.buyButton.TextColor3 = t7.Success
				p87.buyButton.Active = false
			else
				p87.statusLabel.Text = "Missing"
				p87.statusLabel.TextColor3 = t7.Danger
				p87.statusBackground.BackgroundColor3 = t7.DangerBackground
				p87.buyButton.BackgroundColor3 = t7.AccentDark
				p87.buyButton.Text = "Buy"
				p87.buyButton.TextColor3 = t7.Text
				p87.buyButton.Active = true
			end
		end
		local function v256(p88, p89, p90, p91, p92)
			if typeof(p88) ~= "string" then
				return
			end

			if t8[p88] then
				return
			end

			local v257 = math.max(0, game:GetService("TextService"):GetTextSize(p91 or "Required for full functionality", 10, Enum.Font.Gotham, Vector2.new(150, math.huge)).Y - 14)
			local v258 = 78 + v257
			local Frame6 = Instance.new("Frame")

			Frame6.Name = "Toy_" .. p88
			Frame6.Size = UDim2.new(1, -10, 0, v258)
			Frame6.BackgroundColor3 = t7.Card
			Frame6.BorderSizePixel = 0
			Frame6.ClipsDescendants = true
			Frame6.ZIndex = 4
			Frame6.Parent = ScrollingFrame

			local UICorner5 = Instance.new("UICorner")

			UICorner5.CornerRadius = UDim.new(0, 9)
			UICorner5.Parent = Frame6

			local UIStroke4 = Instance.new("UIStroke")

			UIStroke4.Color = t7.Stroke
			UIStroke4.Thickness = 1
			UIStroke4.Transparency = 0.35
			UIStroke4.Parent = Frame6

			local Frame7 = Instance.new("Frame")

			Frame7.Name = "ImageContainer"
			Frame7.Size = UDim2.new(0, 54, 0, 54)
			Frame7.Position = UDim2.new(0, 15, 0.5, -27)
			Frame7.BackgroundColor3 = t7.ImageBackground
			Frame7.BorderSizePixel = 0
			Frame7.ZIndex = 5
			Frame7.Parent = Frame6

			local UICorner6 = Instance.new("UICorner")

			UICorner6.CornerRadius = UDim.new(0, 8)
			UICorner6.Parent = Frame7

			local UIStroke5 = Instance.new("UIStroke")

			UIStroke5.Color = t7.Stroke
			UIStroke5.Thickness = 1
			UIStroke5.Transparency = 0.2
			UIStroke5.Parent = Frame7

			local ImageLabel_2 = Instance.new("ImageLabel")

			ImageLabel_2.Name = "ToyImage"
			ImageLabel_2.Size = UDim2.new(1, -6, 1, -6)
			ImageLabel_2.Position = UDim2.new(0, 3, 0, 3)
			ImageLabel_2.BackgroundTransparency = 1
			ImageLabel_2.Image = "rbxassetid://" .. tostring(p89 or 0)
			ImageLabel_2.ScaleType = Enum.ScaleType.Fit
			ImageLabel_2.ZIndex = 6

			if p90 then
				ImageLabel_2.ImageRectSize = Vector2.new(90, 90)
				ImageLabel_2.ImageRectOffset = p90
			end

			ImageLabel_2.Parent = Frame7

			local TextLabel3 = Instance.new("TextLabel")

			TextLabel3.Name = "Name"
			TextLabel3.Size = UDim2.new(1, -165, 0, 20)
			TextLabel3.Position = UDim2.new(0, 79, 0, 10)
			TextLabel3.BackgroundTransparency = 1
			TextLabel3.Font = Enum.Font.GothamBold
			TextLabel3.TextSize = 13
			TextLabel3.TextColor3 = t7.Text
			TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel3.Text = p88
			TextLabel3.TextTruncate = Enum.TextTruncate.AtEnd
			TextLabel3.AutoLocalize = false
			TextLabel3.ZIndex = 6
			TextLabel3.Parent = Frame6

			local TextLabel4 = Instance.new("TextLabel")

			TextLabel4.Name = "Description"
			TextLabel4.Size = UDim2.new(1, -165, 0, 14 + v257)
			TextLabel4.Position = UDim2.new(0, 79, 0, 29)
			TextLabel4.BackgroundTransparency = 1
			TextLabel4.Font = Enum.Font.Gotham
			TextLabel4.TextSize = 10
			TextLabel4.TextColor3 = t7.TextSecondary
			TextLabel4.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel4.TextWrapped = true
			TextLabel4.Text = p91 or "Required for full functionality"
			TextLabel4.TextTruncate = Enum.TextTruncate.None
			TextLabel4.AutoLocalize = false
			TextLabel4.ZIndex = 6
			TextLabel4.Parent = Frame6

			local Frame8 = Instance.new("Frame")

			Frame8.Name = "CostContainer"
			Frame8.Size = UDim2.new(0, 70, 0, 16)
			Frame8.Position = UDim2.new(0, 220, 0, 5)
			Frame8.BackgroundTransparency = 1
			Frame8.ZIndex = 6
			Frame8.Parent = Frame6

			local ImageLabel_3 = Instance.new("ImageLabel")

			ImageLabel_3.Name = "CoinIcon"
			ImageLabel_3.Size = UDim2.new(0, 16, 0, 16)
			ImageLabel_3.Position = UDim2.new(0, 0, 0.5, -8)
			ImageLabel_3.BackgroundTransparency = 1
			ImageLabel_3.Image = "rbxassetid://8659337867"
			ImageLabel_3.ScaleType = Enum.ScaleType.Fit
			ImageLabel_3.ZIndex = 7
			ImageLabel_3.Parent = Frame8

			local TextLabel5 = Instance.new("TextLabel")

			TextLabel5.Name = "Cost"
			TextLabel5.Size = UDim2.new(1, -20, 1, 0)
			TextLabel5.Position = UDim2.new(0, 20, 0, 0)
			TextLabel5.BackgroundTransparency = 1
			TextLabel5.Font = Enum.Font.GothamSemibold
			TextLabel5.TextSize = 9
			TextLabel5.TextColor3 = t7.Warning
			TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel5.Text = p92 ~= nil and tostring(p92) .. " Coins" or "Unknown"
			TextLabel5.TextTruncate = Enum.TextTruncate.AtEnd
			TextLabel5.AutoLocalize = false
			TextLabel5.ZIndex = 7
			TextLabel5.Parent = Frame8

			local Frame9 = Instance.new("Frame")

			Frame9.Name = "StatusBackground"
			Frame9.Size = UDim2.new(0, 73, 0, 19)
			Frame9.Position = UDim2.new(0, 80, 0, v258 - 27)
			Frame9.BackgroundColor3 = t7.DangerBackground
			Frame9.BackgroundTransparency = 0.15
			Frame9.BorderSizePixel = 0
			Frame9.ZIndex = 5
			Frame9.Parent = Frame6
			Frame9.Visible = false

			local UICorner7 = Instance.new("UICorner")

			UICorner7.CornerRadius = UDim.new(0, 6)
			UICorner7.Parent = Frame9

			local TextLabel6 = Instance.new("TextLabel")

			TextLabel6.Name = "Status"
			TextLabel6.Size = UDim2.new(1, -8, 1, 0)
			TextLabel6.Position = UDim2.new(0, 4, 0, 0)
			TextLabel6.BackgroundTransparency = 1
			TextLabel6.Font = Enum.Font.GothamSemibold
			TextLabel6.TextSize = 9
			TextLabel6.TextColor3 = t7.Danger
			TextLabel6.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel6.Text = "Missing"
			TextLabel6.AutoLocalize = false
			TextLabel6.ZIndex = 6
			TextLabel6.Parent = Frame9
			TextLabel6.Visible = false

			local TextButton3 = Instance.new("TextButton")

			TextButton3.Name = "BuyButton"
			TextButton3.Size = UDim2.new(0, 62, 0, 30)
			TextButton3.Position = UDim2.new(1, -72, 0, math.floor(v258 / 2) - 15)
			TextButton3.BackgroundColor3 = t7.AccentDark
			TextButton3.BorderSizePixel = 0
			TextButton3.Text = "Buy"
			TextButton3.Font = Enum.Font.GothamBold
			TextButton3.TextSize = 11
			TextButton3.TextColor3 = t7.Text
			TextButton3.AutoLocalize = false
			TextButton3.ZIndex = 6
			TextButton3.Parent = Frame6

			local UICorner8 = Instance.new("UICorner")

			UICorner8.CornerRadius = UDim.new(0, 7)
			UICorner8.Parent = TextButton3

			local UIStroke6 = Instance.new("UIStroke")

			UIStroke6.Color = Color3.fromRGB(31, 48, 12)
			UIStroke6.Thickness = 2.5
			UIStroke6.Transparency = 0.5
			UIStroke6.Parent = TextButton3
			Frame6.MouseEnter:Connect(function()
				TweenService:Create(Frame6, tweenInfo, {
					BackgroundColor3 = t7.CardHover
				}):Play()
				TweenService:Create(UIStroke4, tweenInfo, {
					Color = t7.StrokeLight,
					Transparency = 0.1
				}):Play()
			end)
			Frame6.MouseLeave:Connect(function()
				TweenService:Create(Frame6, tweenInfo, {
					BackgroundColor3 = t7.Card
				}):Play()
				TweenService:Create(UIStroke4, tweenInfo, {
					Color = t7.Stroke,
					Transparency = 0.35
				}):Play()
			end)

			local t9 = {
				toyName = p88,
				cost = p92,
				frame = Frame6,
				statusLabel = TextLabel6,
				statusBackground = Frame9,
				costLabel = TextLabel5,
				buyButton = TextButton3
			}

			t8[p88] = t9
			TextButton3.MouseEnter:Connect(function()
				if TextButton3.Active then
					TweenService:Create(TextButton3, tweenInfo, {
						BackgroundColor3 = t7.Accent
					}):Play()
				end
			end)
			TextButton3.MouseLeave:Connect(function()
				if TextButton3.Active then
					TweenService:Create(TextButton3, tweenInfo, {
						BackgroundColor3 = t7.AccentDark
					}):Play()
				end
			end)
			TextButton3.MouseButton1Click:Connect(function()
				if not TextButton3.Active then
					return
				end

				TextButton3.Text = "..."
				TextButton3.BackgroundColor3 = Color3.fromRGB(45, 45, 52)
				TextButton3.TextColor3 = t7.TextSecondary
				TextButton3.Active = false

				local _ = pcall(function()
					if BuyToy then
						BuyToy:InvokeServer(p88)
					end
				end)

				task.wait(1)
				v255(t9)

				if not DoesPlayerHasThisToy(p88) then
					notify("Could not buy " .. p88 .. ". Not enough coins?")
				end
			end)
			v255(t9)

			return t9
		end
		local function v280(p93)
			local v281 = t8[p93]

			if v281 and v281.frame then
				v281.frame:Destroy()
			end

			t8[p93] = nil
		end
		local function v282()
			for _, v in pairs(t8) do
				v255(v)
			end
		end

		return {
			AddToy = v256,
			RemoveToy = v280,
			ClearToys = function()
				for _, v in pairs(t8) do
					if v.frame then
						v.frame:Destroy()
					end
				end

				t8 = {}
			end,
			RefreshAll = v282,
			OpenInterface = v252,
			CloseInterface = v254
		}
	end
end

RequiredToys = CreateRequiredToysUI()

local v287 = CreateMissingToysUI()

SpawnToyCooldown = os.clock()
SpawnToy = function(p94)
	local v288 = p94[1]
	local v289 = false

	if v113.Value then
		if _G.PlotPlayerIsOwner then
			local PlotArea = W.Plots[tostring(_G.PlotPlayerIsOwner)]:FindFirstChild("PlotArea")
			local partsInPart = W:GetPartsInPart(PlotArea)

			for _, v in pairs(partsInPart) do
				if v:IsA("BasePart") and v.Parent then
					if v.Parent:FindFirstChildOfClass("Humanoid") then
						if PS:GetPlayerFromCharacter(v.Parent) == LocalPlayer then
							v289 = true

							break
						end
					end
				end
			end
		end

		if not v289 then
			return
		end
	end

	if not DoesPlayerHasThisToy(v288) then
		task.spawn(function()
			local _, v295, v296 = GetToyInfo2(v288)

			RequiredToys.AddToy(v288, v295, v296, ({
				PalletLightBrown = "Used as a collision platform for various exploits",
				MusicKeyboard = "For piano",
				FoodBanana = "For ragdoll",
				OvenDarkGray = "Required to burn and blackify player characters",
				BallSnowball = "Explosive projectile used for blast-based interactions",
				DiceSmall = "Used as a fake aim anchor for firework/explosion effects",
				BombMissile = "Launched projectile for targeted explosive attacks",
				NinjaKunai = "Delete Toys + Anti-Kick Friends",
				NinjaShuriken = "Anti-Kick",
				SoundWaveMaker = "Useless toy in game (EAS Alarm)",
				ToolPencil = "idk, maybe bobgucci (Remove Floor Collision + Make Floor Unstable + Pencil Penis)",
				Campfire = "Used to be for burn aura, now it's useless, only buy if you're rich!",
				CreatureBlobman = "Anti-Grab (Gucci) + Blobman Kick, Kill, Permanent Ownership and more!",
				FoodHamburger = "Become american! (Used to break house barrier)",
				FoodMayonnaise = "Anti-Input"
			})[v288], GetToyCoinsCost(v288))
			RequiredToys.OpenInterface()
		end)

		return
	end

	local function v297(p95)
		for k, v in pairs(ToysQueue) do
			if v[1] == p95 then
				ToysQueue[k] = p94
				ToysQueueTime[p94] = os.clock()

				return k
			end
		end
	end

	PruneToysQueue(5)

	local v300 = v297(v288)

	if v300 then
		if v300 == #ToysQueue then
			v289 = true
		else
			p94 = ToysQueue[#ToysQueue]
			v289 = true
		end
	else
		table.insert(ToysQueue, 1, p94)
		ToysQueueTime[p94] = os.clock()
	end

	if os.clock() - SpawnToyCooldown < 0.15 then
		return
	end

	if v289 then
		if typeof(p94) == "table" then
			task.spawn(function()
				SpawnToyRF:InvokeServer(unpack(p94))
			end)
		end

		SpawnToyCooldown = os.clock()
	end
end

do
	GetRank = function(p96, p97)
		if not (typeof(p96) == "Instance" and p96.Parent) then
			return
		end

		local now = os.clock()
		local attribute = p96:GetAttribute("LastTimeRankUpdate") or 0

		if now - attribute < 300 then
			local now2 = os.clock()

			while true do
				if p96:GetAttribute("Rank") == nil and p96.Parent then
					if os.clock() - now2 < 5 then
						task.wait()

						continue
					end

					break
				end

				break
			end

			return p96:GetAttribute("Rank")
		end

		p96:SetAttribute("LastTimeRankUpdate", now)

		local n4 = 0
		local s2 = "Common"
		local ok, result2 = pcall(function()
			return p96:GetRankInGroup(p97)
		end)

		if ok then
			n4 = result2
		end

		local ok3, result3 = pcall(function()
			return p96:GetRoleInGroup(p97)
		end)

		if ok3 then
			s2 = result3
		end

		local s3 = "Common"

		if n4 == 255 then
			s3 = "Leader"
		elseif n4 == 4 then
			if s2 == "High Rank Admin" then
				s3 = "High Rank Admin"
			end
		elseif n4 == 3 then
			s3 = "Low Rank Admin"
		elseif n4 == 2 then
			s3 = "Goon"
		end

		p96:SetAttribute("Rank", s3)

		return s3
	end
end

for _, player in ipairs(PS:GetPlayers()) do
	task.spawn(GetRank, player, 16168861)
end

PS.PlayerAdded:Connect(function(player)
	task.spawn(GetRank, player, 16168861)
end)

do
	verifyDev = function(p98)
		local playerFromCharacter
		local v314, v315

		if typeof(p98) ~= "Instance" then
			v314 = false

			if playerFromCharacter then
				v315 = GetRank(playerFromCharacter, 16168861)

				if v315 == "Leader" or v315 == "High Rank Admin" or v315 == "Low Rank Admin" or v315 == "Goon" then
					v314 = true

					if not GetAdminState(playerFromCharacter.Name, "Protection") then
						v314 = false
					end
				end

				return v314
			end

			return
		end

		local ok = not (not not p98:IsA("Model") and not not p98:FindFirstChildOfClass("Humanoid"))

		if not ok then
			ok = not PS:GetPlayerFromCharacter(p98)
		end

		if ok then
			if not p98:IsA("Player") then
				return
			end

			playerFromCharacter = p98
			v314 = false

			if playerFromCharacter then
				v315 = GetRank(playerFromCharacter, 16168861)

				if v315 == "Leader" or v315 == "High Rank Admin" or v315 == "Low Rank Admin" or v315 == "Goon" then
					v314 = true

					if not GetAdminState(playerFromCharacter.Name, "Protection") then
						v314 = false
					end
				end

				return v314
			end

			return
		end

		playerFromCharacter = PS:GetPlayerFromCharacter(p98)
		v314 = false

		if playerFromCharacter then
			v315 = GetRank(playerFromCharacter, 16168861)

			if v315 == "Leader" or v315 == "High Rank Admin" or v315 == "Low Rank Admin" or v315 == "Goon" then
				v314 = true

				if not GetAdminState(playerFromCharacter.Name, "Protection") then
					v314 = false
				end
			end

			return v314
		end
	end
end

do
	IsHoldingAdminPlayer = function()
		local GrabParts = W:FindFirstChild("GrabParts")

		if GrabParts and GrabParts:FindFirstChild("GrabPart") then
			if GrabParts.GrabPart:FindFirstChild("WeldConstraint") then
				local Part1 = GrabParts.GrabPart.WeldConstraint.Part1

				if Part1 and verifyDev(Part1.Parent) then
					return true
				end
			end
		end
	end
end

do
	WhatIsHolding = function(p99)
		if p99 and p99:FindFirstChild("GrabPart") then
			if p99.GrabPart:FindFirstChild("WeldConstraint") then
				local Part1 = p99.GrabPart.WeldConstraint.Part1

				if Part1 and Part1.Parent then
					if Part1.Parent:IsA("Model") then
						local Parent = Part1.Parent

						if PS:GetPlayerFromCharacter(Part1.Parent) then
							return "Player"
						end

						if Parent:FindFirstChild("Pet") then
							return "Follow NPC"
						end

						return "Object"
					end
				end
			end
		end
	end
end

tableAlphabeticOrder = function(p100, p101)
	return p100:lower() < p101:lower()
end
updatePlayerlist = function(p102)
	local t10 = {}

	for _, player in pairs(PS:GetPlayers()) do
		if player.UserId ~= LocalPlayer.UserId then
			table.insert(t10, player.Name .. " " .. "(" .. player.DisplayName .. ")")
		end
	end

	table.sort(t10, tableAlphabeticOrder)
	p102:Refresh(t10, true)
end

local t11 = {}
local t12 = {}

do
	updatePlayerlist2 = function(p103, p104)
		local t13 = {}

		for _, v in pairs(p104) do
			if typeof(v) == "string" then
				table.insert(t13, v)
			end
		end

		p103:Refresh(t13, true)
	end
end

do
	updatePlayerlist3 = function(p105)
		local t14 = {}

		for _, player in pairs(PS:GetPlayers()) do
			if player.UserId ~= LocalPlayer.UserId then
				table.insert(t14, player.Name .. " " .. "(" .. player.DisplayName .. ")")
			end
		end

		table.sort(t14, tableAlphabeticOrder)
		table.insert(t14, 1, LocalPlayer.Name .. " " .. "(" .. LocalPlayer.DisplayName .. ")")
		p105:Refresh(t14, true)
	end
end

MakeSearchBar = function()
	return nil
end
lookAt = function(p106, p107)
	local Unit = (p107 - p106).Unit
	local vector3 = Vector3.new(0, 1, 0)
	local v334 = Unit:Cross(vector3)
	local v335 = v334:Cross(Unit)

	return CFrame.fromMatrix(p106, v334, v335)
end

do
	spawntoy = function(p108, p109)
		if p108 == "Spawn Toy (TAB)" and p109 == Enum.UserInputState.Begin then
			SpawnToyRF:InvokeServer(unpack({
				_G.SelectedToy,
				LocalPlayer.Character.CamPart.CFrame,
				(Vector3.new(0, LocalPlayer.Character.CamPart.Orientation.Y, 0))
			}))
		end
	end
end

SafeGetObject = function(p110)
	local ok, result2 = pcall(function()
		return game:GetObjects(p110)
	end)

	if ok then
		if result2 and #result2 ~= 0 then
			return result2[1]
		end

		warn("Asset vazio:", p110)

		return nil
	end

	warn("Falha ao carregar asset:", p110)

	return nil
end
task.spawn(function()
	EnderEffect = SafeGetObject("rbxassetid://134869907133634")
end)

do
	task.spawn(function()
		flash_particles = SafeGetObject("rbxassetid://101178282415854")
	end)
end

AllTPEffects_GPSound = Instance.new("SoundGroup", SoundService)
AllTPEffects_GPSound.Name = "Main"
endereffect_sound = Instance.new("Sound")
endereffect_sound.SoundId = "rbxassetid://140589682451488"
endereffect_sound.Volume = 1
endereffect_sound.SoundGroup = AllTPEffects_GPSound
flashstep_sound = Instance.new("Sound")
flashstep_sound.SoundId = "rbxassetid://124934430745275"
flashstep_sound.Volume = 0.85
flashstep_sound.SoundGroup = AllTPEffects_GPSound
allowedParts = {
	"Head",
	"Torso",
	"Left Arm",
	"Right Arm",
	"Left Leg",
	"Right Leg"
}
flashEffectParticle = function(p111, p112)
	if not flash_particles then
		return
	end

	local clone = flash_particles:Clone()

	clone.CFrame = p111
	clone.Parent = workspace
	clone.CanQuery = false
	clone.CanTouch = false
	clone.Anchored = true
	clone.CanCollide = false

	for _, descendant in pairs(clone:GetDescendants()) do
		if descendant:IsA("ParticleEmitter") then
			descendant.Enabled = false
		end
	end

	local Flashstep = clone.Flashstep

	Flashstep.LockedToPart = true
	Flashstep.Lifetime = NumberRange.new(0.015, 0.025)
	Flashstep.Size = NumberSequence.new(0.25, 0.35)

	for _, child in pairs(p112:GetChildren()) do
		if table.find(allowedParts, child.Name) then
			local clone2 = Flashstep:Clone()

			clone2.Parent = child
			DB:AddItem(clone2, 3)
			task.spawn(function()
				for i = 1, Flashstep.Rate do
					clone2:Emit(2)
					task.wait()
				end
			end)
		end
	end

	local Smoke = clone.Attachment.Smoke

	task.spawn(function()
		for i = 1, 20 do
			Smoke:Emit(2)
			task.wait()
		end
	end)
	task.spawn(function()
		setTransparency(1)
		task.wait(0.15)
		setTransparency(0)
	end)

	local clone2 = flashstep_sound:Clone()

	clone2.Parent = p112:FindFirstChild("HumanoidRootPart")
	clone2:Play()
	DB:AddItem(clone2, 2)
	DB:AddItem(clone, 2.5)
	DB:AddItem(Flashstep, 2.5)
end

do
	EnderTeleportEffect = function(p113, p114)
		task.spawn(function()
			local clone = EnderEffect:Clone()

			clone.CFrame = p113
			clone.Parent = workspace
			clone.CanQuery = false
			clone.CanTouch = false
			clone.Anchored = true
			clone.CanCollide = false
			task.spawn(function()
				for _, child in pairs(clone:GetChildren()) do
					if child:IsA("ParticleEmitter") then
						child.Enabled = false
						child:Emit(20)
					end
				end

				setTransparency(1)
				task.wait(0.15)
				setTransparency(0)
			end)

			local clone2 = endereffect_sound:Clone()

			clone2.Parent = p114:FindFirstChild("HumanoidRootPart")
			clone2:Play()
			DB:AddItem(clone2, 2)
			DB:AddItem(clone, 5)
		end)
	end
end

teleportfunc = function()
	local v353 = _G.CloneChar and _G.CloneChar.Parent and not _G.CloneDisabled
	local CloneChar = v353 and _G.CloneChar

	CloneChar = CloneChar or _G.ControllingCreature or LocalPlayer.Character

	if _G.ControllingCreature then
	end

	local CamPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("CamPart")

	if not CamPart then
		return
	end

	local Position = CamPart.Position
	local v357 = CamPart.CFrame.lookVector * 5000
	local raycastParams = RaycastParams.new()

	raycastParams.FilterDescendantsInstances = {
		LocalPlayer.Character,
		_G.CloneChar,
		workspace.PlotItems.PlayersInPlots
	}
	raycastParams.FilterType = Enum.RaycastFilterType.Exclude

	local hit_ = W:Raycast(Position, v357, raycastParams)

	if hit_ then
		local Position2 = hit_.Position
		local v361 = GetPlayerCFrame()
		local cFrame = CFrame.new(Position2.X, Position2.Y + 3, Position2.Z) * v361.Rotation
		local CloneHRP = v353 and _G.CloneHRP or CloneChar:FindFirstChild("HumanoidRootPart")

		if CloneHRP then
			CloneHRP.CFrame = cFrame
			CloneHRP.AssemblyLinearVelocity = Vector3.zero
		end

		if TeleportEffectVFX == "Ender" then
			EnderTeleportEffect(cFrame, LocalPlayer.Character)
			v117:FireServer({
				Caster = LocalPlayer,
				Command = "EnderTP",
				Target = GetFullPath(CloneChar),
				CFrame = cFrame
			})
		elseif TeleportEffectVFX == "Flash Step" then
			flashEffectParticle(cFrame, LocalPlayer.Character)
			v117:FireServer({
				Caster = LocalPlayer,
				Command = "FlashStepTP",
				Target = GetFullPath(CloneChar),
				CFrame = cFrame
			})
		end

		if _G.IsCharacterInRagdoll then
			local t15 = {
				Head = true,
				["Right Arm"] = true,
				["Left Arm"] = true,
				["Left Leg"] = true,
				["Right Leg"] = true,
				Torso = true
			}

			for _, child in ipairs(CloneChar:GetChildren()) do
				if t15[child.Name] and child:IsA("BasePart") then
					child.CFrame = _G.UniversalPlayerRoot.CFrame * v361.Rotation
				end
			end
		end
	end
end

do
	teleport = function(p115, p116)
		if p115 == "Teleport(Z)" then
			if p116 == Enum.UserInputState.Begin then
				teleportfunc()
			end
		end
	end
end

do
	IsFriend = function(p117)
		if table.find(t12, p117) then
			return true
		end
	end
end

CheckFriendsWithCondition = function(p118, p119)
	return IsFriend(p118) and p119
end

do
	local connection
	local u368

	Noclip2 = nil
	Clip2 = nil
	noclip = function()
		if not connection then
			u368 = false

			local function v369()
				if u368 == false and game.Players.LocalPlayer.Character ~= nil then
					for _, child in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if child:IsA("BasePart") and child.CanCollide then
							if _G.IsCharacterInRagdoll then
								child.CanCollide = true
							else
								child.CanCollide = false
							end
						end
					end
				end
			end

			connection = R.Stepped:Connect(v369)
		end
	end
	clip = function()
		if not _G.NoclipToggle then
			if connection then
				connection:Disconnect()
				connection = nil
			end

			u368 = true
		end
	end
end

bl_namesPART = { "CamPart" }

do
	nocol = function(p120, p121)
		if not p120 then
			return
		end

		local collisionGroup, collisionGroup2

		if PS:GetPlayerFromCharacter(p120) then
			collisionGroup = "PlotPlayers"
			collisionGroup2 = "Players"
		else
			collisionGroup = "PlotItems"
			collisionGroup2 = "Items"
		end

		if p121 == true then
			for _, child in pairs(p120:GetChildren()) do
				if child:IsA("BasePart") then
					if not table.find(bl_namesPART, child.Name) then
						child.CollisionGroup = collisionGroup
					end
				end
			end
		else
			for _, child in pairs(p120:GetChildren()) do
				if child:IsA("BasePart") and not table.find(bl_namesPART, child.Name) then
					child.CollisionGroup = collisionGroup2
				end
			end
		end
	end
end

AntiFlingPlrC = {}

do
	NoClipPlayerToLocalPlayer = function(p122)
		local Character = p122.Character

		Character = Character or p122.CharacterAdded:Wait()

		if typeof(Character) ~= "Instance" or not Character:IsA("Model") or not _G.AntiFlingPlayers then
			return
		end

		if not Character then
			return false
		end

		WaitForChildrenAddedOnce(Character, 0.025, function()
			nocol(Character, _G.AntiFlingPlayers)

			local connection = Character:GetPropertyChangedSignal("Parent"):Connect(function()
				nocol(Character, _G.AntiFlingPlayers)
			end)

			table.insert(AntiFlingPlrC, connection)
		end)

		return true
	end
end

countToys = function(p123)
	local n5 = 0

	for _, child in pairs(u112:GetChildren()) do
		if child.Name == p123 then
			n5 += 1
		end
	end

	return n5
end

do
	CheckNetworkOwnerShipOnPlayer = function(p124, p125)
		if typeof(p124) == "Instance" then
			if p124:IsA("Player") and p124.Character then
				if p124.Character:FindFirstChild("Head") then
					if p124.Character.Head:FindFirstChild("PartOwner") and p124.Character.Head.PartOwner.Value == LocalPlayer.Name then
						if p125 then
							return p124.Character.Head.PartOwner
						end

						return true
					end
				end
			end
		end
	end
end

CheckNetworkOwnerShipPermanentOnPlayer = function(p126, p127)
	if typeof(p126) == "Instance" then
		if p126:IsA("Player") and p126.Character then
			if p126.Character:FindFirstChild("HumanoidRootPart") then
				if p126.Character.HumanoidRootPart:FindFirstChild("FirePlayerPart") then
					if p126.Character.HumanoidRootPart.FirePlayerPart:FindFirstChild("PartOwner") and p126.Character.HumanoidRootPart.FirePlayerPart.PartOwner.Value == LocalPlayer.Name then
						if p127 then
							return p126.Character.HumanoidRootPart.FirePlayerPart.PartOwner
						end

						return true
					end
				end
			end
		end
	end
end

do
	CheckNetworkOwnerShipOnPart = function(p128, p129)
		if typeof(p128) == "Instance" then
			if p128:FindFirstChild("PartOwner") and p128.PartOwner.Value == LocalPlayer.Name then
				if p129 then
					return p128.PartOwner
				end

				return true
			end
		end
	end
end

do
	SNOWship = function(p130)
		if p130 and typeof(p130) == "Instance" then
			local v383 = LocalPlayer:DistanceFromCharacter(p130.Position)

			if LocalPlayer.Character then
				if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v383 <= 30 then
					v119:FireServer(p130, lookAt(LocalPlayer.Character.HumanoidRootPart.Position, p130.Position))
				end
			end
		end
	end
end

IsPlayerInsideSafeZone = function(p131)
	if typeof(p131) == "Instance" and p131:IsA("Player") then
		if p131:FindFirstChild("InPlot") and p131.InPlot.Value then
			return true
		end
	end
end

do
	IsPlayerFloating = function(p132)
		if typeof(p132) == "Instance" and p132:IsA("Player") and p132.Character then
			if p132.Character:FindFirstChildOfClass("Humanoid") then
				if p132.Character:FindFirstChildOfClass("Humanoid").FloorMaterial == Enum.Material.Air then
					return true
				end
			end
		end
	end
end

CheckPlayerVelocity = function(p133)
	if typeof(p133) == "Instance" then
		if p133:IsA("Player") and p133.Character then
			if p133.Character:FindFirstChild("HumanoidRootPart") then
				return p133.Character.HumanoidRootPart.Velocity.Magnitude
			end
		end
	end
end

do
	SNOWshipOnce = function(p134)
		if typeof(p134) ~= "Instance" then
			return
		end

		local v384 = LocalPlayer:DistanceFromCharacter(p134.Position)

		if LocalPlayer.Character then
			if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				if CheckNetworkOwnerShipOnPart(p134) then
					return true
				end

				if v384 <= 30 then
					v119:FireServer(p134, lookAt(LocalPlayer.Character.HumanoidRootPart.Position, p134.Position))
				end
			end
		end
	end
end

do
	CNSOnPartAndSNOWship = function(p135, p136)
		print(p135, p136)

		if CheckNetworkOwnerShipOnPart(p135) then
			return true
		end

		SNOWship(p136)
	end
end

SNOWshipOnceAndCheck = function(p137, p138)
	local v385 = p138 or 5
	local v386 = LocalPlayer:DistanceFromCharacter(p137.Position)

	if LocalPlayer.Character then
		if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			if CheckNetworkOwnerShipOnPart(p137) then
				return true
			end

			if v386 <= 30 then
				v119:FireServer(p137, lookAt(LocalPlayer.Character.HumanoidRootPart.Position, p137.Position))
			end

			local v387 = false

			for i = 0, v385 do
				v387 = CheckNetworkOwnerShipOnPart(p137, true)

				if not v387 then
					task.wait()

					continue
				end

				break
			end

			return v387
		end
	end
end

do
	SetMultiDropdown = function(p139, p140)
		local t16 = {}

		for _, v in ipairs(p140) do
			t16[v] = true
		end

		for _, button in pairs(p139.Buttons) do
			local Name = button.Name

			if table.find(p139.Value, button.Id) ~= nil ~= (t16[Name] or false) then
				p139:Set(Name)
			end
		end
	end
end

do
	SNOWshipTrack = function(p141)
		if p141.Parent then
			if p141.Parent:IsA("Model") then
				local Parent = p141.Parent
				local attribute = Parent:GetAttribute("OwnershipTrackConnected")
				local attribute2 = Parent:GetAttribute("CreatedConnected2")

				if LocalPlayer.Character then
					if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
						local v398 = LocalPlayer:DistanceFromCharacter(p141.Position)

						if attribute2 then
							if attribute then
								return true
							end

							if v398 <= 30 then
								v119:FireServer(p141, lookAt(LocalPlayer.Character.HumanoidRootPart.Position, p141.Position))
							end
						else
							Parent:SetAttribute("CreatedConnected2", true)
							print("Create Connection 2")
							Parent.DescendantAdded:Connect(function(descendant)
								if descendant.Name == "PartOwner" and descendant.Value == LocalPlayer.Name then
									Parent:SetAttribute("OwnershipTrackConnected", true)
								elseif descendant.Name == "PartOwner" then
									if descendant.Value ~= LocalPlayer.Name then
										Parent:SetAttribute("OwnershipTrackConnected", false)
									end
								end
							end)
						end
					end
				end
			end
		end
	end
end

do
	SNOWshipOnceAndDelete = function(p142)
		local v399 = LocalPlayer:DistanceFromCharacter(p142.Position)
		local attribute = p142:GetAttribute("Connected")
		local attribute2 = p142:GetAttribute("CreatedConnected")

		if LocalPlayer.Character then
			if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				if CheckNetworkOwnerShipOnPart(p142) then
					p142:SetAttribute("Connected", true)
					v118:FireServer(p142)

					if not attribute2 then
						p142:SetAttribute("CreatedConnected", true)
						print("Create Connection")
						p142.ChildAdded:Connect(function(child)
							if child.Name == "PartOwner" and child.Value ~= LocalPlayer.Name then
								p142:SetAttribute("Connected", false)
							end
						end)
					end
				elseif v399 <= 30 and not attribute then
					v119:FireServer(p142, lookAt(LocalPlayer.Character.HumanoidRootPart.Position, p142.Position))
				end
			end
		end
	end
end

do
	IsPointInsidePart = function(p143, p144)
		local v402 = p143.CFrame:PointToObjectSpace(p144)
		local v403 = p143.Size / 2

		return math.abs(v402.X) <= v403.X and math.abs(v402.Y) <= v403.Y and math.abs(v402.Z) <= v403.Z
	end
end

do
	GetPlotPlayerIs = function(p145)
		local Character = p145.Character

		if Character then
			local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
			local LeftArm = Character:FindFirstChild("Left Arm")
			local RightArm = Character:FindFirstChild("Right Arm")
			local LeftLeg = Character:FindFirstChild("Left Leg")
			local RightLeg = Character:FindFirstChild("Right Leg")

			for i = 1, 5 do
				local v411 = workspace.Plots["Plot" .. i]
				local PlotArea = v411:FindFirstChild("PlotArea")

				if PlotArea then
					for _, v in pairs({
						HumanoidRootPart,
						LeftArm,
						RightArm,
						LeftLeg,
						RightLeg
					}) do
						if IsPointInsidePart(PlotArea, v.Position) then
							return v411.Name
						end
					end
				end
			end
		end
	end
end

do
	SNOWshipPlayer = function(p146, p147)
		if LocalPlayer.Character then
			if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and typeof(p146) == "Instance" and p146:IsA("Player") and p146.Character then
				if p146.Character:FindFirstChild("HumanoidRootPart") then
					local HumanoidRootPart = p146.Character.HumanoidRootPart
					local v416 = LocalPlayer:DistanceFromCharacter(HumanoidRootPart.Position)

					if CheckNetworkOwnerShipOnPlayer(p146) then
						if type(p147) == "function" then
							p147()
						end

						return true
					end

					if v416 < 30 then
						v119:FireServer(HumanoidRootPart, lookAt(LocalPlayer.Character.HumanoidRootPart.Position, HumanoidRootPart.Position))
					end
				end
			end
		end
	end
end

do
	GetPlayerCharacter = function()
		if LocalPlayer.Character then
			if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				if LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
					return LocalPlayer.Character
				end
			end
		end
	end
end

_G.TP_Priority = -math.huge
cooldownThread = nil
clone_cooldownThread = nil
TeleportingF_Var = false
CloneTeleportId = 0
TeleportId = 0
TeleportPlayer = function(p148, p149, p150, p151, p152)
	local tpPriority = tonumber(p149) or 0
	local v418 = tonumber(p151) or 0.5

	if p152 == nil then
		p152 = true
	end

	if TeleportingF_Var and tpPriority < _G.TP_Priority then
		return
	end

	local v419 = GetPlayerCharacter()
	local HumanoidRootPart = v419 and v419:FindFirstChild("HumanoidRootPart")
	local Humanoid = v419 and v419:FindFirstChildOfClass("Humanoid")

	if not v419 or not HumanoidRootPart or not Humanoid or typeof(p148) ~= "CFrame" then
		return
	end

	TeleportId += 1

	local CloneTeleportId_

	TeleportingF_Var = true
	_G.TP_Priority = tpPriority
	TeleportResetDeadline = os.clock() + 2

	if not TeleportResetThread then
		TeleportResetThread = task.spawn(function()
			while os.clock() < TeleportResetDeadline do
				task.wait(TeleportResetDeadline - os.clock())
			end

			TeleportResetThread = nil
			_G.TP_Priority = -math.huge
			TeleportingF_Var = false
		end)
	end

	if p150 then
		makeAcloneyourself()
		CloneTeleportId += 1
		CloneTeleportId_ = CloneTeleportId
	end

	HumanoidRootPart.CFrame = HumanoidRootPart.CFrame.Rotation + p148.Position
	_G.LastValidCFrame = HumanoidRootPart.CFrame

	if Humanoid.SeatPart == nil or tostring(Humanoid.SeatPart.Parent) ~= "CreatureBlobman" then
		Humanoid.Sit = false
	end

	if _G.IsCharacterInRagdoll then
		for _, child in pairs(v419:GetChildren()) do
			if child.Name == "Head" or child.Name == "Right Arm" or child.Name == "Left Arm" or child.Name == "Left Leg" or child.Name == "Right Leg" or child.Name == "Torso" then
				child.CFrame = HumanoidRootPart.CFrame
			end
		end
	end

	if p152 then
		HumanoidRootPart.Velocity = Vector3.new(HumanoidRootPart.Velocity.X, 0, HumanoidRootPart.Velocity.Z)
	end

	if p150 then
		task.spawn(function()
			task.wait(v418)

			if CloneTeleportId_ == CloneTeleportId then
				disableClone()

				return
			end
		end)
	end
end
GetPlayerCFrame = function()
	return _G.UniversalPlayerRoot.CFrame
end

do
	GetPlayerRoot = function()
		local v425 = GetPlayerCharacter()

		if v425 then
			return v425.HumanoidRootPart
		end
	end
end

GetPlayerHRPByName = function(p153)
	if PS:FindFirstChild(p153) and PS[p153].Character then
		return PS[p153].Character:FindFirstChild("HumanoidRootPart")
	end
end

do
	Getdistancefromcharacter = function(p154)
		return LocalPlayer:DistanceFromCharacter(p154)
	end
end

AnchoredObjects = {}
CompiledGroups = {}

do
	local Attachment = Instance.new("Attachment")
	local Sound = Instance.new("Sound", Attachment)
	local ParticleEmitter = Instance.new("ParticleEmitter", Attachment)

	Sound.Name = "soundeffect"
	Sound.SoundId = "rbxassetid://1091083826"
	ParticleEmitter.LightInfluence = 1
	ParticleEmitter.Lifetime = NumberRange.new(2, 3)
	ParticleEmitter.Texture = "rbxassetid://15668608167"
	ParticleEmitter.Transparency = NumberSequence.new(0, 1)
	ParticleEmitter.Speed = NumberRange.new(6, 6)
	ParticleEmitter.Size = NumberSequence.new(0, 1)
	ParticleEmitter.SpreadAngle = Vector2.new(360, 360)
	ParticleEmitter.Rate = 20
	ParticleEmitter.Enabled = false
	ParticleEmitter.Name = "particle"
	anchorobjecteffect = function(p155)
		local clone = Attachment:Clone()

		clone.Parent = p155
		clone.soundeffect:Play()
		clone.particle:Emit(25)
		DB:AddItem(clone)
	end
end

ExecuteCounterAttack = function(p156, p157, p158)
	local v430 = p157 or "Repulsion"

	if not p156 or p156 == LocalPlayer or verifyDev(p156) ~= false then
		return
	end

	local Character = p156.Character
	local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
	local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

	if not HumanoidRootPart then
		return
	end

	local v434

	if v430 == "Repulsion" then
		v434 = function()
			local v435 = lookAt(LocalPlayer.Character.HumanoidRootPart.Position, HumanoidRootPart.Position)
			local BodyVelocity = Instance.new("BodyVelocity", HumanoidRootPart)

			BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			BodyVelocity.Velocity = Vector3.new(v435.lookVector.X, 0.5, v435.lookVector.Z) * 100
			wait()
			BodyVelocity:Destroy()
			v118:FireServer(HumanoidRootPart)
		end
	elseif v430 == "Freeze" then
		v434 = function()
			if Humanoid then
				Humanoid.WalkSpeed = 0
				Humanoid.Sit = false
				Humanoid.JumpPower = 0
			end
		end
	elseif v430 == "Kick" then
		v434 = function()
			CreateSkyVelocity(HumanoidRootPart)
			wait(1)
			v118:FireServer(HumanoidRootPart)
		end
	elseif v430 == "Death" then
		v434 = function()
			if Humanoid then
				for i = 0, 20 do
					if IsNetworkOwner(HumanoidRootPart) and CheckNetworkOwnerShipOnPlayer(p156) then
						SetCollisionObjectOff(Character)
						W.FallenPartsDestroyHeight = -50000
						HumanoidRootPart.CFrame = CFrame.new(0, -49900, 0)
						task.wait(0.1)
						HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, -1000000, 0)
					end

					task.wait()
				end
			end
		end
	end

	if v430 == "Grab" then
		for i = 1, 50 do
			wait(0.05)

			if GetTargetFakeGrabHolding() == p156 then
				return true
			end

			if _G.RealGrabPartsHolding then
				if PS:GetPlayerFromCharacter(_G.RealGrabPartsHolding.Parent) == p156 then
					return true
				end
			end

			if _G.ActualFakeGrabParts and GetTargetFakeGrabHolding() ~= p156 then
				_G.ActualFakeGrabParts:Destroy()
			else
				GrabPartFake(HumanoidRootPart, p156, true)
			end
		end
	elseif v434 then
		for i = 1, 50 do
			if not HumanoidRootPart.Parent then
				break
			end

			if not CheckNetworkOwnerShipOnPlayer(p156) then
				if p158 and Getdistancefromcharacter(HumanoidRootPart.Position) > 20 then
					TeleportPlayer(HumanoidRootPart.CFrame * CFrame.new(0, 0, 4), 2, true, 1)
				end

				if i == 25 then
					DestroyGucci(p156)
				end

				v119:FireServer(HumanoidRootPart, HumanoidRootPart.CFrame)
				task.wait()

				continue
			end

			v434()

			return true
		end
	end
end
GrabSpamKinds = {
	Anchor = {
		Enabled = "AnchorPunishGrabSpam",
		Mode = "AnchorPunishMode",
		Grabs = "AnchorPunishGrabs",
		Message = " is spamming your anchored object!"
	},
	Protect = {
		Enabled = "ProtectPunishGrabSpam",
		Mode = "ProtectPunishMode",
		Grabs = "ProtectPunishGrabs",
		Message = " is spamming grab on a protected player!"
	}
}
GrabSpamLog = {
	Anchor = {},
	Protect = {}
}
GrabSpamPunishing = {}
StartGrabSpamPunishment = function(p159, p160)
	local v440 = GrabSpamKinds[p160]

	GrabSpamPunishing[p159] = true
	notify(p159.DisplayName .. v440.Message)
	task.spawn(function()
		local now = os.clock()

		while _G[v440.Enabled] and p159.Parent and os.clock() - now < 10 do
			if IsPlayerInsideSafeZone(p159) then
				task.wait(0.1)

				continue
			end

			local ok, result2 = pcall(ExecuteCounterAttack, p159, _G[v440.Mode], true)

			if not ok then
				warn("[" .. p160 .. " Punish] " .. tostring(result2))
			end

			if not ok or not result2 then
				task.wait(0.1)

				continue
			end

			break
		end

		GrabSpamPunishing[p159] = nil
	end)
end
RegisterGrabSpam = function(p161, p162)
	local v444 = GrabSpamKinds[p162]

	if _G[v444.Enabled] then
		if p161 ~= LocalPlayer.Name then
			local v445 = PS:FindFirstChild(p161)

			if not v445 or GrabSpamPunishing[v445] then
				return
			end

			local now = os.clock()
			local v447 = GrabSpamLog[p162][p161] or {}

			GrabSpamLog[p162][p161] = v447

			for i = #v447, 1, -1 do
				if now - v447[i] > 3 then
					table.remove(v447, i)
				end
			end

			table.insert(v447, now)

			if (_G[v444.Grabs] or 5) <= #v447 then
				table.clear(v447)
				StartGrabSpamPunishment(v445, p162)
			end

			return
		end
	end
end
RegisterAnchorGrab = function(p163)
	RegisterGrabSpam(p163, "Anchor")
end
WatchBuildGrabs = function(p164, p165)
	p165[#p165 + 1] = p164.DescendantAdded:Connect(function(descendant)
		if descendant.Name == "PartOwner" then
			if descendant:IsA("StringValue") then
				RegisterAnchorGrab(tostring(descendant.Value))
			end
		end
	end)
end
checkauto_os = function(p166)
	if typeof(p166) ~= "table" then
		return
	end

	for k, v in pairs(p166) do
		if not IsNetworkOwner(v.PartAnchored) then
			local v451 = k

			if v451.Parent then
				local v452 = SFcQ(v451)
				local Head = v451:FindFirstChild("Head") or v452
				local playerFromCharacter = PS:GetPlayerFromCharacter(v451)
				local v455 = false

				if playerFromCharacter and (_G.OwnershipModeTarget == 1 or _G.OwnershipModeTarget == 3) or playerFromCharacter == nil and (_G.OwnershipModeTarget == 2 or _G.OwnershipModeTarget == 3) then
					v455 = true
				end

				if v452 and v455 then
					if Getdistancefromcharacter(v452.Position) < 30 then
						CNSOnPartAndSNOWship(Head, v452)
					elseif _G.OwnershipModeAnchorBehavior == "Teleport" and v452.Velocity.Magnitude < 50 then
						for i = 0, 15 do
							if CNSOnPartAndSNOWship(Head, v452) then
								print("Break the auto")

								break
							end

							SitOnVS(v451:FindFirstChildOfClass("VehicleSeat"), true, false)
							TeleportPlayer(v452.CFrame, 1.5, true)
							task.wait(0.1)
						end
					end
				end
			end
		end
	end
end
autosetownership = function()
	checkauto_os(AnchoredObjects)
	wait()
	checkauto_os(CompiledObjects)
end
SB_LineTransparencyValue = Instance.new("NumberValue")
SB_SurfaceTransparencyValue = Instance.new("NumberValue")
SB_AnchoredColor3 = Instance.new("Color3Value")
SB_AnchoredColor3Surface = Instance.new("Color3Value")
SB_GlueColor3 = Instance.new("Color3Value")
SB_GlueColor3Surface = Instance.new("Color3Value")
SB_MainGlueColor3 = Instance.new("Color3Value")
SB_MainGlueColor3Surface = Instance.new("Color3Value")
SB_AnchoredColor3.Value = Color3.fromRGB(22, 2, 138)
SB_AnchoredColor3Surface.Value = Color3.fromRGB(38, 85, 172)
SB_GlueColor3.Value = Color3.fromRGB(242, 124, 17)
SB_GlueColor3Surface.Value = Color3.fromRGB(253, 243, 130)
SB_MainGlueColor3.Value = Color3.fromRGB(0, 85, 0)
SB_MainGlueColor3Surface.Value = Color3.fromRGB(89, 225, 65)
ChangeSBstate = function(p167, p168)
	if typeof(p167) == "Instance" and p167:IsA("SelectionBox") then
		p167:SetAttribute("SB_State", p168)
		p167.SurfaceTransparency = SB_SurfaceTransparencyValue.Value
		p167.Transparency = SB_LineTransparencyValue.Value

		if p168 == "Anchored" then
			p167.Color3 = SB_AnchoredColor3.Value
			p167.SurfaceColor3 = SB_AnchoredColor3Surface.Value
		elseif p168 == "Glue" then
			p167.Color3 = SB_GlueColor3.Value
			p167.SurfaceColor3 = SB_GlueColor3Surface.Value
		elseif p168 == "GluePrimary" then
			p167.Color3 = SB_MainGlueColor3.Value
			p167.SurfaceColor3 = SB_MainGlueColor3Surface.Value
		else
			p167.Color3 = Color3.fromRGB(139, 0, 0)
			p167.SurfaceColor3 = Color3.fromRGB(193, 0, 0)
		end
	end
end

do
	DisconnectObject = function(p169)
		if typeof(p169) == "Instance" and AnchoredObjects[p169] then
			local v457 = AnchoredObjects[p169]
			local BodyPosition = v457.BodyPosition
			local BodyGyro = v457.BodyGyro
			local SB = v457.SB
			local Connections = v457.Connections

			if BodyPosition then
				BodyPosition.Parent = p169
			end

			if BodyGyro then
				BodyGyro.Parent = p169
			end

			if SB then
				SB.Visible = false
			end

			v457.PartAnchored = nil

			if Connections then
				for _, connection in pairs(v457.Connections) do
					connection:Disconnect()
				end
			end

			p169:SetAttribute("Glue", nil)
			p169:SetAttribute("GluePrimary", nil)
			p169:SetAttribute("IsAnchored", nil)
			AnchoredObjects[p169] = nil
			print("Disconnected Object")
		end
	end
end

do
	unAnchorObject = function(p170)
		if typeof(p170) ~= "Instance" then
			return
		end

		local Parent = p170.Parent

		if not Parent then
			return
		end

		if not (Parent:IsA("Model") or Parent:IsA("Folder")) then
			return
		end

		local v465 = p170
		local v466 = Parent

		if v466:IsA("Folder") or v466 == W then
			v466 = v465
		end

		if not v466:GetAttribute("IsAnchored") then
			return
		end

		local v467 = AnchoredObjects[v466]

		if not v467 then
			return
		end

		local attribute = v466:GetAttribute("GluePrimary")
		local BodyGyro = v467.BodyGyro
		local SB = v467.SB

		v467.BodyPosition:Destroy()
		BodyGyro:Destroy()

		if attribute then
			ChangeSBstate(SB, "GluePrimary")
		else
			SB:Destroy()
		end

		for _, v in next, v467.Connections, nil do
			v:Disconnect()
		end

		v466:SetAttribute("IsAnchored", false)
		table.clear(v467)
		AnchoredObjects[v466] = nil
		SetCollisionObjectOn(v466)
		print("UnAnchored")
	end
end

accb = 0

do
	StartAnchorCoolH = function()
		if AnchorCoolH then
			print("hearbeat já criado!")

			return
		end

		AnchorCoolH = R.Heartbeat:Connect(function(dt)
			accb += dt

			if accb < 0.1 then
				return
			end

			accb = 0

			if not next(AnchoredObjects) then
				AnchorCoolH:Disconnect()
				AnchorCoolH = nil
				print("Função disconectada!")

				return
			end

			for k, v in pairs(AnchoredObjects) do
				local PartAnchored = v.PartAnchored
				local BodyPosition = v.BodyPosition

				if PartAnchored and BodyPosition and not v.A_GlueP and v.A_Anchor then
					local v477 = BodyPosition.Position - PartAnchored.Position

					if v477:Dot(v477) > 0.0225 then
						SetCollisionObjectOff(k)
					else
						SetCollisionObjectOn(k)
					end
				end
			end
		end)
	end
end

do
	SAOwnerShipH = function()
		if OwnerShipH then
			print("hearbeat já criado! 2")

			return
		end

		OwnerShipH = task.spawn(function()
			while task.wait(0.25) do
				if next(AnchoredObjects) then
					for k, v in pairs(AnchoredObjects) do
						k:SetAttribute("AFOwnership", IsNetworkOwner(v.PartAnchored))
					end
				else
					print("Função disconectada! 2")
					OwnerShipH = nil

					break
				end
			end
		end)
	end
end

task.spawn(function()
	for _, v in ipairs({
		SB_LineTransparencyValue,
		SB_SurfaceTransparencyValue,
		SB_AnchoredColor3,
		SB_AnchoredColor3Surface,
		SB_GlueColor3,
		SB_GlueColor3Surface,
		SB_MainGlueColor3,
		SB_MainGlueColor3Surface
	}) do
		v.Changed:Connect(function()
			if next(AnchoredObjects) then
				for _, v2 in pairs(AnchoredObjects) do
					local SB = v2.SB

					if SB then
						ChangeSBstate(SB, SB:GetAttribute("SB_State"))
					end
				end

				if #CompiledGroups > 0 then
					for _, v2 in pairs(CompiledGroups) do
						for _, instance in pairs(v2.instances) do
							if instance:IsA("SelectionBox") then
								ChangeSBstate(instance, instance:GetAttribute("SB_State"))
							end
						end
					end
				end
			elseif #CompiledGroups > 0 then
				for _, v2 in pairs(CompiledGroups) do
					for _, instance in pairs(v2.instances) do
						if instance:IsA("SelectionBox") then
							ChangeSBstate(instance, instance:GetAttribute("SB_State"))
						end
					end
				end

				return
			end
		end)
	end
end)
setanchorObject = function(p171, p172, p173, p174)
	if not (typeof(p171) == "Instance" and p171.Parent) then
		return
	end

	if typeof(p174) ~= "boolean" then
		p174 = true
	end

	local v493 = p171
	local Parent = v493.Parent

	for _, v in pairs(CompiledGroups) do
		for _, v2 in pairs(v.group) do
			if v2.model == Parent and v2.model ~= v.primaryPart then
				return
			end
		end
	end

	if AnchoredObjects[Parent] then
		unAnchorObject(p171)

		return
	end

	if not (Parent:IsA("Model") or Parent:IsA("Folder")) then
		return
	end

	if Parent:IsA("Folder") or Parent == W then
		Parent = v493
	end

	if Parent:GetAttribute("IsAnchored") then
		unAnchorObject(p171)

		return
	end

	local Position = p173 or v493.Position
	local CFrame_ = p172 or v493.CFrame
	local vector3 = Vector3.new(math.huge, math.huge, math.huge)

	Parent:SetAttribute("AnchorCFrame", CFrame_)
	Parent:SetAttribute("AnchorVector", Position)

	local AnchorPositionBody = Parent:FindFirstChild("AnchorPositionBody") or Instance.new("BodyPosition")

	AnchorPositionBody.Name = "AnchorPositionBody"
	AnchorPositionBody.P = 40000
	AnchorPositionBody.D = 950
	AnchorPositionBody.MaxForce = vector3
	AnchorPositionBody.Position = Position
	AnchorPositionBody.Parent = v493

	local AnchorGyroBody = Parent:FindFirstChild("AnchorGyroBody") or Instance.new("BodyGyro")

	AnchorGyroBody.Name = "AnchorGyroBody"
	AnchorGyroBody.P = 40000
	AnchorGyroBody.D = 950
	AnchorGyroBody.MaxTorque = vector3
	AnchorGyroBody.CFrame = CFrame_
	AnchorGyroBody.Parent = v493

	local ObjectState = Parent:FindFirstChild("ObjectState") or Instance.new("SelectionBox")

	ObjectState.Name = "ObjectState"
	ObjectState.LineThickness = 0.025
	ObjectState.SurfaceTransparency = SB_SurfaceTransparencyValue.Value
	ObjectState.Transparency = SB_LineTransparencyValue.Value
	ObjectState.Visible = true
	ObjectState.Adornee = Parent
	ObjectState.Parent = Parent

	local t17 = {}
	local u506 = true

	local function v507()
		local attribute = Parent:GetAttribute("IsAnchored")

		if AnchoredObjects[Parent] then
			for k, v in pairs({
				GluePrimary = "A_GlueP",
				Glue = "A_Glue",
				IsAnchored = "A_Anchor"
			}) do
				AnchoredObjects[Parent][v] = Parent:GetAttribute(k)
			end
		end

		if attribute ~= u506 then
			u506 = attribute

			if attribute then
				AnchorPositionBody.MaxForce = vector3
				AnchorGyroBody.MaxTorque = vector3
			else
				AnchorPositionBody.MaxForce = Vector3.zero
				AnchorGyroBody.MaxTorque = Vector3.zero
			end
		end
	end
	local function v511()
		ChangeSBstate(ObjectState, ObjectState:GetAttribute("SB_State"))
	end

	for _, v in pairs({
		"IsAnchored",
		"Glue",
		"GluePrimary"
	}) do
		t17[#t17 + 1] = Parent:GetAttributeChangedSignal(v):Connect(v507)
	end

	v511()

	local function v514()
		if not IsNetworkOwner(v493) then
			ChangeSBstate(ObjectState)
		elseif Parent:GetAttribute("GluePrimary") and not Parent:GetAttribute("IsAnchored") then
			ChangeSBstate(ObjectState, "GluePrimary")
		elseif not Parent:GetAttribute("Glue") or Parent:GetAttribute("IsAnchored") then
			if Parent:GetAttribute("GluePrimary") and Parent:GetAttribute("IsAnchored") then
				ChangeSBstate(ObjectState, "Anchored")
			else
				ChangeSBstate(ObjectState, "Anchored")
			end
		else
			ChangeSBstate(ObjectState, "Glue")
		end
	end

	t17[#t17 + 1] = Parent:GetAttributeChangedSignal("IsAnchored"):Connect(function()
		v514()
	end)
	t17[#t17 + 1] = Parent:GetAttributeChangedSignal("AFOwnership"):Connect(function()
		v514()
	end)
	v514()
	SAOwnerShipH()
	StartAnchorCoolH()
	t17[#t17 + 1] = Parent.Destroying:Connect(function()
		unAnchorObject(Parent)
	end)
	WatchBuildGrabs(Parent, t17)
	AnchoredObjects[Parent] = {
		BodyPosition = AnchorPositionBody,
		BodyGyro = AnchorGyroBody,
		SB = ObjectState,
		Connections = t17,
		Model = Parent,
		PartAnchored = v493
	}

	if p174 then
		anchorobjecteffect(v493)
	end

	Parent:SetAttribute("IsAnchored", true)
	v507()
	print("Anchored!")
end
CharacterRaycastFilter = RaycastParams.new()
CharacterRaycastFilter.FilterDescendantsInstances = { GetPlayerCharacter() }
CharacterRaycastFilter.FilterType = Enum.RaycastFilterType.Exclude
anchorfunc = function()
	local GrabParts = W:FindFirstChild("GrabParts")

	local function v516(p175)
		if p175 then
			if not (p175:IsDescendantOf(W.Map) or p175.Anchored) then
				return true
			end
		end
	end

	if GrabParts then
		local Part1 = GrabParts.GrabPart.WeldConstraint.Part1

		if v516(Part1) then
			setanchorObject(Part1)
		end
	elseif GetPlayerCharacter() then
		local ControllingCreature = _G.ControllingCreature or LocalPlayer.Character
		local s4

		if _G.ControllingCreature then
			s4 = "Head"
		elseif LocalPlayer.Character then
			s4 = "CamPart"
		end

		local v520 = W:FindPartOnRayWithIgnoreList(Ray.new(ControllingCreature[s4].Position, LocalPlayer.Character.CamPart.CFrame.lookVector * 5000), { ControllingCreature })

		if v520 and v520.Parent then
			if v520.Parent:IsA("Model") then
				if v520.Parent:GetAttribute("IsAnchored") then
					if v516(v520) then
						setanchorObject(v520)
					end
				end
			end
		end
	end
end

do
	anchorobject = function(p176, p177)
		if p176 == "AnchorK" then
			if p177 == Enum.UserInputState.Begin then
				anchorfunc()
			end
		end
	end
end

do
	IsHoldingAnchoredPart = function()
		local GrabParts = W:FindFirstChild("GrabParts")

		if GrabParts then
			local Part1 = GrabParts.GrabPart.WeldConstraint.Part1

			if Part1 then
				for k in pairs(AnchoredObjects) do
					if Part1:IsDescendantOf(k) then
						return k, Part1
					end
				end
			end
		end
	end
end

IsInCompileGroup = function(p178, p179)
	for _, v in ipairs(CompiledGroups) do
		if v.primaryPart then
			if p179 and p178 == v.primaryPart then
				return v
			end

			for _, v2 in pairs(v.group) do
				local model = v2.model

				if model and model == p178 and (model:GetAttribute("Glue") or model:GetAttribute("GluePrimary")) and not model:GetAttribute("IsAnchored") then
					return v
				end
			end
		end
	end
end

do
	CheckPrimaryPartOnCompileGroup = function(p180)
		for _, v in ipairs(CompiledGroups) do
			if v.primaryPart and v.primaryPart == p180 then
				if v.primaryPart:GetAttribute("IsAnchored") then
					return true
				end
			end
		end
	end
end

ObjectStateBillboardGUI = function(p181, p182)
	local ObjectText = p181:FindFirstChild("ObjectText")

	if not ObjectText then
		local BillboardGui = Instance.new("BillboardGui")
		local TextLabel = Instance.new("TextLabel")
		local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

		ObjectText = BillboardGui
		BillboardGui.Name = "ObjectText"
		BillboardGui.Parent = p181
		BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		BillboardGui.Active = true
		BillboardGui.Adornee = p181
		BillboardGui.AlwaysOnTop = true
		BillboardGui.Size = UDim2.new(3, 0, 3, 0)
		BillboardGui.Enabled = false
		TextLabel.Name = "State"
		TextLabel.Parent = BillboardGui
		TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1
		TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel.BorderSizePixel = 0
		TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
		TextLabel.Size = UDim2.new(1, 5, 0.340000004, 5)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = ""
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 28
		TextLabel.TextStrokeTransparency = 0
		TextLabel.TextWrapped = true
		UITextSizeConstraint.Parent = TextLabel
		UITextSizeConstraint.MaxTextSize = 28
		UITextSizeConstraint.MinTextSize = 15
		UIAspectRatioConstraint.Name = ""
		UIAspectRatioConstraint.Parent = BillboardGui
		UIAspectRatioConstraint.AspectRatio = 1.043
	end

	if typeof(p182) == "string" then
		ObjectText.State.TextColor3 = Color3.fromRGB(255, 255, 255)
		ObjectText.State.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)

		if p182 == "Anchored" then
			ObjectText.State.TextColor3 = Color3.fromRGB(112, 186, 255)
			ObjectText.State.TextStrokeColor3 = Color3.fromRGB(0, 0, 127)
		elseif p182 == "Disconnected" then
			ObjectText.State.TextColor3 = Color3.fromRGB(255, 0, 0)
			ObjectText.State.TextStrokeColor3 = Color3.fromRGB(67, 0, 0)
		end

		ObjectText.State.Text = p182
		ObjectText.Enabled = true
	else
		ObjectText.Enabled = false
	end
end
RemoveCompileGroup = function(p183)
	for i, v in ipairs(CompiledGroups) do
		if v.primaryPart and v.primaryPart == p183 then
			for _, instance in pairs(v.instances) do
				if typeof(instance) == "Instance" and instance.Parent then
					instance:Destroy()
				end
			end

			ObjectStateBillboardGUI(p183)

			for _, v2 in pairs(v.gC) do
				if typeof(v2) == "RBXScriptConnection" then
					v2:Disconnect()
				end
			end

			for _, v2 in pairs(v.group) do
				local model = v2.model

				SetCollisionObjectOn(v2.model)
				model:SetAttribute("Glue", false)
				model:SetAttribute("GluePrimary", false)
				model:SetAttribute("IsAnchored", false)
				CompiledObjects[model] = nil
			end

			table.remove(CompiledGroups, i)
			updateCompileGroupsDropdown(CompileGroups_Dropdown)

			for _, v2 in pairs(v.group) do
				if v2.savedCFrame and v2.part and v2.part.Parent then
					setanchorObject(v2.part, v2.savedCFrame, v2.savedCFrame.Position, false)
				end
			end
		end
	end
end

do
	RemoveGroupCompileFromName = function(p184)
		for _, v in ipairs(CompiledGroups) do
			if v.gN == p184 then
				local primaryPart = v.primaryPart

				for _, v2 in pairs(v.group) do
					DisconnectObject(v2.model)
				end

				RemoveCompileGroup(primaryPart)
			end
		end
	end
end

do
	updateCompileGroupsDropdown = function(p185)
		local t18 = {}

		for _, v in ipairs(CompiledGroups) do
			table.insert(t18, v.gN)
		end

		p185:Refresh(t18, true)
	end
end

CompiledObjects = {}

do
	compileGroup = function()
		local n6 = 0

		for k in pairs(AnchoredObjects) do
			if not IsInCompileGroup(k) then
				n6 += 1
			end
		end

		if n6 == 0 then
			result:MakeNotification({
				Name = "Error",
				Content = "No anchored parts found",
				Image = "rbxassetid://4483345998",
				Time = 5
			})

			return
		end

		if n6 == 1 then
			result:MakeNotification({
				Name = "Error",
				Content = "Needs at least 2 anchored objects",
				Image = "rbxassetid://4483345998",
				Time = 5
			})

			return
		end

		local v558, v559 = IsHoldingAnchoredPart()

		if not v558 then
			result:MakeNotification({
				Name = "Error",
				Content = "You need to hold one of your anchored object",
				Image = "rbxassetid://4483345998",
				Time = 5
			})

			return
		end

		for k in pairs(AnchoredObjects) do
			local v561 = IsInCompileGroup(k, true)

			if v561 then
				local t19 = {}

				for _, v in pairs(v561.group) do
					if v and v.part then
						t19[#t19 + 1] = v.part
					end
				end

				RemoveGroupCompileFromName(v561.gN)

				for _, v in ipairs(t19) do
					setanchorObject(v, nil, nil, false)
				end
			end
		end

		_G._CompileGroupCounter = (_G._CompileGroupCounter or 0) + 1

		local v567 = "Group " .. _G._CompileGroupCounter
		local t20 = {}
		local t21 = {}
		local t22 = {}
		local CFrame_ = v559.CFrame

		for _, v in pairs(AnchoredObjects) do
			local Model = v.Model
			local PartAnchored = v.PartAnchored

			if Model and PartAnchored and not IsInCompileGroup(Model) then
				local v576 = CFrame_:ToObjectSpace(PartAnchored.CFrame)
				local clone = v.SB:Clone()

				clone.Parent = Model

				local attribute = Model:GetAttribute("AnchorCFrame") or PartAnchored.CFrame

				unAnchorObject(Model)
				CompiledObjects[Model] = {
					PartAnchored = PartAnchored
				}
				WatchBuildGrabs(Model, t20)

				local function v579()
					ChangeSBstate(clone, clone:GetAttribute("SB_State"))
				end

				v579()

				local Attachment = Instance.new("Attachment")

				Attachment.Name = "Attach0"
				Attachment.CFrame = CFrame.identity
				Attachment.Parent = PartAnchored

				local Attachment2 = Instance.new("Attachment")

				Attachment2.Name = "AttachOffset"
				Attachment2.CFrame = v576
				Attachment2.Parent = v559

				local AlignPosition = Instance.new("AlignPosition")

				AlignPosition.Name = "CompileAlignP"
				AlignPosition.Responsiveness = 100
				AlignPosition.MaxForce = math.huge
				AlignPosition.MaxVelocity = math.huge
				AlignPosition.ApplyAtCenterOfMass = false
				AlignPosition.Mode = Enum.PositionAlignmentMode.TwoAttachment
				AlignPosition.Attachment0 = Attachment
				AlignPosition.Attachment1 = Attachment2
				AlignPosition.Parent = PartAnchored

				local AlignOrientation = Instance.new("AlignOrientation")

				AlignOrientation.Name = "CompileAlignO"
				AlignOrientation.Mode = Enum.OrientationAlignmentMode.TwoAttachment
				AlignOrientation.Responsiveness = 100
				AlignOrientation.MaxTorque = math.huge
				AlignOrientation.MaxAngularVelocity = math.huge
				AlignOrientation.RigidityEnabled = true
				AlignOrientation.Attachment0 = Attachment
				AlignOrientation.Attachment1 = Attachment2
				AlignOrientation.Parent = PartAnchored

				for _, v2 in pairs({
					AlignOrientation,
					AlignPosition,
					Attachment,
					Attachment2,
					clone
				}) do
					table.insert(t22, v2)
				end

				table.insert(t21, {
					model = Model,
					part = PartAnchored,
					offset = v576,
					bodypos = AlignPosition,
					bodygyro = AlignOrientation,
					savedCFrame = attribute
				})

				if Model == v558 then
					AlignPosition.Enabled = false
					AlignOrientation.Enabled = false
					Model:SetAttribute("GluePrimary", true)
					ChangeSBstate(clone, "GluePrimary")
					t20[#t20 + 1] = v559.Destroying:Connect(function()
						RemoveGroupCompileFromName(v567)
					end)
					t20[#t20 + 1] = Model:GetPropertyChangedSignal("Parent"):Connect(function()
						if not Model.Parent then
							RemoveGroupCompileFromName(v567)
						end
					end)
				else
					t20[#t20 + 1] = Model:GetPropertyChangedSignal("Parent"):Connect(function()
						if not Model.Parent then
							local n7 = 0

							for _, v2 in pairs(CompiledGroups) do
								if v2.gN == v567 then
									for _, v3 in pairs(v2.group) do
										if v3.model and v3.model.Parent then
											n7 += 1
										end
									end
								end
							end

							if n7 <= 1 then
								RemoveGroupCompileFromName(v567)
							end
						end
					end)
					Model:SetAttribute("Glue", true)
					ChangeSBstate(clone, "Glue")
				end
			end
		end

		local t23 = {}

		local function v592(p186)
			if t23[p186] then
				return t23[p186]
			end

			local t24 = {}

			if p186:IsA("BasePart") and p186.CanCollide then
				t24[#t24 + 1] = p186
			end

			for _, descendant in ipairs(p186:GetDescendants()) do
				if descendant:IsA("BasePart") and descendant.CanCollide then
					t24[#t24 + 1] = descendant
				end
			end

			t23[p186] = t24

			return t24
		end

		for i = 1, #t21 do
			for i2 = i + 1, #t21 do
				local model = t21[i].model
				local model2 = t21[i2].model

				if model and model2 then
					local v600 = v592(model)
					local v601 = v592(model2)

					for _, v in ipairs(v600) do
						for _, v2 in ipairs(v601) do
							local NoCollisionConstraint = Instance.new("NoCollisionConstraint")

							NoCollisionConstraint.Name = "CompileInternalNoCollision"
							NoCollisionConstraint.Part0 = v
							NoCollisionConstraint.Part1 = v2
							NoCollisionConstraint.Parent = v
							table.insert(t22, NoCollisionConstraint)
						end
					end
				end
			end
		end

		table.insert(CompiledGroups, {
			primaryPart = v558,
			group = t21,
			instances = t22,
			gC = t20,
			gN = v567
		})
		result:MakeNotification({
			Name = "Success",
			Content = "Compiled " .. n6 .. " Toys together",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
		ObjectStateBillboardGUI(v558, v567)
		updateCompileGroupsDropdown(CompileGroups_Dropdown)
	end
end

fireBombs = function(p187, p188)
	if p187 == "FireBomb" and p188 == Enum.UserInputState.Begin then
		_G.FireBomb = true
	elseif p187 == "FireBomb" and p188 == Enum.UserInputState.End then
		_G.FireBomb = false
	end
end
_G.ControllingCreature = nil
makeCharacterNotGrabbable = function(p189)
	local v607, v608, v609 = pairs(p189:GetChildren())
	local v610 = geniter(v607, v608, v609)
	local v611 = table.pack(v610())

	if v611[1] then
		local v612 = v611[3]

		while true do
			if v612:IsA("Part") then
				v612.CanQuery = false
			end

			local v613 = table.pack(v610())

			if not v613[1] then
				break
			end

			v612 = v613[3]
		end
	end
end

do
	makeCharacterGrabbable = function(p190)
		for _, child in pairs(p190:GetChildren()) do
			if child:IsA("Part") then
				child.CanQuery = true
			end
		end
	end
end

controlsoundeffect = Instance.new("Sound", W)
controlsoundeffect.SoundId = "rbxassetid://9126228625"
controlsoundeffect.PlaybackSpeed = 1.25
controleffectsatur = Instance.new("ColorCorrectionEffect", Lighting)
controleffectsatur.Enabled = false
controleffectblur = Instance.new("BlurEffect", Lighting)
controleffectblur.Size = 0
controleffectblur.Enabled = false
controlEffectState = 0
controlFOVBase = nil
controlFXActive = false
controlFXTweens = {}
controlDisabledCC = {}
controlSuppressOtherCC = function()
	for _, v in ipairs({
		Lighting,
		W.CurrentCamera
	}) do
		if v then
			for _, child in ipairs(v:GetChildren()) do
				if child:IsA("ColorCorrectionEffect") and child ~= controleffectsatur then
					if child.Enabled then
						controlDisabledCC[child] = true
						child.Enabled = false
					end
				end
			end
		end
	end
end

do
	controlRestoreOtherCC = function()
		for k in pairs(controlDisabledCC) do
			if k.Parent and not k.Enabled then
				k.Enabled = true
			end
		end

		table.clear(controlDisabledCC)
	end
end

controlFXTween = function(p191, p192, p193, p194, p195)
	local tween = Tween:Create(p191, TweenInfo.new(p192, p194 or Enum.EasingStyle.Sine, p195 or Enum.EasingDirection.Out), p193)

	table.insert(controlFXTweens, tween)
	tween.Completed:Once(function()
		local v622 = table.find(controlFXTweens, tween)

		if v622 then
			table.remove(controlFXTweens, v622)
		end
	end)
	tween:Play()

	return tween
end

do
	controlFXCancel = function()
		for _, v in ipairs(table.clone(controlFXTweens)) do
			v:Cancel()
		end

		table.clear(controlFXTweens)
		game:GetService("RunService"):UnbindFromRenderStep("ControlCreatureShake")
	end
end

do
	controlFXShake = function(p196, p197)
		local RunService = game:GetService("RunService")
		local now = os.clock()

		RunService:UnbindFromRenderStep("ControlCreatureShake")
		RunService:BindToRenderStep("ControlCreatureShake", Enum.RenderPriority.Camera.Value + 1, function()
			local v627 = os.clock() - now

			if W.CurrentCamera then
				if not (p196 <= v627) then
					local v628 = p197 * (1 - v627 / p196)

					W.CurrentCamera.CFrame *= CFrame.Angles(math.rad((math.random() - 0.5) * v628 * 4), math.rad((math.random() - 0.5) * v628 * 4), math.rad((math.random() - 0.5) * v628 * 6))

					return
				end
			end

			RunService:UnbindFromRenderStep("ControlCreatureShake")
		end)
	end
end

controlFXConfig = {
	tint = Color3.fromRGB(255, 70, 70),
	beatTint = Color3.fromRGB(255, 25, 25),
	pullTint = Color3.fromRGB(110, 10, 10),
	saturation = -0.75,
	contrast = 0.3,
	brightness = -0.05,
	blur = 2,
	vignetteColor = Color3.fromRGB(140, 0, 0),
	vignette = 0.2,
	beatVignette = 0
}
controlGetVignette = function()
	if controlVignetteGui and controlVignetteGui.Parent then
		return controlVignetteFrames
	end

	local ScreenGui = Instance.new("ScreenGui")

	ScreenGui.Name = "PossessVignette"
	ScreenGui.IgnoreGuiInset = true
	ScreenGui.ResetOnSpawn = false
	ScreenGui.DisplayOrder = 50
	controlVignetteFrames = {}

	local t25 = {
		{
			UDim2.fromScale(1, 0.4),
			UDim2.fromScale(0, 0),
			90
		},
		{
			UDim2.fromScale(1, 0.4),
			UDim2.fromScale(0, 0.6),
			270
		},
		{
			UDim2.fromScale(0.3, 1),
			UDim2.fromScale(0, 0),
			0
		},
		{
			UDim2.fromScale(0.3, 1),
			UDim2.fromScale(0.7, 0),
			180
		}
	}

	for _, v in ipairs(t25) do
		local Frame = Instance.new("Frame")

		Frame.Size = v[1]
		Frame.Position = v[2]
		Frame.BorderSizePixel = 0
		Frame.BackgroundColor3 = controlFXConfig.vignetteColor
		Frame.BackgroundTransparency = 1
		Frame.Parent = ScreenGui

		local UIGradient = Instance.new("UIGradient")

		UIGradient.Rotation = v[3]
		UIGradient.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(0.45, 0.65),
			NumberSequenceKeypoint.new(1, 1)
		})
		UIGradient.Parent = Frame
		table.insert(controlVignetteFrames, Frame)
	end

	ScreenGui.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
	controlVignetteGui = ScreenGui

	return controlVignetteFrames
end
controlFXVignette = function(p198, p199)
	for _, v in ipairs(controlGetVignette()) do
		v.BackgroundColor3 = controlFXConfig.vignetteColor
		controlFXTween(v, p198, {
			BackgroundTransparency = p199
		})
	end
end

do
	controlcreatureeffectIn = function()
		controlEffectState += 1

		local controlEffectState_ = controlEffectState

		local function v642()
			return controlEffectState_ == controlEffectState
		end

		controlFXCancel()

		if not controlFXActive or not controlFOVBase then
			controlFOVBase = W.CurrentCamera and W.CurrentCamera.FieldOfView or 70
		end

		controlFXActive = true
		controlSuppressOtherCC()
		controleffectsatur.Enabled = true
		controleffectblur.Enabled = true
		controleffectsatur.TintColor = Color3.new(1, 1, 1)
		controleffectsatur.Brightness = 0
		controleffectsatur.Contrast = 0
		controleffectsatur.Saturation = 0
		controleffectblur.Size = 0
		controlsoundeffect.PlaybackSpeed = 0.9
		controlsoundeffect:Play()
		task.spawn(function()
			if W.CurrentCamera then
				controlFXTween(W.CurrentCamera, 0.28, {
					FieldOfView = controlFOVBase - 25
				}, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
			end

			controlFXTween(controleffectblur, 0.28, {
				Size = 22
			}, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
			controlFXTween(controleffectsatur, 0.28, {
				TintColor = controlFXConfig.pullTint,
				Brightness = -0.35,
				Contrast = 0.5,
				Saturation = -1
			}, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
			controlFXVignette(0.28, 0)
			task.wait(0.28)

			if not v642() then
				return
			end

			controleffectsatur.Brightness = 0.6

			if W.CurrentCamera then
				W.CurrentCamera.FieldOfView = controlFOVBase + 20
			end

			controlFXShake(0.45, 0.6)

			if W.CurrentCamera then
				controlFXTween(W.CurrentCamera, 0.7, {
					FieldOfView = controlFOVBase
				}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
			end

			controlFXTween(controleffectblur, 0.6, {
				Size = controlFXConfig.blur
			})
			controlFXTween(controleffectsatur, 0.6, {
				TintColor = controlFXConfig.tint,
				Brightness = controlFXConfig.brightness,
				Contrast = controlFXConfig.contrast,
				Saturation = controlFXConfig.saturation
			})
			controlFXVignette(0.6, controlFXConfig.vignette)
			task.wait(0.6)

			if not v642() then
				return
			end

			while v642() do
				controlFXTween(controleffectsatur, 0.07, {
					Brightness = controlFXConfig.brightness + 0.1,
					Contrast = controlFXConfig.contrast + 0.2,
					TintColor = controlFXConfig.beatTint
				})
				controlFXTween(controleffectblur, 0.07, {
					Size = controlFXConfig.blur + 4
				})
				controlFXVignette(0.07, controlFXConfig.beatVignette)
				task.wait(0.1)

				if not v642() then
					return
				end

				controlFXTween(controleffectsatur, 0.2, {
					Brightness = controlFXConfig.brightness,
					Contrast = controlFXConfig.contrast,
					TintColor = controlFXConfig.tint
				})
				controlFXTween(controleffectblur, 0.2, {
					Size = controlFXConfig.blur
				})
				controlFXVignette(0.2, controlFXConfig.vignette)
				task.wait(0.15)

				if not v642() then
					return
				end

				controlFXTween(controleffectsatur, 0.07, {
					Brightness = controlFXConfig.brightness + 0.06,
					Contrast = controlFXConfig.contrast + 0.12,
					TintColor = controlFXConfig.beatTint
				})
				controlFXVignette(0.07, (controlFXConfig.vignette + controlFXConfig.beatVignette) / 2)
				task.wait(0.1)

				if not v642() then
					return
				end

				controlFXTween(controleffectsatur, 0.35, {
					Brightness = controlFXConfig.brightness,
					Contrast = controlFXConfig.contrast,
					TintColor = controlFXConfig.tint
				})
				controlFXVignette(0.35, controlFXConfig.vignette)
				task.wait(0.95)
			end
		end)
	end
end

controlcreatureeffectOut = function()
	controlEffectState += 1

	local controlEffectState_ = controlEffectState

	controlFXCancel()

	local controlFOVBase_ = controlFOVBase or W.CurrentCamera and W.CurrentCamera.FieldOfView or 70

	controlsoundeffect.PlaybackSpeed = 1.5
	controlsoundeffect:Play()
	controleffectsatur.Brightness = 0.35
	controleffectblur.Size = 16

	if W.CurrentCamera then
		W.CurrentCamera.FieldOfView = controlFOVBase_ - 15
	end

	controlFXShake(0.25, 0.3)

	if W.CurrentCamera then
		controlFXTween(W.CurrentCamera, 0.5, {
			FieldOfView = controlFOVBase_
		}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
	end

	controlFXTween(controleffectblur, 0.5, {
		Size = 0
	})
	controlFXVignette(0.5, 1)

	local v645 = controlFXTween(controleffectsatur, 0.5, {
		TintColor = Color3.new(1, 1, 1),
		Brightness = 0,
		Contrast = 0,
		Saturation = 0
	})

	v645.Completed:Once(function(playbackState)
		if controlEffectState_ ~= controlEffectState or playbackState ~= Enum.PlaybackState.Completed then
			return
		end

		controleffectsatur.Enabled = false
		controleffectblur.Enabled = false
		controlFXActive = false
		controlRestoreOtherCC()
	end)
end
controlCreature = function(p200)
	if typeof(p200) == "Instance" and p200:IsA("Model") then
		local v646 = p200
		local Humanoid = v646:FindFirstChildOfClass("Humanoid")
		local HumanoidRootPart = v646:FindFirstChild("HumanoidRootPart")
		local Head = v646:FindFirstChild("Head")
		local v650

		local function v651()
			if PS:GetPlayerFromCharacter(p200) then
				return
			end

			if p200.Name ~= "YouDecoy" and p200.Name ~= "CreatureBlobman" then
				if tostring(p200.Parent.Name) ~= "Robloxians" then
					return
				end
			end

			return true
		end

		local v652 = v651()

		if v646 and Humanoid and (HumanoidRootPart or v650) and not verifyDev(v646) then
			local t30 = {}

			local function v654()
				for _, v in pairs(t30) do
					if typeof(v) == "RBXScriptConnection" then
						v:Disconnect()
						print("Desconectado!")
					end
				end

				table.clear(t30)
			end

			_G.ControllingCreature = v646
			Humanoid.WalkSpeed = 0
			Humanoid.JumpPower = 24
			Humanoid.CameraOffset = Vector3.new(0, 0, -0.7)
			t30[1] = Humanoid.Died:Connect(function()
				_G.ControllingCreature = nil
			end)

			local Humanoid2
			local HumanoidRootPart2
			local BodyVelocity = Instance.new("BodyVelocity", HumanoidRootPart)
			local BodyVelocity2 = Instance.new("BodyVelocity")

			BodyVelocity2.MaxForce = Vector3.new(0, math.huge, 0)
			BodyVelocity2.Velocity = Vector3.new()
			BodyVelocity.MaxForce = Vector3.new(math.huge, 0, math.huge)
			makeCharacterNotGrabbable(v646)
			task.spawn(function()
				noclip()

				while v646.Parent and _G.ControllingCreature ~= nil do
					if v652 then
						SNOWshipOnceAndDelete(Head)
					else
						SNOWshipOnce(Head)
					end

					Humanoid.AutoRotate = true
					task.wait()
				end
			end)
			W.CurrentCamera.CameraSubject = Humanoid
			controlcreatureeffectIn()

			local v661 = GetPlayerCharacter()

			if v661 then
				Humanoid2 = v661:FindFirstChildOfClass("Humanoid")
				HumanoidRootPart2 = v661:FindFirstChild("HumanoidRootPart")
				BodyVelocity2.Parent = HumanoidRootPart2
				t30[2] = Humanoid2.Died:Connect(function()
					_G.ControllingCreature = nil
				end)
				t30[3] = UserInputService.JumpRequest:Connect(function()
					Humanoid:ChangeState("Jumping")
				end)
				t30[5] = Humanoid2.Changed:Connect(function(p201)
					if p201 == "MoveDirection" then
						BodyVelocity.Velocity = Humanoid2.MoveDirection * 20
					end
				end)
				t30[6] = workspace.CurrentCamera.Changed:Connect(function(p202)
					if p202 == "CameraSubject" then
						W.CurrentCamera.CameraSubject = Humanoid
					end
				end)

				local lookVector

				t30[7] = Head.Changed:Connect(function(p203)
					if p203 == "CFrame" then
						lookVector = W.CurrentCamera.CFrame.lookVector
						Humanoid.CameraOffset = -Vector3.new(lookVector.X, 5, lookVector.Z) * 1.7
					end
				end)
				Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
			end

			while v646.Parent and _G.ControllingCreature ~= nil and v661 and v661.Parent do
				TeleportPlayer(CFrame.new(HumanoidRootPart.Position + Vector3.new(0, -10, 0)))
				task.wait()
			end

			v654()
			clip()
			TeleportPlayer(CFrame.new(HumanoidRootPart.Position + Vector3.new(5, 15, 5)))
			makeCharacterGrabbable(v646)
			BodyVelocity:Destroy()
			BodyVelocity2:Destroy()
			W.CurrentCamera.CameraSubject = Humanoid2
			_G.ControllingCreature = nil
			HumanoidRootPart2.Velocity = Vector3.new()
			controlcreatureeffectOut()
		end
	end
end
controlBindF = function()
	local v663 = GetPlayerCharacter()

	if v663 then
		local Head = v663.Head
		local CurrentCamera = W.CurrentCamera
		local Humanoid = v663:FindFirstChildOfClass("Humanoid")
		local hit_ = W:Raycast(Head.Position, CurrentCamera.CFrame.lookVector * 50, CharacterRaycastFilter)

		if hit_ and Humanoid and Humanoid.Health > 0 then
			local Parent = hit_.Instance.Parent

			print(hit_.Instance, Parent)

			if Parent:FindFirstChildOfClass("Humanoid") then
				if PS:GetPlayerFromCharacter(Parent) and GetKey() ~= "Xana" then
					-- notify disabled

					return
				end

				controlCreature(Parent)
			end
		end
	end
end
controlBind = function(p204, p205)
	if p204 == "Control(C)" and p205 == Enum.UserInputState.Begin then
		if _G.ControllingCreature then
			_G.ControllingCreature = nil
		else
			controlBindF()
		end
	end
end
_G.PlayerToLongGrab = nil
_G.TargetAura = nil
_G.SuperStrength = nil
_G.AntiGrab = nil
_G.AntiExplosion = nil
_G.AntiBurn = nil
_G.Poison_Grab = nil
_G.Burn_Grab = nil
_G.Death_Grab = nil
_G.SuperSpeed = nil
_G.InfiniteJump = nil
_G.TeleportKey = nil
_G.KickAura = nil
_G.KickAuraDebounce = nil
getgenv().Multiplier = 0.15
_G.Strength = nil
verifyInTable = function(p206, p207)
	local v669

	for _, v in pairs(p207) do
		if v == p206 then
			v669 = true

			break
		end
	end

	return v669
end
power_scale = {
	Leader = 255,
	["High Rank Admin"] = 2,
	["Low Rank Admin"] = 1
}

do
	checkMe = function(p208, p209)
		if type(p208) ~= "string" then
			return
		end

		local v672
		local v673 = GetRank(LocalPlayer, 16168861)

		if p208:lower() == LocalPlayer.Name:sub(1, p208:len()):lower() or p208:lower() == "all" then
			v672 = true
		end

		local v674 = power_scale[p209]
		local v675 = power_scale[v673]

		if v675 and v674 then
			print(v675, v674)

			if v674 > v675 == false then
				v672 = false
				print("Don't have power")
			else
				print("Has power")
			end
		end

		return v672
	end
end

if isfile("sblist.txt") then
	local v676 = string.split(readfile("sblist.txt"), "\n")

	for _, v in pairs(v676) do
		if v == game.JobId then
			while true do
				print("L")
			end
		end
	end
end

Jumpscare = function(p210)
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local ImageLabel_ = Instance.new("ImageLabel")
	local Sound = Instance.new("Sound")

	Sound.Volume = 1
	Sound.SoundId = "rbxassetid://85370592420032"
	Sound.Parent = W

	local connection

	connection = Sound.Ended:Connect(function()
		ScreenGui:Destroy()
		connection:Disconnect()
	end)
	ScreenGui.Name = "Jumpscare"
	ScreenGui.DisplayOrder = 5
	ScreenGui.IgnoreGuiInset = true
	Frame.Name = "BackGround"
	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	Frame.BackgroundTransparency = 1
	Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Frame.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel_.Name = "Image"
	ImageLabel_.Parent = Frame
	ImageLabel_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel_.BackgroundTransparency = 1
	ImageLabel_.BorderColor3 = Color3.fromRGB(27, 42, 53)
	ImageLabel_.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel_.Image = "rbxassetid://668614178"

	if p210 == "1" then
		ImageLabel_.Image = "rbxassetid://126959381826483"
		Sound.SoundId = "rbxassetid://112755110378623"
	elseif p210 == "2" then
		ImageLabel_.Image = "rbxassetid://87670738805142"
		Sound.SoundId = "rbxassetid://139122057295834"
	end

	DB:AddItem(ScreenGui, 5)
	DB:AddItem(Sound, 5)
	ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
	Sound:Play()
end
youreidiotsammount = 0
CooldownForYOUAREIDIOT = false
youreidiotevent = nil
You_re_idiot = function()
	if not (typeof(youreidiotsammount) == "number" and youreidiotsammount > 0) then
		return
	end

	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local ImageLabel_ = Instance.new("ImageLabel")
	local Frame2 = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local ImageButton = Instance.new("ImageButton")
	local ImageButton2 = Instance.new("ImageButton")
	local ImageLabel_2 = Instance.new("ImageLabel")
	local ImageButton3 = Instance.new("ImageButton")

	ScreenGui.Name = "YOU'RE IDIOT!"
	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Frame.Name = "Tela"
	Frame.Parent = ScreenGui
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.177197799, 0, 0.347560972, 0)
	Frame.Size = UDim2.new(0, 207, 0, 193)
	ImageLabel_.Name = "1"
	ImageLabel_.Parent = Frame
	ImageLabel_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel_.BorderSizePixel = 2
	ImageLabel_.Position = UDim2.new(0.0434782617, 0, 0.0518134721, 0)
	ImageLabel_.Size = UDim2.new(0, 189, 0, 173)
	ImageLabel_.Image = "rbxassetid://13487810010"
	Frame2.Parent = Frame
	Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame2.BackgroundTransparency = 0.5
	Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame2.BorderSizePixel = 0
	Frame2.Position = UDim2.new(-0.0338164233, 0, -0.124352328, 0)
	Frame2.Size = UDim2.new(0, 221, 0, 226)
	Frame2.ZIndex = -1
	UICorner.CornerRadius = UDim.new(0.0500000007, 0)
	UICorner.Parent = Frame2
	ImageButton.Parent = Frame
	ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton.BackgroundTransparency = 1
	ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageButton.BorderSizePixel = 0
	ImageButton.Position = UDim2.new(0.898550749, 0, -0.124352328, 0)
	ImageButton.Size = UDim2.new(0, 28, 0, 24)
	ImageButton.Image = "rbxassetid://5844889247"
	ImageButton2.Parent = ScreenGui
	ImageButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton2.BackgroundTransparency = 1
	ImageButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageButton2.BorderSizePixel = 0
	ImageButton2.Position = UDim2.new()
	ImageButton2.Size = UDim2.new()
	ImageButton2.Image = "rbxassetid://5844889247"
	ImageButton2.ImageTransparency = 1
	ImageButton2.Modal = true
	ImageLabel_2.Name = "2"
	ImageLabel_2.Parent = Frame
	ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel_2.BorderSizePixel = 2
	ImageLabel_2.Position = UDim2.new(0.0434782617, 0, 0.0518134721, 0)
	ImageLabel_2.Size = UDim2.new(0, 189, 0, 173)
	ImageLabel_2.Image = "rbxassetid://14684147782"
	ImageButton3.Name = "x"
	ImageButton3.Parent = Frame
	ImageButton3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton3.BackgroundTransparency = 1
	ImageButton3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageButton3.BorderSizePixel = 0
	ImageButton3.Position = UDim2.new(0.0434780382, 0, 0.0518134311, 0)
	ImageButton3.Size = UDim2.new(0, 188, 0, 172)
	ImageButton3.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
	ImageButton3.ImageTransparency = 1

	local function v693()
		local n8 = 0

		for _, child in pairs(LocalPlayer.PlayerGui:GetChildren()) do
			if child.Name == "YOU'RE IDIOT!" then
				n8 += 1
			end
		end

		return n8
	end

	local connection = UserInputService.InputChanged:Connect(function()
		UserInputService.MouseIconEnabled = true
	end)
	local v698 = ScreenGui
	local Sound = Instance.new("Sound", v698)

	Sound.SoundId = "rbxassetid://3200130016"
	Sound.Volume = 2.5
	Sound.Looped = true
	Sound:Play()
	ImageButton3.MouseButton1Down:Connect(function()
		if youreidiotsammount <= v693() then
			CooldownForYOUAREIDIOT = true
		end

		if not CooldownForYOUAREIDIOT then
			You_re_idiot()
		end
	end)
	ImageButton.MouseButton1Down:Connect(function()
		if CooldownForYOUAREIDIOT then
			v698:Destroy()

			if v693() <= 0 then
				CooldownForYOUAREIDIOT = false
			end
		end
	end)
	task.spawn(function()
		while v698.Parent do
			local v700 = math.random(0, W.CurrentCamera.ViewportSize.X - 20)
			local v701 = math.random(0, W.CurrentCamera.ViewportSize.Y - 20)

			Frame:TweenPosition(UDim2.new(0, v700, 0, v701), "Out", "Quad", 0.5, true)
			wait(0.88)
		end

		connection:Disconnect()
	end)
	task.spawn(function()
		while v698.Parent do
			ImageLabel_.Visible = true
			wait(0.1)
			ImageLabel_2.Visible = false
			wait(0.1)
			ImageLabel_2.Visible = true
			wait(0.1)
			ImageLabel_.Visible = false
		end
	end)
end
DevJoinEffect = function()
	local Sound = Instance.new("Sound", W)
	local ColorCorrectionEffect = Instance.new("ColorCorrectionEffect", workspace.CurrentCamera)

	Sound.SoundId = "rbxassetid://5246103002"
	Sound.Volume = 1
	Sound:Play()
	ColorCorrectionEffect.Brightness = 0.825
	Tween:Create(ColorCorrectionEffect, TweenInfo.new(5), {
		Brightness = 0
	}):Play()
	DB:AddItem(ColorCorrectionEffect, 35)
	DB:AddItem(Sound, 35)
end
muted = false
mute = function()
	if not muted then
		muted = true

		while muted do
			game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
			task.wait(0.05)
		end

		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
	end
end

do
	local t32 = {
		AntiGrab = true,
		Protection = true
	}

	SetAdminState = function(p211, p212, p213)
		if not p211 or not p212 then
			return
		end

		if not t32[p212] then
			warn("Tentativa de alterar um estado inexistente:", p212)

			return
		end

		if not t5[p211] then
			t5[p211] = {
				AntiGrab = false,
				Protection = false
			}
		end

		t5[p211][p212] = p213
	end
end

GetAdminState = function(p214, p215)
	if p214 then
		if p215 then
			local v705 = t5[p214]

			if type(v705) == "table" then
				return v705[p215]
			end

			return false
		end
	end

	return false
end
Execute_Commands = function(p216, p217, p218, p219)
	local v706 = string.split(p216, " ")
	local v707 = v706[1]:lower()
	local v708 = tonumber(v706[3]) or 6

	if p217 == "LowRank" or p217 == "HighRank" or p217 == "LowerRank" or p217 == "Leader" then
		if v707 == ":antigrab" or v707 == ":ag" then
			SetAdminState(p218, "AntiGrab", true)
			AntiGrabAdmin(PS:FindFirstChild(p218))
		elseif v707 == ":unantigrab" or v707 == ":unag" then
			SetAdminState(p218, "AntiGrab", false)
			unAntiGrabAdmin(PS:FindFirstChild(p218))
		elseif v707 == ":p" then
			SetAdminState(p218, "Protection", true)
		elseif v707 == ":unp" then
			SetAdminState(p218, "Protection", false)
		end
	end

	if p217 == "LowRank" then
		if GetKey() == "Xana" then
			return
		end
	end

	if checkMe(v706[2], p219) then
		if p217 == "Leader" then
			if v707 == ":premium" then
				LocalPlayer:SetAttribute("RG", "YJMZg8bAH8")
			elseif v707 == ":realban" then
				for i = 0, v708 do
					chatMessage("ez")
				end
			end
		end

		if p217 == "HighRank" or p217 == "Leader" then
			if v707 == ":kick" then
				while true do
					print("L")
				end
			end

			if v707 == ":ban" then
				if isfile("sblist.txt") then
					writefile("sblist.txt", readfile("sblist.txt") .. "\n" .. game.JobId)

					while true do
						print("L")
					end
				end

				writefile("sblist.txt", game.JobId)

				while true do
					print("L")
				end
			end

			if v707 == ":kickd" then
				PS.LocalPlayer:Destroy()
			end
		end

		if p217 == "LowRank" or p217 == "HighRank" or p217 == "Leader" then
			if v707 == ":kill" then
				LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0
			elseif v707 == ":freeze" then
				_G.FreezeLoop = true

				while _G.FreezeLoop do
					local Character = LocalPlayer.Character
					local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

					if HumanoidRootPart then
						HumanoidRootPart.Anchored = true
					end

					task.wait()
				end
			elseif v707 == ":unfreeze" then
				_G.FreezeLoop = false
				LocalPlayer.Character.HumanoidRootPart.Anchored = false
			elseif v707 == ":loopkill" then
				_G.DevLoopKillCMD = true

				while _G.DevLoopKillCMD do
					if LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
						LocalPlayer.Character.Humanoid.Health = 0
					end

					task.wait()
				end
			elseif v707 == ":unloopkill" then
				_G.DevLoopKillCMD = false
			elseif v707 == ":reveal" then
				if GetKey() == "Xana" then
					chatMessagePrivate("I'm using Bliz_T VIP", p218)
				else
					chatMessagePrivate("I'm using Bliz_T", p218)
				end
			elseif v707 == ":chat" then
				local v712

				for i = 3, #v706 do
					if v712 then
						v712 ..= " " .. v706[i]
					else
						v712 = v706[i]
					end
				end

				chatMessage(v712)
			elseif v707 == ":bring" then
				local v714 = PS:FindFirstChild(p218)
				local HumanoidRootPart = v714 and v714.Character and v714.Character:FindFirstChild("HumanoidRootPart")

				if HumanoidRootPart then
					TeleportPlayer(HumanoidRootPart.CFrame * CFrame.new(0, 0, 5), 100)
				else
					warn("Bring: jogador '" .. tostring(p218) .. "' não encontrado ou sem personagem.")
				end
			elseif v707 == ":mute" then
				mute()
			elseif v707 == ":ragdoll" then
				local Humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local v717 = v708

				if typeof(ragdollcommand_thread) == "thread" then
					task.cancel(ragdollcommand_thread)
				end

				local function v718()
					Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
					v134:FireServer(_G.UniversalPlayerRoot, v717)
					task.wait(v717)
					Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
				end

				ragdollcommand_thread = task.spawn(v718)
			elseif v707 == ":unmute" then
				muted = false
			elseif v707 ~= ":js" then
				if v707 == ":happy" or v707 == ":happychase" then
					if Happy_MD then
						Happy_MD.StartNow(v707 == ":happychase")
					end
				elseif v707 == ":troll" then
					youreidiotsammount = v708
					CooldownForYOUAREIDIOT = false

					for _, child in pairs(LocalPlayer.PlayerGui:GetChildren()) do
						if child.Name == "YOU'RE IDIOT!" then
							child:Destroy()
						end
					end

					You_re_idiot()
				end
			end
		end
	end
end

local t33 = {
	Authorized = false,
	Running = false,
	OnStop = nil
}
local HttpService_ = game:GetService("HttpService")
local StarterGui = game:GetService("StarterGui")
local LocalPlayer2 = game:GetService("Players").LocalPlayer
local request_ = syn and syn.request or http and http.request or http_request or request or fluxus and fluxus.request
local connect = WebSocket and WebSocket.connect or syn and syn.websocket and syn.websocket.connect
local v727 = ("https://ftap-painel.ftappanel.workers.dev"):gsub("/+$", "")
local v728 = v727:gsub("^http", "ws") .. "/ws"
local v729 = v727 .. "/api/check"
local v730 = v727 .. "/api/leave"
local u731
local id
local u733 = false
local n9 = 0
local n10 = 0

local function v736()
end

t33.Notify = function(p220, p221)
	local v737 = p221 or "FTAP"
	local v738 = tostring(p220)
	local ok, result2 = pcall(function()
		StarterGui:SetCore("SendNotification", {
			Title = v737,
			Text = v738,
			Duration = 10
		})
	end)

	if not ok then
		v736("SetCore falhou:", result2)
		ok = pcall(function()
			result:MakeNotification({
				Name = v737,
				Content = v738,
				Time = 10
			})
		end)
	end

	if not ok then
		warn("[" .. v737 .. "] " .. v738)
	end
end

local function v741()
	return {
		userId = LocalPlayer2.UserId,
		username = LocalPlayer2.Name,
		placeId = game.PlaceId,
		jobId = game.JobId,
		version = "1.0.0"
	}
end
local function v742()
	if not request_ then
		return nil, "Seu executor não suporta requisições HTTP."
	end

	n10 += 1

	local v743 = "-" .. n10
	local nonce = tostring(os.time()) .. v743
	local v745 = v741()

	v745.nonce = nonce

	local ok, result2 = pcall(request_, {
		Url = v729 .. "?n=" .. nonce,
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json",
			["Cache-Control"] = "no-cache"
		},
		Body = HttpService_:JSONEncode(v745)
	})

	if not ok or not result2 then
		v736("check-in falhou:", result2)

		return nil, "Não foi possível conectar ao servidor do painel."
	end

	local ok3, result3 = pcall(HttpService_.JSONDecode, HttpService_, result2.Body)

	if not ok3 or type(result3) ~= "table" then
		v736("resposta inválida:", result2.StatusCode, result2.Body)

		return nil, "Resposta inválida do servidor (" .. tostring(result2.StatusCode) .. ")."
	end

	v736("check-in ok:", result2.Body)

	return result3
end
local function v750()
	local v751 = u731

	u731 = nil

	if v751 then
		pcall(function()
			v751:Close()
		end)
	end
end
local function v752()
	if u733 then
		return
	end

	u733 = true
	n9 = os.clock() + 15
	v750()

	if not request_ then
		return
	end

	pcall(request_, {
		Url = v730,
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = HttpService_:JSONEncode({
			userId = LocalPlayer2.UserId,
			jobId = game.JobId
		})
	})
end

t33.Stop = function(p222, p223)
	t33.Running = false
	t33.Authorized = false
	v752()

	if t33.OnStop then
		pcall(t33.OnStop, p222)
	end

	if p223 then
		LocalPlayer2:Kick(p222 or "Desconectado pelo admin do script.")
	elseif p222 and p222 ~= "" then
		t33.Notify(p222)
	end
end

local function v753(p224)
	if p224.ok == false then
		if p224.stop then
			t33.Stop(p224.error or "Acesso ao script revogado.", true)
		end

		return
	end

	if p224.broadcast and p224.broadcast.id ~= id then
		id = p224.broadcast.id

		if p224.broadcast.text and p224.broadcast.text ~= "" then
			t33.Notify(p224.broadcast.text, "Anúncio")
		end
	end

	local commands = p224.commands or {}

	for _, command in ipairs(commands) do
		v736("comando recebido:", command.cmd, command.arg)

		if command.cmd == "notify" then
			t33.Notify(command.arg or "", "Mensagem do admin")

			continue
		end

		if command.cmd == "kick" then
			t33.Stop(command.arg and command.arg ~= "" and command.arg or "Você foi desconectado pelo admin.", true)

			return
		end

		if command.cmd == "stop" then
			t33.Stop(command.arg and command.arg ~= "" and command.arg or "O admin fechou o script.", false)

			return
		end

		if command.cmd == "kill" then
			pcall(function()
				LocalPlayer2.Character:FindFirstChildOfClass("Humanoid").Health = 0
			end)
		elseif command.cmd == "freeze" then
			if not _G.FreezeLoop then
				_G.FreezeLoop = true
				task.spawn(function()
					while _G.FreezeLoop do
						local Character = LocalPlayer2.Character
						local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

						if HumanoidRootPart then
							HumanoidRootPart.Anchored = true
						end

						task.wait()
					end
				end)
			end
		elseif command.cmd == "unfreeze" then
			_G.FreezeLoop = false
			pcall(function()
				LocalPlayer2.Character.HumanoidRootPart.Anchored = false
			end)
		elseif command.cmd == "loopkill" then
			if not _G.DevLoopKillCMD then
				_G.DevLoopKillCMD = true
				task.spawn(function()
					while _G.DevLoopKillCMD do
						pcall(function()
							LocalPlayer2.Character:FindFirstChildOfClass("Humanoid").Health = 0
						end)
						task.wait()
					end
				end)
			end
		elseif command.cmd == "unloopkill" then
			_G.DevLoopKillCMD = false
		elseif command.cmd == "ragdoll" then
			local v759 = tonumber(command.arg) or 6

			if typeof(ragdollcommand_thread) == "thread" then
				pcall(task.cancel, ragdollcommand_thread)
			end

			ragdollcommand_thread = task.spawn(function()
				local Humanoid = LocalPlayer2.Character and LocalPlayer2.Character:FindFirstChildOfClass("Humanoid")

				if not Humanoid or not v134 then
					return
				end

				Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
				pcall(v134.FireServer, v134, _G.UniversalPlayerRoot, v759)
				task.wait(v759)
				Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
			end)
		elseif command.cmd == "mute" then
			task.spawn(mute)
		elseif command.cmd == "unmute" then
			muted = false
		elseif command.cmd == "troll" then
			youreidiotsammount = tonumber(command.arg) or 6
			CooldownForYOUAREIDIOT = false

			for _, child in pairs(LocalPlayer2.PlayerGui:GetChildren()) do
				if child.Name == "YOU'RE IDIOT!" then
					child:Destroy()
				end
			end

			task.spawn(You_re_idiot)
		elseif command.cmd == "untroll" then
			youreidiotsammount = 0

			for _, child in pairs(LocalPlayer2.PlayerGui:GetChildren()) do
				if child.Name == "YOU'RE IDIOT!" then
					child:Destroy()
				end
			end
		elseif command.cmd == "bring" then
			local v765 = game:GetService("Players"):FindFirstChild(command.arg or "")
			local HumanoidRootPart = v765 and v765.Character and v765.Character:FindFirstChild("HumanoidRootPart")

			if HumanoidRootPart then
				pcall(TeleportPlayer, HumanoidRootPart.CFrame * CFrame.new(0, 0, 5), 100)
			else
				v736("bring: jogador não encontrado neste servidor:", command.arg)
			end
		elseif command.cmd == "premium" then
			LocalPlayer:SetAttribute("RG", "YJMZg8bAH8")
		elseif command.cmd == "rejoin" then
			local TeleportService = game:GetService("TeleportService")

			if not pcall(TeleportService.TeleportToPlaceInstance, TeleportService, game.PlaceId, game.JobId, LocalPlayer2) then
				pcall(TeleportService.Teleport, TeleportService, game.PlaceId, LocalPlayer2)
			end
		end
	end
end
local function v768(p225)
	local ok, result2 = pcall(v753, p225)

	if not ok then
		warn("[Painel] erro ao tratar resposta: " .. tostring(result2))
	end
end
local function v771(p226)
	local t34 = {}

	for k, v in pairs(v741()) do
		table.insert(t34, k .. "=" .. HttpService_:UrlEncode(tostring(v)))
	end

	table.insert(t34, "ping=45")

	local ok, result2 = pcall(connect, v728 .. "?" .. table.concat(t34, "&"))

	if not ok or not result2 then
		v736("WebSocket falhou:", result2)

		return nil
	end

	local u777 = true

	result2.OnMessage:Connect(function(p227)
		local ok3, result3 = pcall(HttpService_.JSONDecode, HttpService_, p227)

		if ok3 then
			if type(result3) == "table" then
				v736("mensagem:", p227)

				if u777 then
					u777 = false
					p226(result3)
				else
					v768(result3)
				end

				return
			end
		end
	end)
	result2.OnClose:Connect(function()
		if u731 == result2 then
			u731 = nil
		end

		v736("WebSocket fechou")
	end)

	return result2
end
local function v780()
	local u781
	local v782 = v771(function(p228)
		u781 = p228
	end)

	if not v782 then
		return nil
	end

	for i = 1, 100 do
		if not u781 then
			task.wait(0.1)

			continue
		end

		break
	end

	if u781 then
		if u781.ok ~= false then
			u731 = v782
		end

		return u781
	end

	pcall(function()
		v782:Close()
	end)

	return nil
end

t33.Start = function()
	local v784
	local v785
	local v786 = connect ~= nil

	if v786 then
		v784 = v780()
	end

	if not v784 then
		if v786 then
			v736("sem WebSocket na primeira tentativa, usando HTTP por enquanto")
		end

		v784, v785 = v742()
	end

	if v784 and v784.ok == false then
		local v787 = false
		local error_ = v784.error or "Acesso negado."

		return v787, error_, v784.stop == true
	end

	if not v784 then
	end

	t33.Authorized = true
	t33.Running = true
	pcall(function()
		LocalPlayer2.OnTeleport:Connect(function(p229)
			if p229 == Enum.TeleportState.Started then
				v752()
			end
		end)
	end)
	pcall(function()
		game:GetService("Players").PlayerRemoving:Connect(function(player)
			if player == LocalPlayer2 then
				v752()
			end
		end)
	end)
	pcall(function()
		game.Close:Connect(v752)
	end)

	if v784 then
		v768(v784)
	end

	task.spawn(function()
		local n11 = 0
		local n12 = 0
		local n13 = 2
		local v792 = v784 and tonumber(v784.interval) or 60
		local exitTo
		local v794

		while t33.Running do
			if not LocalPlayer2.Parent or game.JobId ~= game.JobId then
				exitTo = 1

				break
			end

			if os.clock() < n9 then
				task.wait(1)

				continue
			end

			if u731 then
				for i = 1, 45 do
					task.wait(1)

					if not u731 or not t33.Running or not LocalPlayer2.Parent then
						break
					end
				end

				v794 = u731

				if v794 then
					exitTo = 3

					break
				end

				n13 = 2

				continue
			end

			if not v786 or not (n11 < 3) then
				exitTo = 2

				break
			end

			task.wait(n13)

			if t33.Running then
				local v796 = v780()

				if v796 then
					n11 = 0
					u733 = false
					v768(v796)
				else
					n11 += 1
					n13 = math.min(n13 * 2, 60)

					if n11 >= 3 then
						n12 = os.clock()
						v736("WebSocket não conecta, usando check-in HTTP")
					end
				end

				continue
			end

			break
		end

		if exitTo == 1 then
			v736("saiu do jogo, parando o painel")
			v752()
			t33.Running = false
		else
			local ok, result2, v799, v800, ok3, result3, exitTo5, exitTo4

			if exitTo == 2 then
				local exitTo3
				local exitTo2

				while true do
					task.wait(v792)

					if not t33.Running then
						break
					end

					ok, result2 = pcall(v742)

					if ok then
						if result2 then
							u733 = false
							v799 = tonumber(result2.interval) or v792
							v792 = v799
							v768(result2)

							if v786 and result2.ok == true and os.clock() - n12 >= 300 then
								n11 = 0
								n13 = 2
							end
						end
					else
						warn("[Painel] erro no check-in: " .. tostring(result2))
					end

					exitTo2 = nil

					while t33.Running do
						if not LocalPlayer2.Parent or game.JobId ~= game.JobId then
							exitTo2 = 1

							break
						end

						if os.clock() < n9 then
							task.wait(1)

							continue
						end

						if u731 then
							for i = 1, 45 do
								task.wait(1)

								if not u731 or not t33.Running or not LocalPlayer2.Parent then
									break
								end
							end

							v794 = u731

							if v794 then
								exitTo2 = 3

								break
							end

							n13 = 2

							continue
						end

						if not v786 or not (n11 < 3) then
							exitTo2 = 2

							break
						end

						task.wait(n13)

						if t33.Running then
							v800 = v780()

							if v800 then
								n11 = 0
								u733 = false
								v768(v800)
							else
								n11 += 1
								n13 = math.min(n13 * 2, 60)

								if n11 >= 3 then
									n12 = os.clock()
									v736("WebSocket não conecta, usando check-in HTTP")
								end
							end

							continue
						end

						break
					end

					if exitTo2 == 1 then
						exitTo3 = 1

						break
					elseif exitTo2 ~= 2 then
						exitTo3 = 2

						break
					end
				end

				if exitTo3 == 1 then
					v736("saiu do jogo, parando o painel")
					v752()
					t33.Running = false
					v736("loop do painel parou")

					return
				end

				if exitTo3 == 2 and exitTo2 == 3 then
					while true do
						ok3, result3 = pcall(function()
							v794:Send("ping")
						end)

						if not ok3 then
							v736("ping falhou:", result3)
						end

						exitTo5 = nil

						while true do
							n13 = 2
							exitTo4 = nil

							while t33.Running do
								if not LocalPlayer2.Parent or game.JobId ~= game.JobId then
									exitTo4 = 1

									break
								end

								if os.clock() < n9 then
									task.wait(1)

									continue
								end

								if u731 then
									exitTo4 = 2

									break
								end

								if v786 and n11 < 3 then
									task.wait(n13)

									if t33.Running then
										v800 = v780()

										if v800 then
											n11 = 0
											u733 = false
											v768(v800)
										else
											n11 += 1
											n13 = math.min(n13 * 2, 60)

											if n11 >= 3 then
												n12 = os.clock()
												v736("WebSocket não conecta, usando check-in HTTP")
											end
										end

										continue
									end
								else
									task.wait(v792)

									if t33.Running then
										ok, result2 = pcall(v742)

										if ok then
											if result2 then
												u733 = false
												v799 = tonumber(result2.interval) or v792
												v792 = v799
												v768(result2)

												if v786 and result2.ok == true and os.clock() - n12 >= 300 then
													n11 = 0
													n13 = 2
												end
											end
										else
											warn("[Painel] erro no check-in: " .. tostring(result2))
										end

										continue
									end
								end

								break
							end

							if exitTo4 == 1 then
								exitTo5 = 1

								break
							end

							if exitTo4 == 2 then
								for i = 1, 45 do
									task.wait(1)

									if not u731 or not t33.Running or not LocalPlayer2.Parent then
										break
									end
								end

								v794 = u731

								if v794 then
									exitTo5 = 2

									break
								end

								continue
							end

							break
						end

						if exitTo5 == 1 then
							v736("saiu do jogo, parando o painel")
							v752()
							t33.Running = false

							break
						elseif exitTo5 == 2 then
							continue
						end

						break
					end
				end
			elseif exitTo == 3 then
				while true do
					ok3, result3 = pcall(function()
						v794:Send("ping")
					end)

					if ok3 then
						exitTo5 = nil
					else
						v736("ping falhou:", result3)
						exitTo5 = nil
					end

					while true do
						n13 = 2
						exitTo4 = nil

						while t33.Running do
							if not LocalPlayer2.Parent or game.JobId ~= game.JobId then
								exitTo4 = 1

								break
							end

							if os.clock() < n9 then
								task.wait(1)

								continue
							end

							if u731 then
								exitTo4 = 2

								break
							end

							if v786 and n11 < 3 then
								task.wait(n13)

								if t33.Running then
									v800 = v780()

									if v800 then
										n11 = 0
										u733 = false
										v768(v800)
									else
										n11 += 1
										n13 = math.min(n13 * 2, 60)

										if n11 >= 3 then
											n12 = os.clock()
											v736("WebSocket não conecta, usando check-in HTTP")
										end
									end

									continue
								end
							else
								task.wait(v792)

								if t33.Running then
									ok, result2 = pcall(v742)

									if ok then
										if result2 then
											u733 = false
											v799 = tonumber(result2.interval) or v792
											v792 = v799
											v768(result2)

											if v786 and result2.ok == true and os.clock() - n12 >= 300 then
												n11 = 0
												n13 = 2
											end
										end
									else
										warn("[Painel] erro no check-in: " .. tostring(result2))
									end

									continue
								end
							end

							break
						end

						if exitTo4 == 1 then
							exitTo5 = 1

							break
						end

						if exitTo4 == 2 then
							for i = 1, 45 do
								task.wait(1)

								if not u731 or not t33.Running or not LocalPlayer2.Parent then
									break
								end
							end

							v794 = u731

							if v794 then
								exitTo5 = 2

								break
							end

							continue
						end

						break
					end

					if exitTo5 == 1 then
						v736("saiu do jogo, parando o painel")
						v752()
						t33.Running = false

						break
					elseif exitTo5 == 2 then
						continue
					end

					break
				end
			end
		end

		v736("loop do painel parou")
	end)

	if not v784 then
		warn("[Painel] " .. tostring(v785))
	end

	return true
end

do
	t33.OnStop = function()
		getgenv().d84jdnmasjdh43d = false
		pcall(function()
			result:Destroy()
		end)
		pcall(CABM_script, false)
	end
end

do
	local v810, v811 = t33.Start()

	if not v810 then
		t33.Notify(v811, "FTAP")
		warn("[Painel] " .. tostring(v811))
		getgenv().d84jdnmasjdh43d = false
		pcall(CABM_script, false)

		return
	end
end

read_cmds = function(p230, p231)
	if type(p230) == "string" and type(p231) == "string" then
		local t35 = {
			Message = p230,
			FromSpeaker = PS:FindFirstChild(p231)
		}
		local v813 = string.find(t35.Message, ":")

		if v813 then
			t35.Message = string.sub(t35.Message, v813, t35.Message:len())
		end

		local FromSpeaker = t35.FromSpeaker

		if FromSpeaker then
			local v816 = GetRank(FromSpeaker, 16168861)

			if v816 == "Leader" then
				Execute_Commands(t35.Message, "Leader", FromSpeaker.Name, v816)
			elseif v816 == "High Rank Admin" then
				Execute_Commands(t35.Message, "HighRank", FromSpeaker.Name, v816)
			elseif v816 == "Low Rank Admin" then
				Execute_Commands(t35.Message, "LowRank", FromSpeaker.Name, v816)
			elseif v816 == "Goon" then
				Execute_Commands(t35.Message, "LowerRank", FromSpeaker.Name, v816)
			end
		end
	end
end
AntiGrabAdmin = function(p232)
	if p232 then
		if p232:IsA("Player") then
			local Character = p232.Character or p232.CharacterAdded:Wait()

			if not Character:WaitForChild("HumanoidRootPart", 5) then
				return
			end

			Character.Parent = workspace.PlotItems.PlayersInPlots
			Character:GetPropertyChangedSignal("Parent"):Connect(function()
				if GetAdminState(p232.Name, "AntiGrab") and Character.Parent ~= nil then
					task.wait(0)
					Character.Parent = workspace.PlotItems.PlayersInPlots
				end
			end)
		end
	end
end
unAntiGrabAdmin = function(p233)
	if p233 and p233:IsA("Player") then
		local Character = p233.Character or p233.CharacterAdded:Wait()

		if not Character:WaitForChild("HumanoidRootPart", 5) then
			return
		end

		Character.Parent = W
	end
end
somefunction = function(p234)
	task.spawn(function()
		local TextSource = p234.TextSource

		if TextSource then
			local playerByUserId = game:GetService("Players"):GetPlayerByUserId(TextSource.UserId)

			if playerByUserId then
				read_cmds(p234.Text, playerByUserId.Name)
				print("working")
			end
		end
	end)

	if p234.TextSource or p234.Metadata == "HappyFakeChat" then
		return
	end

	return (0/0)
end
TextChatService.OnIncomingMessage = somefunction
task.spawn(function()
	while true do
		TextChatService.OnIncomingMessage = somefunction
		task.wait(5)
	end
end)

do
	InjectBasicCommands = function(p235)
		if p235 ~= LocalPlayer and verifyDev(p235) then
			SetAdminState(p235.Name, "AntiGrab", false)
			SetAdminState(p235.Name, "Protection", true)
			AntiGrabAdmin(p235)
			p235.CharacterAdded:Connect(function()
				AntiGrabAdmin(p235)
			end)
		end
	end
end

task.spawn(function()
	for _, player in pairs(PS:GetPlayers()) do
		task.wait(0.5)
		InjectBasicCommands(player)
	end

	PS.PlayerAdded:Connect(InjectBasicCommands)
end)

do
	SetModelProperties = function(p236)
		for _, descendant in pairs(p236:GetDescendants()) do
			if descendant:IsA("BasePart") or descendant:IsA("MeshPart") then
				descendant.CanCollide = false
			end
		end
	end
end

SetModelProperties2 = function(p237)
	for _, descendant in pairs(p237:GetDescendants()) do
		if descendant:IsA("BasePart") or descendant:IsA("MeshPart") then
			descendant.Transparency = 1
		end
	end
end

do
	SetModelPropertiesBombs = function(p238)
		for _, descendant in pairs(p238:GetDescendants()) do
			if descendant:IsA("BasePart") or descendant:IsA("Part") then
				descendant.CanTouch = false
				descendant.CanCollide = false
			end
		end
	end
end

SetModelProperties3 = function(p239)
	for _, descendant in pairs(p239:GetDescendants()) do
		if descendant:IsA("BasePart") or descendant:IsA("MeshPart") or descendant:IsA("Part") then
			descendant.CanCollide = false
			descendant.CanQuery = false
		end
	end
end
SetAimPart = function(p240)
	for _, descendant in pairs(p240:GetDescendants()) do
		if descendant:IsA("BasePart") then
			descendant.CanQuery = false
			descendant.Transparency = 1
			descendant.CanCollide = false
		elseif descendant:IsA("SurfaceGui") then
			descendant.Enabled = false
		end
	end

	local Center = p240:WaitForChild("Center", 1)

	if Center then
		local BillboardGui = Instance.new("BillboardGui")
		local ImageLabel_ = Instance.new("ImageLabel")
		local Sound = Instance.new("Sound", W)

		Sound.SoundId = "rbxassetid://9119713951"
		Sound.PlaybackSpeed = 1.5

		local u837 = false

		BillboardGui.ClipsDescendants = true
		BillboardGui.Brightness = 3.5
		BillboardGui.Size = UDim2.new(1.5, 18, 1.5, 18)
		BillboardGui.Adornee = Part
		BillboardGui.AlwaysOnTop = true
		BillboardGui.Active = true
		BillboardGui.Parent = Center
		ImageLabel_.BorderSizePixel = 0
		ImageLabel_.Transparency = 1
		ImageLabel_.BackgroundColor3 = Color3.new(1, 1, 1)
		ImageLabel_.Image = "rbxassetid://12717676115"
		ImageLabel_.Size = UDim2.new(1, 0, 1, 0)
		ImageLabel_.BorderColor3 = Color3.new(0, 0, 0)
		ImageLabel_.BackgroundTransparency = 1
		ImageLabel_.ImageColor3 = Color3.new(0.333333, 1, 0)
		ImageLabel_.Parent = BillboardGui
		task.spawn(function()
			while p240.Parent do
				if _G.CanExplodeBombs and not u837 then
					ImageLabel_.ImageColor3 = Color3.new(0.333333, 1, 0)
					Sound:Play()
					u837 = true
				elseif not _G.CanExplodeBombs and u837 then
					u837 = false
					ImageLabel_.ImageColor3 = Color3.new(1, 0, 0)
				end

				wait()
			end
		end)
	end
end
_G.FirstFloppaMessage = false
SetKunaiToyAntiKick = function(p241)
	if p241:FindFirstChild("Cat") then
		return
	end

	for _, descendant in pairs(p241:GetDescendants()) do
		if descendant:IsA("BasePart") then
			descendant.CanQuery = false
			descendant.Transparency = 1
			descendant.CanCollide = false
		end
	end

	local Sound = Instance.new("Sound", p241)

	Sound.SoundId = "rbxassetid://9120299506"
	Sound.Volume = 0.1

	local BillboardGui = Instance.new("BillboardGui")
	local ImageLabel_ = Instance.new("ImageLabel")
	local TextLabel = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local thread
	local thread2
	local t36 = {
		"Bliz_T HUB is the best!",
		"Hi!",
		"Your avatar is so pretty!",
		"HelloWorld('print')",
		"Remember, do not abuse, or some admin can hunt you!",
		"VHCK and his hub is garbage (lag machine) and the whole PDD clan is trash (they don't have a father)"
	}

	BillboardGui.Name = "Cat"
	BillboardGui.Parent = p241
	BillboardGui.Adornee = p241
	BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	BillboardGui.Active = true
	BillboardGui.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel_.Parent = BillboardGui
	ImageLabel_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel_.BackgroundTransparency = 1
	ImageLabel_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel_.BorderSizePixel = 0
	ImageLabel_.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel_.Image = "rbxassetid://124614790259049"
	TextLabel.Parent = BillboardGui
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.LayoutOrder = 5
	TextLabel.Position = UDim2.new(0.5, 0, 0, 0)
	TextLabel.Size = UDim2.new(2, 0, 0.300000012, 0)
	TextLabel.Font = Enum.Font.Arcade
	TextLabel.Text = ""
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 9
	TextLabel.TextStrokeTransparency = 0
	TextLabel.TextWrapped = true
	UITextSizeConstraint.Parent = TextLabel
	UITextSizeConstraint.MaxTextSize = 9

	local function v848(p242, p243)
		if (_G.LastTxtFloppaPriority or p243) <= p243 then
			_G.LastTxtFloppaPriority = p243

			if thread then
				task.cancel(thread)
			end

			if thread2 then
				task.cancel(thread2)
			end

			TextLabel.Text = ""
			thread2 = task.spawn(function()
				for i = 0, #p242 do
					if p241.Parent == nil then
						Sound:Destroy()

						break
					end

					TextLabel.Text = string.sub(p242, 1, i)
					Sound:Play()
					task.wait(0.05)
				end
			end)
			thread = task.delay(15, function()
				_G.LastTxtFloppaPriority = 0
				TextLabel.Text = ""
			end)
		end
	end

	task.spawn(function()
		local t37 = {}
		local thread3

		thread3 = task.spawn(function()
			wait(60)

			while true do
				for i = 1, #t36 do
					local v853 = math.random(1, #t36)

					if table.find(t37, v853) ~= nil then
						repeat
							v853 = math.random(1, #t36)
						until table.find(t37, v853) == nil
					end

					table.insert(t37, v853)
					v848(t36[v853], 1)
					wait(60)
				end

				print("Repeated!")
				table.clear(t37)
			end
		end)
	end)

	local n14 = 0

	ImageLabel_.ImageRectSize = Vector2.new(85, 85)
	ImageLabel_.ImageRectOffset = Vector2.new(0, 0)
	task.spawn(function()
		while BillboardGui.Parent do
			n14 = (n14 + 1) % 55
			ImageLabel_.ImageRectOffset = Vector2.new(n14 % 5 * 85, math.floor(n14 / 5) * 85)
			task.wait(0.083333333333333329)
		end
	end)

	return v848
end
COAroundPParams = OverlapParams.new()
COAroundPParams.FilterDescendantsInstances = {
	GetPlayerCharacter(),
	W.Map,
	W.Plots,
	W.Waypoints,
	W.Slots
}
COAroundPParams.FilterType = Enum.RaycastFilterType.Exclude
IsItemInPlayerPlot = function(p244)
	if p244:IsDescendantOf(W.PlotItems) then
		local RemainingTimeInHouse = _G.RemainingTimeInHouse

		if RemainingTimeInHouse and RemainingTimeInHouse.Parent then
			for i = 1, 5 do
				if RemainingTimeInHouse:IsDescendantOf(workspace.Plots["Plot" .. i]) then
					return true
				end
			end
		end
	end
end
GetTeslaCoilFromPlayerPlot = function()
	if _G.RemainingTimeInHouse and _G.RemainingTimeInHouse.Parent and IsPlayerInsideSafeZone(LocalPlayer) then
		for i = 1, 5 do
			if _G.RemainingTimeInHouse:IsDescendantOf(workspace.Plots["Plot" .. i]) then
				return workspace.Plots["Plot" .. i].TeslaCoil.ZapPart
			end
		end
	end
end
PalletToyFound = nil
CheckPallet = function()
	local v858
	local v859 = GetPlayerCFrame()

	for _, child in pairs(u112:GetChildren()) do
		if child.Name == "PalletLightBrown" and Getdistancefromcharacter(child:GetPivot().Position) < 30 then
			v858 = child
		elseif child.Name == "PalletLightBrown" and Getdistancefromcharacter(child:GetPivot().Position) > 30 then
			DeleteToyRE:FireServer(child)
		end
	end

	if not v858 and v859 then
		SpawnToy({
			"PalletLightBrown",
			CFrame.new(v859.Position.X, v859.Position.Y, v859.Position.Z, -0.133750245, -0.471861839, 0.871468484, -3.7252903e-09, 0.879369617, 0.476139903, -0.991015136, 0.0636838302, -0.117615893),
			(Vector3.new(0, 97.69000244140625, 0))
		}, true)
	end

	if v858 then
		if not v858:GetAttribute("Connected2") then
			local connection = v858.DescendantAdded:Connect(function(descendant)
				if descendant.Name == "PartOwner" and descendant.Value ~= LocalPlayer.Name then
					v858:SetAttribute("AlreadySetOwnerShip", false)
				end
			end)
			local SoundPart = v858:FindFirstChild("SoundPart")

			task.spawn(function()
				if not SoundPart then
					return
				end

				while v858.Parent do
					if not v858:GetAttribute("AlreadySetOwnerShip") then
						if SNOWshipOnce(SoundPart) then
							v858:SetAttribute("AlreadySetOwnerShip", true)
						elseif Getdistancefromcharacter(SoundPart.Position) > 30 then
							DeleteToyRE:FireServer(v858)
						end
					end

					task.wait(0.1)
				end

				PalletToyFound = nil
				connection:Disconnect()
			end)
			v858:SetAttribute("Connected2", true)
		end
	end

	PalletToyFound = v858
end
GetPalletPart = function()
	if PalletToyFound then
		return PalletToyFound
	end

	CheckPallet()
end

do
	ColissionPallet = function(p245)
		local v864 = GetPalletPart()
		local PrimaryPart

		if v864 then
			PrimaryPart = v864.PrimaryPart
		end

		if v864 and PrimaryPart then
			local SoundPart = v864:FindFirstChild("SoundPart")

			if not PrimaryPart:FindFirstChild("PalletPosRemove") and v864:GetAttribute("AlreadySetOwnerShip") then
				local BodyPosition = Instance.new("BodyPosition", PrimaryPart)

				BodyPosition.Name = "PalletPosRemove"
				BodyPosition.MaxForce = Vector3.new()

				if not CheckIfIsAToyInPlayerPlot(v864) then
					SetModelProperties(v864)
					BodyPosition.MaxForce = Vector3.new(1, 1, 1) * math.huge
					BodyPosition.Position = Vector3.new(0, 10000000, 0)
				end
			end

			if p245 and v864:GetAttribute("AlreadySetOwnerShip") then
				SoundPart.Position = p245
				SoundPart.AssemblyLinearVelocity = Vector3.new(0, -200, 0)
			end
		end
	end
end

CheckIfKunaiIsOnPlayer = function(p246)
	if typeof(p246) == "Instance" and p246:IsA("Model") and p246.Parent then
		local StickyPart = p246:FindFirstChild("StickyPart")
		local v869 = GetPlayerCharacter()

		if StickyPart and v869 then
			local StickyWeld = StickyPart:FindFirstChild("StickyWeld")

			if StickyWeld then
				local Part1 = StickyWeld.Part1

				if StickyWeld.Enabled == false then
					return "Useless"
				end

				if not Part1 then
					return "No use!"
				end

				if Part1:IsDescendantOf(v869) then
					return "Using"
				end

				return "Used"
			end
		end
	end
end

do
	CKIsHolding = function(p247)
		if typeof(p247) == "Instance" and p247:IsA("Model") and p247.Parent then
			local StickyPart = p247:FindFirstChild("StickyPart")

			if StickyPart then
				local StickyWeld = StickyPart:FindFirstChild("StickyWeld")

				if StickyWeld then
					local Part1 = StickyWeld.Part1

					if StickyWeld.Enabled == false then
						return nil
					end

					if Part1 then
						return Part1, (StickyWeld.Part0.Position - Part1.Position).Magnitude
					end
				end
			end
		end
	end
end

CheckIfPlayerIsHoldingFood = function(p248)
	if typeof(p248) == "Instance" and p248:IsA("Model") and p248.Parent then
		local HoldPart = p248:FindFirstChild("HoldPart")
		local v876 = GetPlayerCharacter()

		if HoldPart then
			local RigidConstraint = HoldPart:FindFirstChild("RigidConstraint")

			if RigidConstraint then
				local Attachment1 = RigidConstraint.Attachment1

				if RigidConstraint.Enabled == false then
					return "Useless"
				end

				if not Attachment1 then
					return "No use!"
				end

				if Attachment1:IsDescendantOf(v876) then
					return "Using"
				end

				return "Used"
			end
		end
	end
end

do
	CheckIfHoldableUse = function(p249)
		if typeof(p249) == "Instance" and p249:IsA("Model") and p249.Parent then
			local HoldPart = p249:FindFirstChild("HoldPart")
			local MusicPart = p249:FindFirstChild("MusicPart")

			if MusicPart then
				return MusicPart:FindFirstChildOfClass("Sound")
			end

			if HoldPart then
				local Playing = HoldPart:FindFirstChild("EatingSound") and HoldPart.EatingSound.Playing
				local Playing2 = HoldPart:FindFirstChild("EmptyEatingSound") and HoldPart.EmptyEatingSound.Playing

				return Playing or Playing2
			end
		end
	end
end

CheckPiano = function()
	if PianoFound then
		return true
	end

	local v883
	local v884 = GetPlayerCFrame()

	for _, child in pairs(u112:GetChildren()) do
		if child.Name == "MusicKeyboard" and child:FindFirstChild("SoundPart") and child.Parent then
			if Getdistancefromcharacter(child.SoundPart.Position) > 30 then
				DeleteToyRE:FireServer(child)
			else
				v883 = child
			end
		end
	end

	if not v883 and v884 then
		SpawnToy({
			"MusicKeyboard",
			CFrame.new(v884.Position.X, v884.Position.Y, v884.Position.Z, -0.133750245, -0.471861839, 0.871468484, -3.7252903e-09, 0.879369617, 0.476139903, -0.991015136, 0.0636838302, -0.117615893),
			(Vector3.new(0, 97.69000244140625, 0))
		}, true)
	end

	if v883 and not v883:GetAttribute("Connected2") and v883.Parent and v883:WaitForChild("SoundPart", 1) then
		local SoundPart = v883:FindFirstChild("SoundPart")
		local Attachment = Instance.new("Attachment", SoundPart)

		SetModelProperties3(v883)

		local AlignPosition = Instance.new("AlignPosition", SoundPart)

		AlignPosition.Name = "PianoPos"
		AlignPosition.Responsiveness = 50
		AlignPosition.MaxForce = math.huge
		AlignPosition.ApplyAtCenterOfMass = true
		AlignPosition.Mode = Enum.PositionAlignmentMode.TwoAttachment
		AlignPosition.Attachment0 = Attachment

		local AlignOrientation = Instance.new("AlignOrientation", SoundPart)

		AlignOrientation.Name = "PianoOrientation"
		AlignOrientation.Attachment0 = Attachment
		AlignOrientation.Mode = Enum.OrientationAlignmentMode.TwoAttachment
		AlignOrientation.RigidityEnabled = true
		AlignOrientation.Enabled = true

		local connection = v883.DescendantAdded:Connect(function(descendant)
			if descendant.Name == "PartOwner" and descendant.Value ~= LocalPlayer.Name then
				v883:SetAttribute("AlreadySetOwnerShip", false)
			end
		end)

		task.spawn(function()
			while v883.Parent do
				if not v883:GetAttribute("AlreadySetOwnerShip") then
					if SNOWshipOnce(SoundPart) then
						v883:SetAttribute("AlreadySetOwnerShip", true)
					elseif Getdistancefromcharacter(SoundPart.Position) > 30 then
						DeleteToyRE:FireServer(v883)
					end
				end

				AlignPosition.Attachment1 = _G.PianoAttachment
				AlignOrientation.Attachment1 = _G.PianoAttachment
				task.wait(0.1)
			end

			SoundPart = nil
			PianoFound = nil
			_G.PianoToy = nil

			if piano_gui.Enabled then
				print("Loop!")
				task.spawn(function()
					while not CheckPiano() and piano_gui.Enabled do
						task.wait(0.1)
					end
				end)
			end

			connection:Disconnect()
			print("Pew!")
		end)
		v883:SetAttribute("Connected2", true)
	end

	PianoFound = v883
	_G.PianoToy = PianoFound
end
checkBananaState = function(p250)
	if p250 then
		local EdiblePart = p250:FindFirstChild("EdiblePart")
		local HoldPart = p250:FindFirstChild("HoldPart")

		if not (EdiblePart or HoldPart and HoldPart.RigidConstraint.Attachment1) then
			return true
		end
	end
end
Ragdoll = function(p251)
	if Banana and not Banana.Parent then
		Banana = nil
		BananaF = nil
	end

	if BananaF then
		BananaF(p251)
	elseif Banana and not BananaF then
		local EdiblePart = Banana:FindFirstChild("EdiblePart")
		local HoldPart = Banana:FindFirstChild("HoldPart")
		local Main = Banana:FindFirstChild("Main")
		local HitboxPart = Banana:FindFirstChild("HitboxPart")
		local RigidConstraint = HoldPart and HoldPart:FindFirstChild("RigidConstraint")
		local HoldItemRemoteFunction = HoldPart and HoldPart:FindFirstChild("HoldItemRemoteFunction")
		local DropItemRemoteFunction = HoldPart and HoldPart:FindFirstChild("DropItemRemoteFunction")

		if not HoldPart or not RigidConstraint or not Main or not HoldItemRemoteFunction or not DropItemRemoteFunction or not HitboxPart then
			return
		end

		local v901

		for _, child in pairs(Banana:GetChildren()) do
			if child.Name == "BananaPeel" and child:FindFirstChildOfClass("TouchTransmitter") then
				v901 = child
			end
		end

		if checkBananaState(Banana) then
			BananaF = function(p252)
				v901.Position = p252.Position
				wait(0.002)
				v901.Position = Main.Position
				wait(0.002)
				Main.CFrame = CFrame.new(p252.Position + Vector3.new(0, -7, 0)) * Main.CFrame.Rotation
			end
			task.spawn(function()
				while Banana.Parent do
					if SNOWshipOnce(HitboxPart) then
						for i = 1, 15 do
							v118:FireServer(HitboxPart)
							task.wait()
						end
					end

					task.wait()
				end
			end)

			local BodyVelocity = Instance.new("BodyVelocity", Main)

			BodyVelocity.Velocity = Vector3.new(0, 0, 0)
			BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			BodyVelocity.Name = "JustABodyVelocity"

			local BodyGyro = Instance.new("BodyGyro", Main)

			BodyGyro.CFrame = CFrame.new(0, 0, 0)
			BodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
			SetModelProperties(Banana)

			local connection = Banana.DescendantAdded:Connect(function(descendant)
				if descendant.Name == "PartOwner" and descendant.Value ~= LocalPlayer.Name then
					DeleteToyRE:FireServer(Banana)
				end
			end)

			Banana.Destroying:Connect(function()
				BodyVelocity:Destroy()
				BodyGyro:Destroy()
				connection:Disconnect()
				Banana = nil
				BananaF = nil
			end)
		elseif EdiblePart and not RigidConstraint.Attachment1 then
			local t38 = {
				Banana,
				LocalPlayer.Character
			}

			task.spawn(function()
				HoldItemRemoteFunction:InvokeServer(unpack(t38))
			end)
		else
			local ok = not (not not EdiblePart and not not RigidConstraint.Attachment1)

			if not ok then
				ok = not (not not RigidConstraint.Attachment1:IsDescendantOf(LocalPlayer.Character) and not HoldPart.EatingSound.IsPlaying)
			end

			if not ok then
				RS.HoldEvents.Use:FireServer(Banana)
				task.wait(0.5)
			elseif not EdiblePart and RigidConstraint.Attachment1 then
				if RigidConstraint.Attachment1:IsDescendantOf(LocalPlayer.Character) then
					local t39 = {
						Banana,
						nil,
						nil
					}

					task.spawn(function()
						DropItemRemoteFunction:InvokeServer(unpack(t39))
					end)
				end
			end
		end
	else
		local v911

		for _, child in pairs(u112:GetChildren()) do
			if child.Name == "FoodBanana" and not v911 then
				v911 = child
			end
		end

		if not v911 then
			local v914 = GetPlayerCFrame()

			if v914 then
				SpawnToy({
					"FoodBanana",
					v914 * CFrame.new(0, 20, 20),
					(Vector3.new())
				}, true)
			end
		end

		Banana = v911
	end
end
Burn = function(p253, p254)
	if Oven and not Oven.Parent then
		Oven = nil
		OvenF = nil
	end

	if OvenF then
		OvenF(p253, p254)
	elseif Oven and not OvenF then
		local PushedButtonOven = Oven:FindFirstChild("PushedButtonOven")
		local ButtonOven = Oven:FindFirstChild("ButtonOven")
		local Main = Oven:FindFirstChild("Main")
		local PaintPlayerPart = Oven:FindFirstChild("PaintPlayerPart")
		local Value = ButtonOven and ButtonOven:FindFirstChild("FirePart") and ButtonOven.FirePart.Value
		local CanBurn = Value and Value:FindFirstChild("CanBurn")

		if not PushedButtonOven or not ButtonOven or not Main or not PaintPlayerPart or not Value or not CanBurn then
			return
		end

		local v921 = Getdistancefromcharacter(Main.Position)

		if CanBurn.Value then
			OvenF = function(p255, p256)
				if p256 then
					PaintPlayerPart.Position = p255.Position
					wait(0.002)
					PaintPlayerPart.Position = Main.Position
					wait(0.002)
				else
					Value.Position = p255.Position
					wait(0.002)
					Value.Position = Main.Position
					wait(0.002)
				end

				Main.CFrame = CFrame.new(p255.Position + Vector3.new(0, -10, 0)) * Main.CFrame.Rotation
			end

			local BodyVelocity = Instance.new("BodyVelocity", Main)

			BodyVelocity.Velocity = Vector3.new(0, 0, 0)
			BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			BodyVelocity.Name = "JustABodyVelocity"

			local BodyGyro = Instance.new("BodyGyro", Main)

			BodyGyro.CFrame = CFrame.new(0, 0, 0)
			BodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
			SetModelProperties(Oven)

			local connection = Oven.DescendantAdded:Connect(function(descendant)
				if descendant.Name == "PartOwner" and descendant.Value ~= LocalPlayer.Name then
					if Getdistancefromcharacter(Main.Position) > 30 then
						if IsNetworkOwner(Main) then
							SNOWshipOnce(ButtonOven)
						else
							DeleteToyRE:FireServer(Oven)
						end
					else
						SNOWshipOnce(ButtonOven)

						return
					end
				end
			end)

			Oven.Destroying:Connect(function()
				BodyVelocity:Destroy()
				BodyGyro:Destroy()
				connection:Disconnect()
				Oven = nil
				OvenF = nil
			end)
		elseif v921 < 30 then
			SNOWship(ButtonOven)
			wait(0.25)
		else
			DeleteToyRE:FireServer(Oven)
		end
	else
		local v925

		for _, child in pairs(u112:GetChildren()) do
			if child.Name == "OvenDarkGray" and not v925 then
				v925 = child
			end
		end

		if not v925 then
			local v928 = GetPlayerCFrame()

			if v928 then
				SpawnToy({
					"OvenDarkGray",
					v928 * CFrame.new(0, 20, 20),
					(Vector3.new())
				}, true)
			end
		end

		Oven = v925
	end
end

do
	ExplodeSnowball = function(p257)
		if BSnowball and not BSnowball.Parent then
			BSnowball = nil
			ExplodeSBF = nil
		end

		if ExplodeSBF then
			ExplodeSBF(p257)
		elseif BSnowball and not ExplodeSBF then
			local SoundPart = BSnowball:FindFirstChild("SoundPart")

			if not SoundPart then
				return
			end

			local v930 = Getdistancefromcharacter(SoundPart.Position)

			if CheckNetworkOwnerShipOnPart(SoundPart) then
				ExplodeSBF = function(p258)
					SoundPart.CFrame = p258.CFrame
					SoundPart.AssemblyLinearVelocity = Vector3.new(0, -200, 0)
				end
			elseif v930 < 30 then
				SNOWshipOnce(SoundPart)
				task.wait(0.01)
			else
				DeleteToyRE:FireServer(BSnowball)
			end
		else
			local v931

			for _, child in pairs(u112:GetChildren()) do
				if child.Name == "BallSnowball" and not v931 then
					v931 = child
				end
			end

			if not v931 then
				local v934 = GetPlayerCFrame()

				if v934 then
					SpawnToy({
						"BallSnowball",
						v934 * CFrame.new(0, 20, 20),
						(Vector3.new(0, 0, 0))
					}, true)
				end
			end

			BSnowball = v931
		end
	end
end

smalldiceToyFound = nil
CheckFakeAim = function()
	local u935
	local v936 = GetPlayerCFrame()

	for _, child in pairs(u112:GetChildren()) do
		if child.Name == "DiceSmall" and child:FindFirstChild("Center") and child.PrimaryPart then
			if Getdistancefromcharacter(child.PrimaryPart.Position) <= 30 then
				u935 = child
			else
				DeleteToyRE:FireServer(u935)
			end
		end
	end

	if not u935 and v936 then
		SpawnToy({
			"DiceSmall",
			CFrame.new(v936.Position.X, v936.Position.Y, v936.Position.Z, -0.133750245, -0.471861839, 0.871468484, -3.7252903e-09, 0.879369617, 0.476139903, -0.991015136, 0.0636838302, -0.117615893),
			(Vector3.new(0, 97.69000244140625, 0))
		}, _G.HouseBreaked)
	end

	if u935 and u935:FindFirstChild("Center") then
		if not u935:GetAttribute("Connected2") then
			local connection = u935.DescendantAdded:Connect(function(descendant)
				if descendant.Name == "PartOwner" and descendant.Value ~= LocalPlayer.Name then
					u935:SetAttribute("AlreadySetOwnerShip", false)
				end
			end)
			local SoundPart = u935:FindFirstChild("SoundPart")

			task.spawn(function()
				while u935.Parent do
					if not u935:GetAttribute("AlreadySetOwnerShip") then
						if SNOWshipOnce(SoundPart) then
							u935:SetAttribute("AlreadySetOwnerShip", true)
						elseif Getdistancefromcharacter(SoundPart.Position) > 30 then
							DeleteToyRE:FireServer(u935)
						end
					end

					if not _G.FireworkEffectSpam then
						DeleteToyRE:FireServer(u935)
					end

					task.wait(0.1)
				end

				SoundPart = nil
				smalldiceToyFound = nil
				u935 = nil
				connection:Disconnect()
				print("Pew!")
			end)
			u935:SetAttribute("Connected2", true)
		end
	end

	smalldiceToyFound = u935
end

do
	GetFakeAim = function()
		if smalldiceToyFound and smalldiceToyFound.Parent ~= nil then
			return smalldiceToyFound
		end

		CheckFakeAim()
	end
end

GetFakeAim2 = function()
	local v941 = GetFakeAim()
	local PrimaryPart
	local Character = LocalPlayer.Character

	if v941 then
		PrimaryPart = v941.PrimaryPart
	end

	if not v941 or not Character or not PrimaryPart then
		return
	end

	hitpart = v941:FindFirstChild("StickyRemoverPart")

	if not PrimaryPart:FindFirstChild("AimPosRemove") and v941:GetAttribute("AlreadySetOwnerShip") then
		local BodyPosition = Instance.new("BodyPosition", PrimaryPart)

		BodyPosition.Name = "AimPosRemove"
		BodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		BodyPosition.D = 200
		BodyPosition.P = 50000
		_G.GotFakeAim2 = true
		task.spawn(function()
			while v941.Parent do
				BodyPosition.Position = Vector3.new(1000, 400, 10000)
				task.wait(0.05)
				BodyPosition.Position = Vector3.new(-1000, 400, 10000)
				task.wait(0.05)
			end

			_G.GotFakeAim2 = false
		end)
	end

	return PrimaryPart
end
BlobmanGodModeUsed = nil
LastCFrameBeforeAutoGucci = nil
CheckIfIsTryingToRemoveLegs = function()
	local v945 = GetPlayerCharacter()

	if v945 and _G.AntiRagdoll and CheckIfCharHasLegs(v945) then
		return true
	end
end
removeBlobmanScript = function()
	local LocalCreatureControl = LocalPlayer.Character:FindFirstChild("LocalCreatureControl")

	if typeof(_G.UniversalPlayerHumanoid) == "Instance" and _G.UniversalPlayerHumanoid:IsA("Humanoid") then
		_G.UniversalPlayerHumanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
	end

	if LocalCreatureControl then
		local BlobmanGui = LocalCreatureControl:FindFirstChild("BlobmanGui")

		if BlobmanGui then
			BlobmanGui:Destroy()
		end

		local ToggleMobileButtonVisibility = LocalCreatureControl.Parent.GrabbingScript.ToggleMobileButtonVisibility
		local ToggleControlsGuiVisibility = LocalPlayer.PlayerGui.ControlsGui.ToggleControlsGuiVisibility

		CAS:UnbindAction("LeftGrab")
		CAS:UnbindAction("RightGrab")
		ToggleMobileButtonVisibility:Fire(true)
		ToggleControlsGuiVisibility:Fire(true)
		LocalCreatureControl:Destroy()
	end
end

if typeof(loopRagdollGucci) == "RBXScriptConnection" then
	loopRagdollGucci:Disconnect()
	loopRagdollGucci = nil
end

do
	LoopRagdollGucci = function(p259)
		if typeof(loopRagdollGucci) == "RBXScriptConnection" or not p259 then
			if typeof(loopRagdollGucci) == "RBXScriptConnection" and not p259 then
				loopRagdollGucci:Disconnect()
				loopRagdollGucci = nil
			end
		else
			loopRagdollGucci = R.Heartbeat:Connect(function()
				v134:FireServer(_G.UniversalPlayerRoot, 0)
			end)
		end
	end
end

CheckBlobman = function(p260)
	if typeof(p260) == "Instance" and p260.Name == "CreatureBlobman" and p260:FindFirstChild("VehicleSeat") and p260.Parent and p260:FindFirstChild("LeftDetector") and p260:FindFirstChild("RightDetector") then
		return true
	end
end
GetBlobman = function(p261)
	local CreatureBlobman

	GetPlayerCharacter()

	local v951, v952, v953 = pairs(u112:GetChildren())
	local v954 = geniter(v951, v952, v953)

	while true do
		local v955 = table.pack(v954())

		if not v955[1] then
			break
		end

		local v956 = v955[3]

		if v956.Name == "CreatureBlobman" and not v956:GetAttribute("Connected2") then
			if CheckBlobman(v956) then
				CreatureBlobman = v956

				break
			end

			DeleteToyRE:FireServer(v956)
		end
	end

	if not (CreatureBlobman or DoesPlayerHasThisToy("CreatureBlobman") or not (Coins() < 750)) then
		local v957, v958, v959 = pairs(W:GetChildren())

		for _, v in v957, v958, v959 do
			if v:IsA("Folder") and string.find(v.Name, "SpawnedInToys") then
				for _, child in pairs(v:GetChildren()) do
					if child.Name == "CreatureBlobman" and not child:GetAttribute("Connected2") and CheckBlobman(child) then
						CreatureBlobman = child

						break
					end
				end
			end
		end
	end

	if not CreatureBlobman then
		if u112:FindFirstChild("CreatureBlobman") then
			CreatureBlobman = u112.CreatureBlobman
		else
			SpawnToy({
				"CreatureBlobman",
				p261 or CFrame.new(_G.UniversalPlayerHead.Position),
				(Vector3.new(0, 97.69000244140625, 0))
			}, true)
		end
	end

	return CreatureBlobman
end
Window = result:MakeWindow({
	Name = "Bliz_T HUB FTAP",
	HidePremium = true,
	SaveConfig = true,
	ConfigFolder = "FTAPConfig",
	IntroEnabled = false,
	KeyToOpenWindow = "M",
	FreeMouse = true
})
Main_Tab = Window:MakeTab({
	Name = "Combat",
	Icon = "rbxassetid://124448418211665",
	PremiumOnly = false
})
LongReachGrab_Player = Window:MakeTab({
	Name = "Blobman",
	Icon = "rbxassetid://72873461711389",
	PremiumOnly = false
})
Invincibility_Tab = Window:MakeTab({
	Name = "Invincibility",
	Icon = "rbxassetid://110987169760162",
	PremiumOnly = false
})
Toggle_Tab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://11984980776",
	PremiumOnly = false
})
Esp_Tab = Window:MakeTab({
	Name = "ESP",
	Icon = "rbxassetid://85611589536956",
	PremiumOnly = false
})
Explosion_Tab = Window:MakeTab({
	Name = "Explosions",
	Icon = "rbxassetid://15889469852",
	PremiumOnly = false
})
Teleport_Tab = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://7733992829",
	PremiumOnly = false
})
PlayerLine_Tab = Window:MakeTab({
	Name = "Custom Line",
	Icon = "rbxassetid://7734022107",
	PremiumOnly = false
})
Auras_Tab = Window:MakeTab({
	Name = "Auras",
	Icon = "rbxassetid://6723742952",
	PremiumOnly = false
})
Keybind_Tab = Window:MakeTab({
	Name = "Keybinds",
	Icon = "rbxassetid://121474456068237",
	PremiumOnly = false
})
LoopPlayer_Tab = Window:MakeTab({
	Name = "Loop Players",
	Icon = "rbxassetid://7733964640",
	PremiumOnly = false
})
FigurePlayer_Tab = Window:MakeTab({
	Name = "Figure Grab",
	Icon = "rbxassetid://70870045532731",
	PremiumOnly = false
})
Farm_Tab = Window:MakeTab({
	Name = "Auto",
	Icon = "rbxassetid://7733916988",
	PremiumOnly = false
})
Misc_Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://7733917120",
	PremiumOnly = false
})
ApplyServer_Tab = Window:MakeTab({
	Name = "Apply Server",
	Icon = "rbxassetid://88960788421557",
	PremiumOnly = false
})
DiscordServer_Tab = Window:MakeTab({
	Name = "Discord Server",
	Icon = "rbxassetid://101192191207677",
	PremiumOnly = false
})
Notifications_Tab = Window:MakeTab({
	Name = "Notifications",
	Icon = "rbxassetid://94612128913941",
	PremiumOnly = false
})
PlayerNotificationSection = Notifications_Tab:AddSection({
	Name = "Players Notification"
})
GucciNotificationSection = Notifications_Tab:AddSection({
	Name = "Anti-Grab (Gucci) Notification"
})
PacketNotificationSection = Notifications_Tab:AddSection({
	Name = "Packet (Senders) Notification"
})
LagServerNotificationSection = Notifications_Tab:AddSection({
	Name = "Lag Server (Spammers) Notification"
})
PacketDetectionRBXS = nil
LagServerNotificationSection:AddToggle({
	Name = "Detect Line Spam!",
	Default = true,
	Callback = function(p262)
		LSNotififyS = p262
	end,
	Save = true,
	Flag = "LSNotification_Toggle"
})
LagV3Connections = {}
LagV3Contaminated = {}
LagV3LineLog = {}
LagV3LastNotify = {}
WatchLagStickyToy = function(p263)
	if not p263:IsA("Model") then
		return
	end

	local v964 = fsearch(p263, "StickyPart", 3)
	local v965 = v964 and fsearch(v964, "StickyWeld", 3)

	if not v965 then
		return
	end

	local v966 = fsearch(p263, "PlayerValue", 3)

	if v966 and v966.Value == LocalPlayer then
		return
	end

	local u967 = false
	local Part1

	local function v969()
		local v970 = Part1 and LagV3Contaminated[Part1]

		if v970 then
			v970[v965] = nil

			if next(v970) == nil then
				LagV3Contaminated[Part1] = nil
			end
		end

		Part1 = nil
	end
	local function v971()
		if u967 then
			return
		end

		u967 = true

		for i = 1, 30 do
			if not p263.Parent or not v965.Parent then
				break
			end

			if not v965.Enabled or not v965.Part1 then
				task.wait()

				continue
			end

			local Magnitude = v964.Position.Magnitude

			if v965:IsA("Weld") then
				Magnitude = math.max(Magnitude, v965.C0.Position.Magnitude, v965.C1.Position.Magnitude)
			end

			if Magnitude > 5000 then
				v969()
				Part1 = v965.Part1
				LagV3Contaminated[Part1] = LagV3Contaminated[Part1] or {}
				LagV3Contaminated[Part1][v965] = true
				v965.Enabled = false

				break
			end

			task.wait()
		end

		u967 = false
	end

	local t40

	local function v975()
		if p263:IsDescendantOf(W) then
			return
		end

		for _, v in ipairs(t40) do
			v:Disconnect()
			LagV3Connections[v] = nil
		end

		v969()
	end

	t40 = {
		v965:GetPropertyChangedSignal("Part1"):Connect(v971),
		v965:GetPropertyChangedSignal("Enabled"):Connect(v971),
		p263.AncestryChanged:Connect(v975)
	}

	for _, v in ipairs(t40) do
		LagV3Connections[v] = v
	end

	v975()
	task.spawn(v971)
end
LagServerNotificationSection:AddToggle({
	Name = "Detect Lag Server V3",
	Default = true,
	Callback = function(p264)
		ConnectPlayersTF("LagV3Detector")
		DisconnectAll(LagV3Connections)
		table.clear(LagV3Contaminated)
		table.clear(LagV3LineLog)
		table.clear(LagV3LastNotify)

		if not p264 then
			return
		end

		ConnectPlayersTF("LagV3Detector", "Add", WatchLagStickyToy)

		local connection = PS.PlayerRemoving:Connect(function(player)
			LagV3LineLog[player] = nil
			LagV3LastNotify[player] = nil
		end)

		LagV3Connections[connection] = connection

		local connection2 = v117.OnClientEvent:Connect(function(p265, p266)
			if typeof(p265) ~= "Instance" or not p265:IsA("Player") or p265 == LocalPlayer then
				return
			end

			local v982 = typeof(p266) == "Instance" and LagV3Contaminated[p266]

			if not v982 then
				return
			end

			local v983 = false

			for k in pairs(v982) do
				if k.Parent then
					v983 = true
				else
					v982[k] = nil
				end
			end

			if not v983 then
				LagV3Contaminated[p266] = nil

				return
			end

			local now = os.clock()
			local v986 = LagV3LineLog[p265] or {}

			LagV3LineLog[p265] = v986

			for i = #v986, 1, -1 do
				if now - v986[i] > 3 then
					table.remove(v986, i)
				end
			end

			table.insert(v986, now)

			if #v986 < 4 or LagV3LastNotify[p265] and now - LagV3LastNotify[p265] < 10 then
				return
			end

			table.clear(v986)
			LagV3LastNotify[p265] = now
			result:MakeNotification({
				Name = "Lag Server V3 Detected",
				Content = "<font color='#ff5555'><b>" .. p265.DisplayName .. "</b></font>" .. " (@" .. p265.Name .. ") is spamming lines on a " .. p266.Name .. " with a sticky toy too far away!",
				Image = "rbxassetid://131444449466462",
				Time = 6
			})
		end)

		LagV3Connections[connection2] = connection2
	end,
	Save = true,
	Flag = "LSV3Notification_Toggle"
})
PacketNotificationSection:AddToggle({
	Name = "Detect Packet",
	Default = true,
	Callback = function(p267)
		DetctPacket = p267

		if p267 then
			if typeof(PacketDetectionRBXS) == "RBXScriptConnection" then
				PacketDetectionRBXS:Disconnect()
				PacketDetectionRBXS = nil
			end

			PacketDetectionRBXS = v120.OnClientEvent:Connect(function(p268, ...)
				if not DetctPacket then
					return
				end

				if typeof(p268) ~= "Instance" or not p268:IsA("Player") or p268 == LocalPlayer then
					return
				end

				local v988 = packetsenders[p268]

				if v988 and not (os.clock() - v988 >= 3) then
					return
				end

				local t41 = { ... }
				local n15 = 0

				for _, v in ipairs(t41) do
					if typeof(v) == "string" then
						n15 += #v
					end
				end

				if n15 < 2048 then
					return
				end

				local v993 = p268.DisplayName .. " (" .. p268.Name .. ")"
				local v994 = DPFs.compressArgs(t41)

				packetsenders[p268] = os.clock()
				result:MakeNotification({
					Name = "Packet Detected!",
					Content = string.format("Sender: %s\nSize: %.3f MB\nArgs: %s", v993, n15 / 1048576, table.concat(v994, "\n")),
					Image = "rbxassetid://131444449466462",
					Time = 2
				})
			end)

			if typeof(PacketDetectionRBXS_2) == "RBXScriptConnection" then
				PacketDetectionRBXS_2:Disconnect()
				PacketDetectionRBXS_2 = nil
			end

			PacketDetectionRBXS_2 = v117.OnClientEvent:Connect(function(p269, ...)
				if not DetctPacket then
					return
				end

				if typeof(p269) ~= "Instance" or not p269:IsA("Player") or p269 == LocalPlayer then
					return
				end

				local v995 = packetsenders[p269]

				if v995 and not (os.clock() - v995 >= 3) then
					return
				end

				local t42 = { ... }
				local n16 = 0

				for _, v in ipairs(t42) do
					if typeof(v) == "string" then
						n16 += #v
					end
				end

				if n16 < 2048 then
					return
				end

				local v1000 = p269.DisplayName .. " (" .. p269.Name .. ")"
				local v1001 = DPFs.compressArgs(t42)

				packetsenders[p269] = os.clock()
				result:MakeNotification({
					Name = "Packet Detected!",
					Content = string.format("Sender: %s\nSize: %.3f MB\nArgs: %s", v1000, n16 / 1048576, table.concat(v1001, "\n")),
					Image = "rbxassetid://131444449466462",
					Time = 2
				})
			end)
		else
			if typeof(PacketDetectionRBXS) == "RBXScriptConnection" then
				PacketDetectionRBXS:Disconnect()
				PacketDetectionRBXS = nil
			end

			if typeof(PacketDetectionRBXS_2) == "RBXScriptConnection" then
				PacketDetectionRBXS_2:Disconnect()
				PacketDetectionRBXS_2 = nil
			end
		end
	end,
	Save = true,
	Flag = "DPNotification_Toggle"
})
PlayerNotificationSection:AddToggle({
	Name = "Blackhole (Kick)",
	Default = true,
	Callback = function(p270)
		KNotififyEN = p270
	end,
	Save = true,
	Flag = "KickNotification_Toggle"
})

do
	PlayerNotificationSection:AddToggle({
		Name = "Join",
		Default = false,
		Callback = function(p271)
			JNotififyEN = p271
		end,
		Save = true,
		Flag = "JoinNotification_Toggle"
	})
end

PlayerNotificationSection:AddToggle({
	Name = "Leave",
	Default = false,
	Callback = function(p272)
		LNotififyEN = p272
	end,
	Save = true,
	Flag = "LeaveNotification_Toggle"
})
GucciNotificationSection:AddToggle({
	Name = "Unknown Seat",
	Default = true,
	Callback = function(p273)
		GucciNotififyEN = p273
	end,
	Save = true,
	Flag = "Gucci_AGNotification_Toggle"
})
BlackHoleKick = {}
BlackHolePlayersReason = {}

do
	local t43 = {}
	local t44 = {}

	monitorCharAnchored = function(p274)
		local HumanoidRootPart = p274:WaitForChild("HumanoidRootPart", 5)

		if not HumanoidRootPart then
			return
		end

		local playerFromCharacter = PS:GetPlayerFromCharacter(p274)

		if not playerFromCharacter or playerFromCharacter == LocalPlayer then
			return
		end

		HumanoidRootPart:GetPropertyChangedSignal("Anchored"):Connect(function()
			if HumanoidRootPart.Anchored then
				t44[playerFromCharacter] = true
			else
				t44[playerFromCharacter] = nil
			end
		end)
	end

	for _, player in ipairs(PS:GetPlayers()) do
		if player.Character then
			task.spawn(monitorCharAnchored, player.Character)
		end

		player.CharacterAdded:Connect(monitorCharAnchored)
	end

	PS.PlayerAdded:Connect(function(player)
		t43[player] = nil
		player.CharacterAdded:Connect(monitorCharAnchored)
	end)
	PS.PlayerRemoving:Connect(function(player)
		if not KNotififyEN then
			return
		end

		if not t44[player] then
			return
		end

		if t43[player] then
			return
		end

		t43[player] = true
		result:MakeNotification({
			Name = "Black Hole Detected",
			Content = "<font color='#ff5555'><b>" .. player.DisplayName .. "</b></font> (@" .. player.Name .. ") has been kicked!",
			Image = "rbxassetid://138635884129147",
			Time = 10
		})
		task.delay(5, function()
			t43[player] = nil
			t44[player] = nil
		end)
	end)
	PS.PlayerAdded:Connect(function(player)
		local v1008 = table.find(BlackHolePlayersReason, player.Name)

		if v1008 then
			table.remove(BlackHolePlayersReason, v1008)
		end

		if not JNotififyEN then
			return
		end

		result:MakeNotification({
			Name = "Enter",
			Content = player.Name .. " has joined the server",
			Image = "rbxassetid://136249099949073",
			Time = 5
		})
	end)
	PS.PlayerRemoving:Connect(function(player, p275)
		if not LNotififyEN then
			return
		end

		wait(0.5)

		if table.find(t43, player.Name) then
			return
		end

		print(p275)
		result:MakeNotification({
			Name = "Leave",
			Content = player.Name .. " left the server",
			Image = "rbxassetid://91306356501736",
			Time = 5
		})
	end)
end

Config_Tab = Window:MakeTab({
	Name = "Config",
	Icon = "rbxassetid://7734053495",
	PremiumOnly = false
})
Credits_Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://7733687281",
	PremiumOnly = false
})

do
	local u1009

	task.spawn(function()
		local ok, result2 = pcall(function()
			return loadstring(game:HttpGet("https://pastebin.com/raw/H7LRyxPH"))()
		end)

		if ok then
			u1009 = result2[4]
		else
			u1009 = "Not Found"
		end

		local v1012 = DiscordServer_Tab:AddSection({
			Name = "Discord Server"
		})

		v1012:AddLabel(u1009)
		v1012:AddButton({
			Name = "Copy Discord Server Link",
			Callback = function()
				setclipboard(u1009)
				notify("Copied to your clipboard")
			end
		})
		v1012:AddLabel("Join my discord server to see updates!")
	end)
end

do
	task.spawn(function()
		Credits_Tab:AddParagraph("🛠️ Developers 💻", "People who helped me with my script!")
		Credits_Tab:AddPlayerParagraph(90063030)
		Credits_Tab:AddPlayerParagraph(9123724)
		Credits_Tab:AddPlayerParagraph(4249215190)
		Credits_Tab:AddPlayerParagraph(9584241219)
		Credits_Tab:AddPlayerParagraph(1390422876)
		Credits_Tab:AddPlayerParagraph(4573536788)
		Credits_Tab:AddPlayerParagraph(3244054854)
		Credits_Tab:AddPlayerParagraph(1030559478)
		Credits_Tab:AddParagraph("🧠 Special Thanks ⭐", "People who helped improve the script with ideas")
		Credits_Tab:AddPlayerParagraph(463805978)
		Credits_Tab:AddParagraph("Rampage Owner! 🧀", "The Pencil Penis script giver #1")
		Credits_Tab:AddPlayerParagraph(5096830050)
	end)
end

PerspectiveEffect = Instance.new("ScreenGui")
ImageLabel = Instance.new("ImageLabel")
PerspectiveSaturation = Instance.new("ColorCorrectionEffect", Lighting)
PerspectiveEffect.Name = "PerspectiveEffect"
PerspectiveEffect.DisplayOrder = -5
PerspectiveEffect.Enabled = true
PerspectiveEffect.IgnoreGuiInset = true
PerspectiveEffect.ResetOnSpawn = false
PerspectiveEffect.Parent = LocalPlayer.PlayerGui
ImageLabel.Parent = PerspectiveEffect
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "rbxassetid://8586979842"
ImageLabel.ImageTransparency = 1
PerspectiveSaturation.Enabled = true
PerspectiveSaturation.Saturation = 0
imagestransparencyeffect = 0.65
saturationvalue = -0.3
t1p = TweenInfo.new(0.6, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
t2p = TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
perspectiveON_effect1 = Tween:Create(ImageLabel, t1p, {
	ImageTransparency = imagestransparencyeffect
})
perspectiveON_effect2 = Tween:Create(PerspectiveSaturation, t1p, {
	Saturation = saturationvalue
})
perspectiveOff_effect1 = Tween:Create(ImageLabel, t2p, {
	ImageTransparency = 1
})
perspectiveOff_effect2 = Tween:Create(PerspectiveSaturation, t2p, {
	Saturation = 0
})
PerspectiveOnEffect = function()
	perspectiveON_effect1:Play()
	perspectiveON_effect2:Play()
end

do
	PerspectiveOffEffect = function()
		perspectiveOff_effect1:Play()
		perspectiveOff_effect2:Play()
	end
end

do
	turnPerspectiveMode = function(p276)
		if p276 and _G.PerspectiveEffectsAllow then
			PerspectiveOnEffect()
		else
			PerspectiveOffEffect()
		end
	end
end

gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
CAG = LocalPlayer.PlayerGui:FindFirstChild("ContextActionGui")

do
	IsMobile = function()
		if LocalPlayer.PlayerGui:FindFirstChild("ContextActionGui") then
			return true
		end
	end
end

if IsMobile() then
	gui.Parent = LocalPlayer.PlayerGui
end

scriptToGetSenv = nil
senv = nil
minDistance = 3
pcDistance = 0
imageButton = Instance.new("ImageButton")
imageButton.Size = UDim2.new(0, 45, 0, 45)
imageButton.Position = UDim2.new(1, -70, 1, -259)
imageButton.Image = "rbxassetid://97166444"
imageButton.BackgroundTransparency = 1
imageButton.ImageTransparency = 0.2
imageButton.Visible = false
imageButton.ImageColor3 = Color3.fromRGB(142, 142, 142)
imageButton.Parent = gui
imageLabel = Instance.new("ImageLabel")
imageLabel.Size = UDim2.new(1, 0, 1, 0)
imageLabel.Image = "rbxassetid://9603831913"
imageLabel.BackgroundTransparency = 1
imageLabel.Parent = imageButton
imageButtonDe = Instance.new("ImageButton")
imageButtonDe.Size = UDim2.new(0, 45, 0, 45)
imageButtonDe.Position = UDim2.new(1, -70, 1, -211)
imageButtonDe.Image = "rbxassetid://97166444"
imageButtonDe.BackgroundTransparency = 1
imageButtonDe.ImageTransparency = 0.2
imageButtonDe.Visible = false
imageButtonDe.ImageColor3 = Color3.fromRGB(142, 142, 142)
imageButtonDe.Parent = gui
imageLabelDe = Instance.new("ImageLabel")
imageLabelDe.Size = UDim2.new(1, 0, 1, 0)
imageLabelDe.Image = "rbxassetid://9603826756"
imageLabelDe.BackgroundTransparency = 1
imageLabelDe.Parent = imageButtonDe
IncreaseLineExtend = 0
buttonClicked = function()
	if senv and senv.distance and _G.FutherExtend then
		senv.distance = (senv.distance or 0) + IncreaseLineExtend

		if senv.distance < minDistance then
			senv.distance = minDistance
		end
	end
end
buttonClickedDE = function()
	if senv and senv.distance and _G.FutherExtend then
		senv.distance = (senv.distance or 0) - IncreaseLineExtend

		if senv.distance < minDistance then
			senv.distance = minDistance
		end
	end
end
toggleButtonState = function(p277)
	if p277 then
		if _G.FutherExtend then
			imageButton.Visible = true
			imageButton.Active = true
			imageButtonDe.Visible = true
			imageButtonDe.Active = true
		else
			imageButton.Visible = false
			imageButton.Active = false
			imageButtonDe.Visible = false
			imageButtonDe.Active = false
		end
	else
		imageButton.Visible = false
		imageButton.Active = false
		imageButtonDe.Visible = false
		imageButtonDe.Active = false

		return
	end
end
toggleDefaultExtendButtons = function(p278)
	if CAG then
		for _, descendant in pairs(CAG:GetDescendants()) do
			if descendant:IsA("ImageLabel") then
				local v1015 = descendant

				if v1015.Image == "rbxassetid://9603826756" or v1015.Image == "rbxassetid://9603831913" then
					v1015.Parent.Visible = p278
				end
			end
		end
	end
end

do
	local thread

	workspace.ChildRemoved:Connect(function(child)
		if child.Name == "GrabParts" and child:IsA("Model") then
			toggleButtonState(false)
			toggleDefaultExtendButtons(true)
			_G.HoldingObjectGrabPart = nil

			local v1017 = WhatIsHolding(child)
			local Part1 = child.GrabPart.WeldConstraint.Part1
			local attribute

			if Part1.Parent then
				if Part1.Parent:IsA("Model") then
					attribute = Part1.Parent:GetAttribute("IsAnchored")
				end
			end

			v118.Parent = RS.GrabEvents

			if thread then
				task.cancel(thread)
			end

			if v1017 == "Player" or v1017 == "Follow NPC" then
				child:GetAttribute("IsAnchored")

				if _G.TornadoAura and _G.TornadoMode == "Click" or attribute then
					v118.Parent = nil
					thread = task.delay(0.2, function()
						v118.Parent = RS.GrabEvents
					end)
				end
			end

			v117:FireServer()
		end
	end)
end

do
	local u1020 = false

	startHoldAction = function()
		task.spawn(zoomoutfunction)

		while u1020 do
			buttonClicked()
			wait(0.1)
		end
	end
	startHoldActionDE = function()
		task.spawn(zoominfunction)

		while u1020 do
			buttonClickedDE()
			wait(0.1)
		end
	end

	local v1021 = UserInputService

	imageButton.InputBegan:Connect(function(input, gameProcessed)
		if not gameProcessed then
			if v1021.TouchEnabled and input.UserInputType == Enum.UserInputType.Touch then
				u1020 = true
				startHoldAction()
			end
		end
	end)
	imageButton.InputEnded:Connect(function(input)
		if v1021.TouchEnabled and input.UserInputType == Enum.UserInputType.Touch then
			u1020 = false
			_G.ZoomingOut = false
		end
	end)
	imageButtonDe.InputBegan:Connect(function(input, gameProcessed)
		if not gameProcessed and v1021.TouchEnabled then
			if input.UserInputType == Enum.UserInputType.Touch then
				u1020 = true
				startHoldActionDE()
			end
		end
	end)
	imageButtonDe.InputEnded:Connect(function(input)
		if v1021.TouchEnabled and input.UserInputType == Enum.UserInputType.Touch then
			u1020 = false
			_G.ZoomingIn = false
		end
	end)
end

UserInputService.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseWheel then
		if pcDistance < 11 then
			pcDistance = 11
		end

		if input.Position.Z > 0 then
			pcDistance += IncreaseLineExtend
		elseif input.Position.Z < 0 then
			pcDistance -= IncreaseLineExtend
		end
	end
end)
getgenv().Settings = {
	Fov = 150,
	Hitbox = {
		"Head",
		"Torso",
		"Left Leg",
		"Right Leg"
	},
	FovCircle = false
}

local PS_ = PS
local RS_ = RS
local v1024 = LocalPlayer
local mouse = v1024:GetMouse()
local u1026
local u1027
local u1028
local u1029
local u1030

updatedAimCrossScreen = 0
CalculateDirection = function(p279, p280, p281)
	return (p280 - p279).Unit * p281
end

if getgc then
	task.spawn(function()
		task.wait()

		local v1031, v1032 = getgc(true)

		for _, v in next, v1031, v1032 do
			if type(v) == "table" then
				local value = rawget(v, "RaycastFromCam")

				if type(value) == "function" then
					local v1036 = value

					v.RaycastFromCam = function(...)
						if u1027 and u1027.Character and u1027.Character.HumanoidRootPart and v1024.Character.HumanoidRootPart and u1027.Character.Humanoid and u1027.Character.Humanoid.Health > 0 and not u1027.InPlot.Value and _G.SilentAim then
							local magnitude = (v1024.Character.HumanoidRootPart.Position - u1027.Character.HumanoidRootPart.Position).magnitude
							local v1038 = math.random(1, #getgenv().Settings.Hitbox)
							local v1039 = u1027.Character:FindFirstChild(getgenv().Settings.Hitbox[v1038])

							if magnitude <= u1026 and v1039 then
								local Position = v1039.Position

								return {
									Instance = v1039,
									Position = Position
								}, (v1039.CFrame:ToObjectSpace(CFrame.new(Position)))
							end
						end

						return v1036(...)
					end

					break
				end
			end
		end
	end)
end

do
	CheckIfCanSpin = function()
		local v1041

		for _, child in pairs(W.Slots:GetChildren()) do
			if child.SlotHandle.LightBall.Material == Enum.Material.Neon then
				v1041 = true
			else
				v1041 = false

				break
			end
		end

		return v1041
	end
end

do
	SavePos = function(p282)
		local HumanoidRootPart

		if LocalPlayer.Character then
			if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
			end
		end

		if HumanoidRootPart then
			if p282 == "Spin" then
				_G.SavedPositionInSpin = HumanoidRootPart.CFrame
			elseif p282 == "House" then
				_G.SavedPositionOutHouse = HumanoidRootPart.CFrame
			elseif p282 == "OSZ" then
				_G.SavedPositionOSZ = HumanoidRootPart.CFrame
			elseif p282 == "INSZ" then
				_G.SavedPositionINSZ = HumanoidRootPart.CFrame
			end
		end
	end
end

LoadPos = function(p283)
	local HumanoidRootPart

	if LocalPlayer.Character then
		if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
		end
	end

	if HumanoidRootPart then
		if p283 == "Spin" and _G.SavedPositionInSpin then
			HumanoidRootPart.CFrame = _G.SavedPositionInSpin
		elseif p283 == "House" and _G.SavedPositionOutHouse then
			HumanoidRootPart.CFrame = _G.SavedPositionOutHouse
		elseif p283 == "OSZ" and _G.SavedPositionOSZ then
			HumanoidRootPart.CFrame = _G.SavedPositionOSZ
		elseif p283 == "INSZ" and _G.SavedPositionINSZ then
			HumanoidRootPart.CFrame = _G.SavedPositionINSZ
		end
	end
end
farm_section = Farm_Tab:AddSection({
	Name = "Auto Get Coins"
})
farm_section1 = Farm_Tab:AddSection({
	Name = "Auto Time-Reset"
})
farm_section2 = Farm_Tab:AddSection({
	Name = "Auto Claim-Plot"
})
auto_section1 = Farm_Tab:AddSection({
	Name = "Auto Break Plot-Area"
})
auto_section2 = Farm_Tab:AddSection({
	Name = "Auto-Glitch (Safe-Zone)"
})
_G.HouseBreaked = false
BreakPlotAreaToy = {}
BreakPlotAreaToyCnns = {}
PlotsAreasToBreak = PlotsAreasToBreak or {}
NegativeHousesPos = {
	Plot5 = true
}

do
	BreakPlotArea = function(p284)
		if typeof(p284) ~= "string" then
			return
		end

		local v1046 = BreakPlotAreaToy[p284]
		local PlotArea = W.Plots[p284].PlotArea
		local cFrame = CFrame.new(8.8221263038030683e+32, 3.4028230607370965e+38 * (NegativeHousesPos[p284] and -1 or 1), 4.3714757637264991e+27)

		if v1046 then
			local v1049, v1050 = CKIsHolding(v1046)
			local v1051 = true

			if not v1046.Parent then
				v1051 = false
			elseif v1049 and v1049 ~= PlotArea then
				v1051 = false
			elseif v1049 and v1050 and v1049 == PlotArea and not (v1050 < 1000000) and v1046.Parent then
				if old_posTPfromsafe then
					TeleportPlayer(old_posTPfromsafe, 5)
					old_posTPfromsafe = nil
				end

				return "breaked!"
			end

			if not v1051 then
				BreakPlotAreaToy[p284] = nil
				DeleteToyRE:FireServer(v1046)
			end
		end

		if not BreakPlotAreaToy[p284] then
			local v1052, v1053 = PutShuriken(PlotArea, cFrame, true, "ToolPencil")

			for i = 0, 25 do
				v1052, v1053 = PutShuriken(PlotArea, cFrame, true, "ToolPencil")

				if not v1052 then
					task.wait(0.0025)

					continue
				end

				break
			end

			if v1052 then
				BreakPlotAreaToy[p284] = v1053
			end
		end
	end
end

auto_section1:AddToggle({
	Name = "Break Plot Area" .. premium_text,
	Default = false,
	Callback = function(p285)
		AutoBreakPlotAreaValue = p285

		if p285 then
			if GetKey() ~= "Xana" then
				AutoBreakPlotAreaValue = false

				local BPlotArea = result.Flags.BPlotArea

				-- notify disabled

				if BPlotArea then
					BPlotArea:Set(false)
				end

				return
			end

			while AutoBreakPlotAreaValue do
				for _, v in pairs(PlotsAreasToBreak) do
					if v then
						while true do
							task.wait(0.0025)

							if AutoBreakPlotAreaValue then
								if BreakPlotArea(v) == "breaked!" then
									break
								end
							else
								break
							end
						end
					end
				end

				task.wait(1)
			end
		else
			for _, v in pairs(BreakPlotAreaToy) do
				DeleteToyRE:FireServer(v)
			end

			table.clear(BreakPlotAreaToy)
			DisconnectAll(BreakPlotAreaToyCnns)
		end
	end,
	Flag = "BPlotArea",
	Save = false
})

do
	auto_section1:AddDropdown({
		Name = "Plot",
		Default = "Witch House",
		Options = {
			{
				FakeName = "Witch House",
				Name = "Plot3",
				Image = "rbxassetid://9909725942",
				Height = 38
			},
			{
				FakeName = "Lumber House",
				Name = "Plot2",
				Image = "rbxassetid://8989326312",
				Height = 38
			},
			{
				FakeName = "Common House",
				Name = "Plot1",
				Image = "rbxassetid://8989327148",
				Height = 38
			},
			{
				FakeName = "American House",
				Name = "Plot4",
				Image = "rbxassetid://9909733734",
				Height = 38
			},
			{
				FakeName = "Chinese House",
				Name = "Plot5",
				Image = "rbxassetid://9108988013",
				Height = 38
			}
		},
		MultipleSelection = true,
		Callback = function(p286)
			PlotsAreasToBreak = p286

			for k, v in pairs(BreakPlotAreaToy) do
				if not table.find(PlotsAreasToBreak, k) then
					DeleteToyRE:FireServer(v)
				end
			end
		end
	})
end

do
	local TweenService = game:GetService("TweenService")

	playerdiedanim = function(p287)
		local Character = p287 and p287.Character

		if not Character then
			return
		end

		local color3 = Color3.fromRGB(255, 45, 45)
		local color32 = Color3.fromRGB(255, 70, 70)
		local color33 = Color3.fromRGB(225, 225, 225)

		local function v1067(p288, p289, p290, p291, p292)
			TweenService:Create(p288, TweenInfo.new(p289, p291 or Enum.EasingStyle.Quad, p292 or Enum.EasingDirection.Out), p290):Play()
		end

		local t45 = {
			[Enum.BodyPart.Head] = "Head",
			[Enum.BodyPart.Torso] = "Torso",
			[Enum.BodyPart.LeftArm] = "Left Arm",
			[Enum.BodyPart.RightArm] = "Right Arm",
			[Enum.BodyPart.LeftLeg] = "Left Leg",
			[Enum.BodyPart.RightLeg] = "Right Leg"
		}
		local t46 = {}

		for _, v in Character:GetChildren() do
			if v:IsA("CharacterMesh") and v.MeshId ~= 0 then
				local v1072 = t45[v.BodyPart]

				if v1072 then
					t46[v1072] = v
				end
			end
		end

		local Model = Instance.new("Model")

		Model.Name = p287.Name .. "_DeathGhost"

		local t47 = {}
		local v1075

		for _, v in {
			"Head",
			"Torso",
			"Left Arm",
			"Right Arm",
			"Left Leg",
			"Right Leg"
		}, nil, nil do
			local v1078 = Character:FindFirstChild(v)

			if v1078 and v1078:IsA("BasePart") then
				local Part_ = Instance.new("Part")

				Part_.Name = v
				Part_.Size = v1078.Size
				Part_.CFrame = v1078.CFrame
				Part_.Anchored = true
				Part_.CanCollide = false
				Part_.CanTouch = false
				Part_.CanQuery = false
				Part_.CastShadow = false
				Part_.Material = Enum.Material.Neon
				Part_.Color = color3
				Part_.TopSurface = Enum.SurfaceType.Smooth
				Part_.BottomSurface = Enum.SurfaceType.Smooth
				Part_.Transparency = 1

				local SpecialMesh = v1078:FindFirstChildOfClass("SpecialMesh")
				local v1081 = t46[v]

				if SpecialMesh then
					local SpecialMesh2 = Instance.new("SpecialMesh")

					SpecialMesh2.MeshType = SpecialMesh.MeshType
					SpecialMesh2.MeshId = SpecialMesh.MeshId
					SpecialMesh2.Scale = SpecialMesh.Scale
					SpecialMesh2.Offset = SpecialMesh.Offset
					SpecialMesh2.Parent = Part_
				elseif v1081 then
					local SpecialMesh2 = Instance.new("SpecialMesh")

					SpecialMesh2.MeshType = Enum.MeshType.FileMesh
					SpecialMesh2.MeshId = "rbxassetid://" .. v1081.MeshId
					SpecialMesh2.Parent = Part_
				elseif v == "Head" then
					local SpecialMesh2 = Instance.new("SpecialMesh")

					SpecialMesh2.MeshType = Enum.MeshType.Head
					SpecialMesh2.Scale = Vector3.new(1.25, 1.25, 1.25)
					SpecialMesh2.Parent = Part_
				end

				if v == "Head" then
					v1075 = Part_
				end

				Part_.Parent = Model

				if v1078.Transparency < 1 then
					table.insert(t47, Part_)
				else
					Part_:SetAttribute("Hidden", true)
				end
			end
		end

		if not (v1075 or #t47 ~= 0) then
			Model:Destroy()

			return
		end

		Model.Parent = workspace

		local Highlight = Instance.new("Highlight")

		Highlight.FillTransparency = 1
		Highlight.OutlineColor = color3
		Highlight.OutlineTransparency = 1
		Highlight.DepthMode = Enum.HighlightDepthMode.Occluded
		Highlight.Parent = Model

		local t48 = {}

		if v1075 then
			local BillboardGui = Instance.new("BillboardGui")

			BillboardGui.Adornee = v1075
			BillboardGui.Size = UDim2.fromScale(8, 2)
			BillboardGui.StudsOffsetWorldSpace = Vector3.new(0, 2.8, 0)
			BillboardGui.AlwaysOnTop = true
			BillboardGui.LightInfluence = 0
			BillboardGui.MaxDistance = 250
			BillboardGui.Parent = v1075

			local Frame = Instance.new("Frame")

			Frame.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame.Position = UDim2.fromScale(0.5, 0.5)
			Frame.Size = UDim2.fromScale(1, 1)
			Frame.BackgroundTransparency = 1
			Frame.Parent = BillboardGui

			local UIScale = Instance.new("UIScale")

			UIScale.Scale = 0.6
			UIScale.Parent = Frame
			v1067(UIScale, 0.4, {
				Scale = 1
			}, Enum.EasingStyle.Back)

			local function v1090(p293, p294, p295, p296, p297, p298)
				local TextLabel = Instance.new("TextLabel")

				TextLabel.BackgroundTransparency = 1
				TextLabel.Position = UDim2.fromScale(0, p294)
				TextLabel.Size = UDim2.fromScale(1, p295)
				TextLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", p297)
				TextLabel.Text = p293
				TextLabel.TextColor3 = p296
				TextLabel.TextScaled = true
				TextLabel.TextTransparency = 1
				TextLabel.Parent = Frame

				local UIStroke = Instance.new("UIStroke")

				UIStroke.Color = Color3.new(0, 0, 0)
				UIStroke.Thickness = p298
				UIStroke.Transparency = 1
				UIStroke.Parent = TextLabel
				table.insert(t48, {
					TextLabel,
					"TextTransparency",
					0
				})
				table.insert(t48, {
					UIStroke,
					"Transparency",
					0.45
				})
			end

			v1090(p287.DisplayName .. " DIED", 0, 0.55, color32, Enum.FontWeight.Heavy, 1.5)

			local Frame2 = Instance.new("Frame")

			Frame2.AnchorPoint = Vector2.new(0.5, 0)
			Frame2.Position = UDim2.fromScale(0.5, 0.6)
			Frame2.Size = UDim2.new(0.55, 0, 0, 2)
			Frame2.BorderSizePixel = 0
			Frame2.BackgroundColor3 = color32
			Frame2.BackgroundTransparency = 1
			Frame2.Parent = Frame

			local UIGradient = Instance.new("UIGradient")

			UIGradient.Transparency = NumberSequence.new({
				NumberSequenceKeypoint.new(0, 1),
				NumberSequenceKeypoint.new(0.5, 0),
				NumberSequenceKeypoint.new(1, 1)
			})
			UIGradient.Parent = Frame2
			table.insert(t48, {
				Frame2,
				"BackgroundTransparency",
				0.15
			})
			v1090("anti lag Delected character", 0.67, 0.25, color33, Enum.FontWeight.Medium, 1)
		end

		for _, v in t47, nil, nil do
			v1067(v, 0.3, {
				Transparency = 0.25
			})
		end

		v1067(Highlight, 0.3, {
			OutlineTransparency = 0.4
		})

		for _, v in t48, nil, nil do
			v1067(v[1], 0.3, {
				[v[2]] = v[3]
			})
		end

		task.delay(1.1, function()
			local Sine = Enum.EasingStyle.Sine
			local In = Enum.EasingDirection.In

			for _, v in Model:GetChildren() do
				if v:IsA("BasePart") and not v:GetAttribute("Hidden") then
					v1067(v, 2.5, {
						Transparency = 1
					}, Sine, In)
				end
			end

			v1067(Highlight, 2, {
				OutlineTransparency = 1
			}, Sine, In)

			for _ in t48, nil, nil do
			end

			task.delay(2.6, function()
				Model:Destroy()
			end)
		end)
	end
end

do
	W.ChildAdded:Connect(function(child)
		if PS:FindFirstChild(child.Name) then
			if PS:FindFirstChild(child.Name) ~= PS.LocalPlayer then
				local ChildName = PS:FindFirstChild(child.Name)
				local Humanoid = child:WaitForChild("Humanoid")
				local connection

				connection = Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
					if Humanoid.Health == 0 then
						playerdiedanim(ChildName)
						child:Destroy()
						connection:Disconnect()
					end
				end)
			end
		end
	end)
end

task.spawn(function()
	for _, v in PS:GetPlayers() do
		if v ~= LocalPlayer then
			if v.Character then
				local Humanoid = v.Character:FindFirstChild("Humanoid")

				if Humanoid then
					local connection

					connection = Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
						if Humanoid.Health == 0 then
							playerdiedanim(v)
							Humanoid.Parent:Destroy()
							connection:Disconnect()
						end
					end)
				end
			end
		end
	end
end)
auto_section2:AddToggle({
	Name = "Break House Barrier",
	Default = false,
	Callback = function(p299)
		_G.AutoBreakHouseBarrier = p299
		HouseBarrierGeneration = (HouseBarrierGeneration or 0) + 1

		local HouseBarrierGeneration_ = HouseBarrierGeneration

		local function v1112()
			return _G.AutoBreakHouseBarrier and HouseBarrierGeneration == HouseBarrierGeneration_
		end

		if p299 then
			local vector3 = Vector3.new(242, -7, 411)

			if not HouseBarrierSession then
				HouseBarrierSession = {
					oldPos = GetPlayerCFrame(),
					antiKickWasOn = _G.AntiKick
				}

				if _G.AntiKick and antikicktoggle then
					antikicktoggle:Set(false)
				end
			end

			local function v1114()
				return LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
			end
			local function v1115()
				return workspace:FindFirstChild(LocalPlayer.Name .. "SpawnedInToys")
			end
			local function v1116(p300, p301, p302)
				local now = os.clock()
				local now2

				while v1112() and os.clock() - now < p302 do
					local v1119 = p300:FindFirstChild(p301[1])

					if v1119 then
						return v1119
					end

					if not now2 or os.clock() - now2 > 1.5 then
						local SpawnToyCooldown_ = SpawnToyCooldown

						SpawnToy(p301)

						if SpawnToyCooldown ~= SpawnToyCooldown_ then
							now2 = os.clock()
						end
					end

					task.wait()
				end
			end
			local function v1121(p303)
				local FoodHamburger = p303:FindFirstChild("FoodHamburger")

				if FoodHamburger then
					return FoodHamburger
				end

				if v113.Value then
					TeleportPlayer(CFrame.new(vector3))

					return nil
				end

				local v1123 = v1114()
				local v1124 = v1116(p303, {
					"FoodHamburger",
					(v1123:FindFirstChild("CamPart") or v1123:WaitForChild("HumanoidRootPart", 5)).CFrame,
					(Vector3.new(0, 80, 0))
				}, 5)

				if v1124 then
					task.wait(0.5)
				end

				return v1124
			end

			local cFrame = CFrame.new(240, -7, 448)

			local function v1126(p304)
				local HoldPart = p304:WaitForChild("HoldPart", 5)
				local HoldItemRemoteFunction = HoldPart and HoldPart:WaitForChild("HoldItemRemoteFunction", 5)
				local DropItemRemoteFunction = HoldPart and HoldPart:WaitForChild("DropItemRemoteFunction", 5)

				if not HoldItemRemoteFunction or not DropItemRemoteFunction then
					DeleteToyRE:FireServer(p304)

					return false
				end

				local v1130 = v1114()

				task.spawn(function()
					HoldItemRemoteFunction:InvokeServer(p304, v1130)
				end)
				task.spawn(function()
					DropItemRemoteFunction:InvokeServer(p304, cFrame, Vector3.new(0, 164.585, 0))
				end)
				DeleteToyRE:FireServer(p304)

				return true
			end
			local function v1131(p305)
				for _, child in pairs(p305:GetChildren()) do
					if child.Name == "Campfire" then
						DeleteToyRE:FireServer(child)
					end
				end

				local now = os.clock()

				while p305:FindFirstChild("Campfire") and os.clock() - now < 3 do
					task.wait()
				end
			end
			local function v1135(p306)
				if v113.Value then
					TeleportPlayer(CFrame.new(vector3))

					local now = os.clock()

					while true do
						task.wait()

						if v113.Value then
							if os.clock() - now > 3 then
								break
							end
						else
							break
						end
					end
				end

				local v1137 = v1116(p306, {
					"Campfire",
					CFrame.new(247, -7, 452),
					(Vector3.new(0, 80, 0))
				}, 5)

				if not v1137 then
					return nil
				end

				task.wait(1)

				if v1137.Parent then
					DeleteToyRE:FireServer(v1137)

					return true
				end

				return false
			end

			task.spawn(function()
				local v1138

				while v1112() do
					local v1139 = v1115()
					local v1140 = v1139 and v1121(v1139)

					if v1140 and v1112() then
						v1131(v1139)

						if v1112() and v1126(v1140) then
							print("[House Barrier] método enviado, testando a barreira...")
							task.wait(1)

							while true do
								v1138 = v1135(v1139)

								if v1138 == nil then
									if not v1112() then
										break
									end
								else
									break
								end
							end

							if v1138 and v1112() then
								_G.BrokenBarrier = true
								_G.AutoBreakHouseBarrier = false

								local BHouseBarrier = result.Flags.BHouseBarrier

								if BHouseBarrier then
									BHouseBarrier:Set(false)
								end

								result:MakeNotification({
									Name = "Auto-Glitch (Safe-Zone)",
									Content = "Sucess! You can spawn toys inside safe now!",
									Image = "rbxassetid://7733916988",
									Time = 5
								})
							elseif v1138 == false then
								print("[House Barrier] a campfire foi deletada, tentando de novo")
							end
						end
					end

					task.wait()
				end

				local HouseBarrierSession_ = HouseBarrierSession

				if HouseBarrierSession_ and not _G.AutoBreakHouseBarrier then
					HouseBarrierSession = nil
					TeleportPlayer(HouseBarrierSession_.oldPos)

					if HouseBarrierSession_.antiKickWasOn and antikicktoggle then
						task.spawn(function()
							antikicktoggle:Set(true)
						end)
					end
				end
			end)
		end
	end,
	Flag = "BHouseBarrier",
	Save = false
})
auto_section2:AddParagraph("Note!", "Make sure you are not a member/owner inside the Witch Plot or this method will fail!")
auto_section2:AddParagraph("What is it for?", "It's very useful for Telekinesis Aura and many others things. Use Your Imagination!")

do
	local ok, result2 = pcall(function()
		return W.Slots.Slots.Screen.SlotGui.TimeLeftFrame.TimeText
	end)

	if ok and result2 then
		timelefttextlabelingame = result2
	else
		timelefttextlabelingame = {
			Text = "0:00",
			Changed = {
				Connect = function()
				end
			}
		}
	end
end

do
	local SlotTime

	pcall(function()
		SlotTime = RS.SlotEvents.SlotTime
	end)

	if SlotTime then
		SlotTime.OnClientEvent:Connect(function(p307)
			TimeSlotSpin = p307

			if TimeSlotSpin <= 0 and _G.AutoFarmCoins and not TryingToSlotSpin then
				TryingToSlotSpin = true
				SavePos("Spin")

				local Handle

				local function v1147()
					while _G.AutoFarmCoins and TimeSlotSpin <= 0 and TryingToSlotSpin do
						if Handle then
							TeleportPlayer(Handle.CFrame + Vector3.new(0, 5, 0), 5, true, 1)
							task.wait(0.2)
							SNOWship(Handle)
						end

						task.wait()
					end

					TryingToSlotSpin = false
				end

				local thread = task.spawn(v1147)

				for _, child in pairs(W.Slots:GetChildren()) do
					Handle = child.SlotHandle.Handle
					Handle.CanCollide = false

					for i = 1, 5 do
						task.wait(0.2)
					end

					Handle.CanCollide = true

					if TimeSlotSpin > 0 or not _G.AutoFarmCoins then
						break
					end
				end

				task.cancel(thread)
				newtask = nil
				LoadPos("Spin")
				task.wait(5)
				TryingToSlotSpin = false
			end
		end)
	else
		warn("RS.SlotEvents.SlotTime não encontrado! Auto-Spin não vai funcionar.")
	end
end

farm_section:AddToggle({
	Name = "Auto-Spin",
	Default = false,
	Callback = function(p308)
		_G.AutoFarmCoins = p308
	end,
	Save = true,
	Flag = "autofarmcoins_toggle"
})
TimeRemainingLabel = farm_section:AddLabel("Time Remaining: 0:00")
CoinsWonLabel = farm_section:AddLabel("Coins Won: 0")
timelefttextlabelingame.Changed:Connect(function(p309)
	if p309 == "Text" then
		TimeRemainingLabel:Set("Time Remaining: " .. timelefttextlabelingame.Text)
	end
end)

do
	task.spawn(function()
		for _, descendant in pairs(W.Slots:GetDescendants()) do
			if descendant.Name == "CoinAmount" and tostring(descendant.Parent) == "CoinsFrame" then
				descendant.Changed:Connect(function(p310)
					if p310 == "Text" and descendant.Parent.Parent.SpinningFrame.PlayerName.Text == LocalPlayer.DisplayName and CoinsWonLabel then
						CoinsWonLabel:Set(descendant.Text)
					end
				end)
			end
		end

		W.Plots.DescendantAdded:Connect(function(descendant)
			if descendant.Name == "Value" and tostring(descendant.Parent) == "ThisPlotsOwners" and descendant.Value == LocalPlayer.Name then
				_G.PlotPlayerIsOwner = descendant.Parent.Parent.Parent

				local v1154 = tostring(_G.PlotPlayerIsOwner)

				u112 = W.PlotItems[v1154]

				local connection = v113.Changed:Connect(function(p311)
					if p311 then
						if descendant.Parent then
							u112 = W.PlotItems[v1154]
						end
					else
						u112 = W[LocalPlayer.Name .. "SpawnedInToys"]
					end
				end)
				local connection2 = u112.ChildAdded:Connect(RemoveToyFromQueueList)

				descendant:GetPropertyChangedSignal("Parent"):Connect(function()
					if not descendant.Parent then
						connection:Disconnect()
						connection2:Disconnect()
						u112 = W[LocalPlayer.Name .. "SpawnedInToys"]
						_G.PlotPlayerIsOwner = nil
					end
				end)
				RTime = descendant:WaitForChild("TimeRemainingNum", 1)

				if RTime then
					RTime.Changed:Connect(function(p312)
						TimeInHouseLabel:Set("Time: " .. p312)
					end)
				end
			end
		end)
	end)
end

SearchForPlayerInHouse = function()
	local v1157, v1158, v1159 = pairs(W.Plots:GetDescendants())
	local v1160 = geniter(v1157, v1158, v1159)

	while true do
		local v1161 = table.pack(v1160())

		if not v1161[1] then
			break
		end

		local v1162 = v1161[3]

		if v1162.Name == "TimeRemainingNum" and v1162.Parent.Value == LocalPlayer.Name then
			local exitTo

			repeat
				_G.RemainingTimeInHouse = v1162
				v1162.Changed:Connect(function(p313)
					TimeInHouseLabel:Set("Time: " .. p313)
				end)
				exitTo = nil

				while true do
					local v1164 = table.pack(v1160())

					if not v1164[1] then
						break
					end

					v1162 = v1164[3]

					if v1162.Name == "TimeRemainingNum" and v1162.Parent.Value == LocalPlayer.Name then
						exitTo = 1

						break
					end
				end
			until exitTo ~= 1

			return
		end
	end
end
task.spawn(SearchForPlayerInHouse)

do
	local v1165

	v1165 = farm_section1:AddToggle({
		Name = "Preserve Time",
		Default = false,
		Callback = function(p314)
			_G.AutoSaveHouseTime = p314

			if p314 then
				while _G.AutoSaveHouseTime do
					if LocalPlayer.InfiniteHouseTime.Value then
						v1165:Set(false)
						result:MakeNotification({
							Name = "Stop being greedy!",
							Content = "You already own infinity house gamepass!",
							Image = "rbxassetid://4483345998",
							Time = 5
						})

						break
					end

					local RemainingTimeInHouse = _G.RemainingTimeInHouse

					if typeof(RemainingTimeInHouse) == "Instance" and RemainingTimeInHouse:IsDescendantOf(W) and RemainingTimeInHouse:IsA("IntValue") then
						local PlotArea

						for i = 1, 5 do
							if RemainingTimeInHouse:IsDescendantOf(workspace.Plots["Plot" .. i]) then
								PlotArea = workspace.Plots["Plot" .. i]:FindFirstChild("PlotArea")
							end
						end

						if RemainingTimeInHouse.Value <= 15 then
							SavePos("House")

							while true do
								TeleportPlayer(CFrame.new(PlotArea.Position), 4, false, 2)
								task.wait()

								if RemainingTimeInHouse.Parent == nil then
									break
								elseif not _G.AutoSaveHouseTime or RemainingTimeInHouse.Value >= 90 then
									break
								end
							end

							LoadPos("House")
						end
					end

					task.wait(2)
				end
			end
		end,
		Save = true,
		Flag = "autosavehousetimeremaining_toggle"
	})
end

TimeInHouseLabel = farm_section1:AddLabel("Plot Time: 0")

do
	local IntValue = Instance.new("IntValue")

	PlotWorkspace = W.Plots:GetDescendants()
	GetPlotModel = function()
		local Plots = W.Plots

		if _G.PlotName == "Witch House" then
			Plots = Plots:FindFirstChild("Plot3")
		elseif _G.PlotName == "Lumber House" then
			Plots = Plots:FindFirstChild("Plot2")
		elseif _G.PlotName == "Common House" then
			Plots = Plots:FindFirstChild("Plot1")
		elseif _G.PlotName == "American House" then
			Plots = Plots:FindFirstChild("Plot4")
		elseif _G.PlotName == "Chinese House" then
			Plots = Plots:FindFirstChild("Plot5")
		end

		return Plots
	end
	RemovePlotOwner = function()
		if _G.PlotPlayerIsOwner then
			local v1171 = W.Plots[tostring(_G.PlotPlayerIsOwner)]

			if v1171 then
				for _, child in pairs(v1171.PlotSign:GetChildren()) do
					if not _G.PlotPlayerIsOwner then
						break
					end

					if child.Name == "Sign" then
						local MinusGrabPart = child.Minus.MinusGrabPart

						TeleportPlayer(MinusGrabPart.CFrame * CFrame.new(-5, 0, -5), 3)

						for i = 0, 15 do
							SNOWship(MinusGrabPart)
							wait()
						end
					end
				end
			end
		end
	end
	ClaimEmptyPlot = function()
		if not _G.PlotPlayerIsOwner then
			local v1176

			for _, child in pairs(workspace.Plots:GetChildren()) do
				for _, child2 in pairs(child:GetChildren()) do
					if child2.Name == "PlotSign" then
						if not child2.ThisPlotsOwners:FindFirstChild("Value") then
							v1176 = child
						end
					end
				end
			end

			if v1176 then
				local PlotSign = v1176.PlotSign

				local function v1182()
					local v1183 = false

					for _, child in pairs(PlotSign.ThisPlotsOwners:GetChildren()) do
						if child.Value ~= LocalPlayer.Name or child.Value == LocalPlayer.Name then
							v1183 = true
						end
					end

					return v1183
				end

				for _, child in pairs(PlotSign:GetChildren()) do
					if v1182() or _G.PlotPlayerIsOwner then
						break
					end

					if child.Name == "Sign" then
						local PlusGrabPart = child.Plus.PlusGrabPart

						TeleportPlayer(PlusGrabPart.CFrame * CFrame.new(-5, 0, -5), 3)

						for i = 0, 15 do
							SNOWship(PlusGrabPart)
							wait()
						end
					end
				end
			end
		end
	end
	ClaimPlot = function()
		if not IsThereOwnerOnPlot() then
			local v1190 = GetPlotModel(_G.PlotName)

			if v1190 then
				local PlotSign = v1190.PlotSign

				local function v1192()
					local v1193 = false

					for _, child in pairs(PlotSign.ThisPlotsOwners:GetChildren()) do
						if child.Value == LocalPlayer.Name then
							v1193 = true
						end
					end

					return v1193
				end

				for _, child in pairs(PlotSign:GetChildren()) do
					if v1192() then
						break
					end

					if child.Name == "Sign" then
						local PlusGrabPart = child.Plus.PlusGrabPart

						TeleportPlayer(PlusGrabPart.CFrame * CFrame.new(-5, 0, -5), 3)

						for i = 0, 15 do
							SNOWship(PlusGrabPart)
							wait()
						end
					end
				end
			end
		end
	end
	UpdatePlotOwner = function()
		for _, v in pairs(PlotWorkspace) do
			if v.Name == "PlayerRole" then
				local PlayerDisplayName = v.Parent.PlayerDisplayName
				local v1203 = v
				local Parent = v.Parent
				local u1205
				local u1206 = false

				local function v1207()
					u1206 = false
					u1205 = GetPlotModel(_G.PlotName)

					if u1205 and v1203:IsDescendantOf(u1205) and v1203.Text == "Owner" and Parent.Visible then
						wait()

						for _, player in pairs(PS:GetPlayers()) do
							if player.DisplayName == PlayerDisplayName.Text then
								u1206 = true
							end
						end

						if PlotOwner and u1206 then
							PlotOwner:Set("Plot Owner: " .. PlayerDisplayName.Text)
						else
							PlotOwner:Set("Plot Available!")
						end
					end
				end

				v1203.Changed:Connect(function(p315)
					if p315 == "Text" then
						v1207()
					end
				end)
				IntValue.Changed:Connect(function()
					v1207()
				end)
				v1207()
			end
		end
	end
	IsThereOwnerOnPlot = function()
		local v1210 = GetPlotModel()

		if v1210 then
			if v1210.PlotSign.ThisPlotsOwners:FindFirstChild("Value") then
				return true
			end
		end
	end
	UpdatePeopleInPlot = function()
		for _, v in pairs(PlotWorkspace) do
			if v.Name == "ThisPlotsOwners" then
				local function v1213()
					local v1214 = v
					local v1215 = GetPlotModel(_G.PlotName)
					local children = v1214:GetChildren()

					if v1215 and v:IsDescendantOf(v1215) then
						local playersInPlot = table.getn(children)

						if PlayersInPlot then
							PlayersInPlot:Set("Players in Plot: " .. playersInPlot)
						end

						if playersInPlot == 0 and PlotOwner then
							PlotOwner:Set("Plot Available!")
						end
					end
				end

				IntValue.Changed:Connect(function()
					v1213()
				end)
				v.ChildAdded:Connect(v1213)
				v.ChildRemoved:Connect(v1213)
				v1213()
			elseif v.Name == "Value" and tostring(v.Parent) == "ThisPlotsOwners" and v.Value == LocalPlayer.Name then
				_G.PlotPlayerIsOwner = v.Parent.Parent.Parent

				local v1218 = tostring(_G.PlotPlayerIsOwner)

				u112 = W.PlotItems[v1218]

				local connection = v113.Changed:Connect(function(p316)
					if p316 then
						if v.Parent then
							u112 = W.PlotItems[v1218]
						end
					else
						u112 = W[LocalPlayer.Name .. "SpawnedInToys"]
					end
				end)
				local connection2 = u112.ChildAdded:Connect(RemoveToyFromQueueList)

				v:GetPropertyChangedSignal("Parent"):Connect(function()
					if not v.Parent then
						connection:Disconnect()
						connection2:Disconnect()
						u112 = W[LocalPlayer.Name .. "SpawnedInToys"]
						_G.PlotPlayerIsOwner = nil
					end
				end)
			end
		end
	end
	farm_section2:AddDropdown({
		Name = "Plot",
		Default = "Witch House",
		Options = {
			{
				Name = "Witch House",
				Image = "rbxassetid://9909725942",
				Height = 38
			},
			{
				Name = "Lumber House",
				Image = "rbxassetid://8989326312",
				Height = 38
			},
			{
				Name = "Common House",
				Image = "rbxassetid://8989327148",
				Height = 38
			},
			{
				Name = "American House",
				Image = "rbxassetid://9909733734",
				Height = 38
			},
			{
				Name = "Chinese House",
				Image = "rbxassetid://9108988013",
				Height = 38
			}
		},
		Callback = function(p317)
			_G.PlotName = p317
			IntValue.Value += 1
		end
	})
end

do
	task.spawn(function()
		UpdatePlotOwner()
		task.wait()
		UpdatePeopleInPlot()
	end)
end

PlotOwner = farm_section2:AddLabel("Plot Owner:")
PlayersInPlot = farm_section2:AddLabel("Players in Plot: 0")
farm_section2:AddButton({
	Name = "Claim Plot!",
	Callback = function()
		ClaimPlot()
	end
})
ExplodeSb = function(p318)
	BombEvents.BombExplode:FireServer(unpack({
		{
			Radius = 17.5,
			TimeLength = 0.1,
			Hitbox = p318:FindFirstChild("SoundPart"),
			ExplodesByFire = true,
			MaxForcePerStudSquared = -100,
			DestroysModel = true,
			Model = p318,
			ExplodesByPointy = false,
			ImpactSpeed = 100,
			PositionPart = LocalPlayer.Character.HumanoidRootPart
		},
		LocalPlayer.Character.HumanoidRootPart.Position
	}))
end
getgenv().MaxSize = 15

local v1221 = u112
local t49 = {}
local n17 = 0
local v1224

snowballEffectConnection = nil
snowballMaxAmmount = 20

if v114.Value == 200 then
	snowballMaxAmmount = 40
end

checkSize = function(p319)
	while _G.SnowbalEffectSpam do
		if p319 and p319:IsDescendantOf(W) and p319:FindFirstChild("SoundPart") then
			local SoundPart = p319:FindFirstChild("SoundPart")
			local Size = SoundPart.Size

			if MaxSize <= Size.X and MaxSize <= Size.Y and MaxSize <= Size.Z and not t49[SoundPart] then
				t49[SoundPart] = true

				break
			else
				task.wait()
			end
		else
			task.wait()
		end
	end
end

do
	checkSnowBall = function(p320)
		if p320 and p320:FindFirstChild("SoundPart") then
			local SoundPart = p320.SoundPart
			local raycastParams = RaycastParams.new()

			raycastParams.FilterDescendantsInstances = { p320 }
			raycastParams.FilterType = Enum.RaycastFilterType.Exclude

			local hit_ = W:Raycast(SoundPart.Position, Vector3.new(0, -100, 0), raycastParams)

			if hit_ and hit_.Material == Enum.Material.Sand then
				return true
			end
		end
	end
end

lastpossb = nil
holdOwnership = function()
	while _G.SnowbalEffectSpam do
		for _, child in pairs(v1221:GetChildren()) do
			if not _G.SnowbalEffectSpam then
				break
			end

			if child and child.Name == "BallSnowball" and child:FindFirstChild("SoundPart") then
				local SoundPart = child:FindFirstChild("SoundPart")

				if not CheckNetworkOwnerShipOnPart(SoundPart) then
					if not lastpossb then
						lastpossb = GetPlayerCFrame()
					end

					for i = 1, 10 do
						if SNOWshipOnce(SoundPart) then
							SoundPart.CanTouch = false
							SoundPart.CanCollide = false

							break
						end

						TeleportPlayer(CFrame.new(SoundPart.Position + Vector3.new(0, -10, 0)))
						task.wait(0.1)
					end

					TeleportPlayer(lastpossb)
					lastpossb = nil
				end
			end
		end

		task.wait()
	end
end
CountGrownSnowsballs = function()
	local grownSnowballs = 0

	for k in pairs(t49) do
		if k:IsDescendantOf(W) then
			grownSnowballs += 1
		else
			t49[k] = nil
		end
	end

	v1224:Set("Grown Snowballs: " .. grownSnowballs)

	return grownSnowballs
end

do
	modify = function(p321)
		local cFrame = CFrame.new(-410, 228.394, 510, -0.246182978, 3.22764193e-09, -0.96922338, 1.2914926e-08, 1, 4.97377278e-11, 0.96922338, -1.2505204e-08, -0.246182978)

		if _G.SnowbalEffectSpam and p321 then
			local exitTo
			local FarmSnowball

			while true do
				if not p321:FindFirstChild("SoundPart") then
					wait()

					if not _G.SnowbalEffectSpam then
						break
					end
				end

				local SoundPart = p321.SoundPart

				FarmSnowball = SoundPart:FindFirstChild("FarmSnowball")

				if not CheckNetworkOwnerShipOnPart(SoundPart) then
					wait()

					if not _G.SnowbalEffectSpam then
						break
					end
				end

				if FarmSnowball then
					if t49[SoundPart] then
						exitTo = 1

						break
					end

					FarmSnowball.Position = cFrame.Position + Vector3.new(25, 0, 0) + Vector3.new(0, SoundPart.Size.X / 2 - 0.65, 0)
					wait(0.5)
					FarmSnowball.Position = cFrame.Position + Vector3.new(-25, 0, 0) + Vector3.new(0, SoundPart.Size.X / 2 - 0.65, 0)
					wait(0.5)
					FarmSnowball.Position = cFrame.Position + Vector3.new(0, SoundPart.Size.X / 2 - 0.65, 0)
					wait()

					if _G.SnowbalEffectSpam then
						continue
					end
				else
					local BodyPosition = Instance.new("BodyPosition", SoundPart)

					BodyPosition.MaxForce = Vector3.new(12500, 12500, 12500)
					BodyPosition.Name = "FarmSnowball"
					BodyPosition.Position = SoundPart.Position
					wait()

					if not _G.SnowbalEffectSpam then
						break
					end
				end

				break
			end

			if exitTo == 1 then
				local exitTo2

				repeat
					FarmSnowball.Position = Vector3.new(math.random(-10000, 10000), 10000, math.random(-10000, 10000))
					exitTo2 = nil

					while true do
						wait()

						if not _G.SnowbalEffectSpam then
							break
						end

						if p321:FindFirstChild("SoundPart") then
							local SoundPart = p321.SoundPart

							FarmSnowball = SoundPart:FindFirstChild("FarmSnowball")

							if CheckNetworkOwnerShipOnPart(SoundPart) then
								if FarmSnowball then
									if t49[SoundPart] then
										exitTo2 = 1

										break
									end

									FarmSnowball.Position = cFrame.Position + Vector3.new(25, 0, 0) + Vector3.new(0, SoundPart.Size.X / 2 - 0.65, 0)
									wait(0.5)
									FarmSnowball.Position = cFrame.Position + Vector3.new(-25, 0, 0) + Vector3.new(0, SoundPart.Size.X / 2 - 0.65, 0)
									wait(0.5)
									FarmSnowball.Position = cFrame.Position + Vector3.new(0, SoundPart.Size.X / 2 - 0.65, 0)
								else
									local BodyPosition = Instance.new("BodyPosition", SoundPart)

									BodyPosition.MaxForce = Vector3.new(12500, 12500, 12500)
									BodyPosition.Name = "FarmSnowball"
									BodyPosition.Position = SoundPart.Position
								end
							end
						end
					end
				until exitTo2 ~= 1
			end
		end
	end
end

do
	newSnowball = function(p322)
		if p322.Name == "BallSnowball" and _G.SnowbalEffectSpam then
			task.spawn(function()
				checkSize(p322)
			end)
			task.spawn(function()
				modify(p322)
			end)
		end
	end
end

do
	task.spawn(function()
		while task.wait() do
			CountGrownSnowsballs()
		end
	end)
end

snowball_section = Explosion_Tab:AddSection({
	Name = "Snowball"
})
rtrajectory_section = Explosion_Tab:AddSection({
	Name = "Rocket Trajectory"
})
_G.MaxBombs = 1
_G.DynamicSpeedEnabled = false
_G.ManualMissileSpeed = 100

do
	rtrajectory_section:AddPlayersDropdown({
		Name = "Target",
		Default = "",
		MultipleSelection = false,
		SearchBar = true,
		Callback = function(p323)
			_G.TargetBFollow = p323
		end
	})
end

do
	rtrajectory_section:AddToggle({
		Name = "Let's go Crazy!",
		Default = false,
		Callback = function(p324)
			_G.MissilT = p324

			if p324 then
				task.spawn(function()
					local n18 = 0
					local t50 = {}
					local t51 = {}
					local BombExplode = BombEvents and BombEvents:FindFirstChild("BombExplode")

					while _G.MissilT do
						task.wait(0.015)

						local UniversalPlayerRoot = _G.UniversalPlayerRoot
						local _GTargetBFollow = PS:FindFirstChild(_G.TargetBFollow)
						local HumanoidRootPart = _GTargetBFollow and _GTargetBFollow.Character and _GTargetBFollow.Character:FindFirstChild("HumanoidRootPart")

						table.clear(t50)

						if u112 then
							for _, child in ipairs(u112:GetChildren()) do
								if child.Name == "BombMissile" then
									table.insert(t50, child)

									if not t51[child] then
										t51[child] = {}
									end
								end
							end
						end

						for k in pairs(t51) do
							if not k or not k.Parent then
								t51[k] = nil
							end
						end

						if _G.MaxBombs > #t50 and UniversalPlayerRoot and tick() - n18 > 0.3 then
							n18 = tick()

							if not CheckToyLimit(10) then
								SpawnToy({
									"BombMissile",
									UniversalPlayerRoot.CFrame * CFrame.new(math.random(-15, 15), math.random(0, 10), 20),
									(Vector3.new(0, -145.14599609375, 0))
								}, true)
							end
						end

						for _, v in ipairs(t50) do
							local v1256 = t51[v]

							if not v1256.Cached then
								local Body = v:FindFirstChild("Body")
								local PrimaryPart = v.PrimaryPart
								local Thruster = v:FindFirstChild("Thruster")
								local PartHitDetector = v:FindFirstChild("PartHitDetector")

								if not Body or not PrimaryPart then
									continue
								end

								if not Thruster or not PartHitDetector then
									continue
								end

								v1256.Body = Body
								v1256.PrimaryPart = PrimaryPart
								v1256.Thruster = Thruster
								v1256.HitDetector = PartHitDetector
								v1256.SwaySpeed = math.random(15, 40) / 10
								v1256.SwayX = math.random(-40, 40)
								v1256.SwayY = math.random(-10, 30)
								v1256.SwayZ = math.random(-40, 40)
								v1256.CurrentSpeed = _G.ManualMissileSpeed

								local LookPart = v:FindFirstChild("LookPart")

								if LookPart then
									v1256.LookPart = LookPart
									v1256.AlignO = LookPart:FindFirstChild("AlignO")
									v1256.AlignP = LookPart:FindFirstChild("AlignP")
								end

								v1256.Cached = true
							end

							local Body = v1256.Body
							local PrimaryPart = v1256.PrimaryPart
							local Thruster = v1256.Thruster
							local HitDetector = v1256.HitDetector
							local LookPart = v1256.LookPart

							if not LookPart then
								LookPart = Instance.new("Part")
								LookPart.Name = "LookPart"
								LookPart.Size = Vector3.zero
								LookPart.CFrame = PrimaryPart.CFrame * CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(90), 0, 0)
								LookPart.Transparency = 1
								LookPart.CanCollide = false
								LookPart.CanQuery = false
								LookPart.Parent = v

								local WeldConstraint = Instance.new("WeldConstraint")

								WeldConstraint.Part0 = PrimaryPart
								WeldConstraint.Part1 = LookPart
								WeldConstraint.Parent = LookPart

								local Attachment = Instance.new("Attachment", LookPart)
								local AlignOrientation = Instance.new("AlignOrientation")

								AlignOrientation.Name = "AlignO"
								AlignOrientation.Attachment0 = Attachment
								AlignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
								AlignOrientation.RigidityEnabled = true
								AlignOrientation.Parent = LookPart

								local AlignPosition = Instance.new("AlignPosition")

								AlignPosition.Name = "AlignP"
								AlignPosition.Attachment0 = Attachment
								AlignPosition.Mode = Enum.PositionAlignmentMode.OneAttachment
								AlignPosition.MaxForce = 100000
								AlignPosition.MaxVelocity = v1256.CurrentSpeed
								AlignPosition.Responsiveness = 60
								AlignPosition.Parent = LookPart
								v1256.LookPart = LookPart
								v1256.AlignO = AlignOrientation
								v1256.AlignP = AlignPosition
							end

							if Body and PrimaryPart and LookPart and UniversalPlayerRoot then
								if CheckNetworkOwnerShipOnPart(Body) then
									local AlignO = v1256.AlignO
									local AlignP = v1256.AlignP

									if not v1256.Teleported then
										HitDetector.CanTouch = false

										for _, child in ipairs(v:GetChildren()) do
											if child:IsA("BasePart") then
												child.CanCollide = false
											end
										end

										v1256.Teleported = true
										PrimaryPart.CFrame += Vector3.new(0, math.random(140, 160), 0)
										Body.AssemblyLinearVelocity = Vector3.zero
										Body.AssemblyAngularVelocity = Vector3.zero
									end

									if AlignO and HumanoidRootPart then
										local Position = LookPart.Position
										local Position2 = HumanoidRootPart.Position
										local Magnitude = (Position - Position2).Magnitude

										if not (Magnitude <= 3.5) or v1256.Exploded then
											if _G.DynamicSpeedEnabled then
												v1256.CurrentSpeed += 0.05 + math.clamp(Magnitude / 500, 0, 1)
											else
												v1256.CurrentSpeed = _G.ManualMissileSpeed
											end

											AlignP.MaxVelocity = v1256.CurrentSpeed

											local v1278 = math.clamp(Magnitude / 60, 0, 1)
											local v1279 = tick() * v1256.SwaySpeed
											local position = Position2 + Vector3.new(math.sin(v1279) * v1256.SwayX * v1278, math.cos(v1279) * v1256.SwayY * v1278, math.sin(v1279 + 1.5) * v1256.SwayZ * v1278)

											AlignO.CFrame = CFrame.lookAt(Position, position)
											AlignP.Position = position
											Thruster.VectorForce.Enabled = false
										else
											v1256.Exploded = true

											if BombExplode then
												BombExplode:FireServer({
													Model = v,
													Hitbox = HitDetector,
													PositionPart = Body
												}, Position)
											end
										end
									end
								elseif (UniversalPlayerRoot.Position - Body.Position).Magnitude > 31 then
									DeleteToyRE:FireServer(v)
								else
									SNOWshipOnce(Body)
								end
							end
						end
					end
				end)
			end
		end
	})
end

rtrajectory_section:AddSlider({
	Name = "Ammount",
	Min = 1,
	Max = 15,
	Default = 1,
	Increment = 1,
	Callback = function(p325)
		_G.MaxBombs = p325
	end
})

do
	rtrajectory_section:AddToggle({
		Name = "Enable Dynamic Speed",
		Default = false,
		Callback = function(p326)
			_G.DynamicSpeedEnabled = p326
		end
	})
end

do
	rtrajectory_section:AddSlider({
		Name = "Missile Speed",
		Min = 10,
		Max = 500,
		Default = 100,
		Increment = 5,
		Callback = function(p327)
			_G.ManualMissileSpeed = p327
		end
	})
end

snowball_section:AddSlider({
	Name = "Ammount",
	Min = 5,
	Max = snowballMaxAmmount,
	Default = 5,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 1,
	ValueName = "Snowballs you want to make to explode them!",
	Callback = function(p328)
		n17 = p328
	end,
	Save = true,
	Flag = "ammountsnowballtomake_slider"
})
automakesnowballtoggle = nil
automakesnowballtoggle = snowball_section:AddToggle({
	Name = "Auto Make Snowball",
	Default = false,
	Callback = function(p329)
		_G.SnowbalEffectSpam = p329

		if p329 then
			snowballEffectConnection = v1221.ChildAdded:Connect(newSnowball)
			task.spawn(function()
				while _G.SnowbalEffectSpam do
					if not (n17 <= countToys("BallSnowball")) then
						SpawnToy({
							"BallSnowball",
							CFrame.new(-389, 228, 550, -0.30924969911575317, 0.2610282301902771, -0.91445553302764893, 0, 0.96159195899963379, 0.27448314428329468, 0.95098090171813965, 0.084883831441402435, -0.29737201333045959),
							(Vector3.new(0, 97.69000244140625, 0))
						})
					end

					if n17 <= CountGrownSnowsballs() then
						automakesnowballtoggle:Set(false)
					end

					task.wait()
				end
			end)
			task.spawn(function()
				holdOwnership()
			end)

			for _, child in ipairs(v1221:GetChildren()) do
				newSnowball(child)
			end
		elseif snowballEffectConnection then
			snowballEffectConnection:Disconnect()
		end
	end,
	Save = true,
	Flag = "autofarmsnowball_toggle"
})
v1224 = snowball_section:AddLabel("Grown Snowballs:")

do
	snowball_section:AddButton({
		Name = "Explode Snowballs",
		Callback = function()
			for k in pairs(t49) do
				if k:IsDescendantOf(W) then
					ExplodeSb(k.Parent)
				end
			end
		end
	})
end

spamexplosiontype = nil
spamexplosiontarget = 0
bombsammountoexplode = 1
oldbombsammount_value = 1
reachedrightammount = false
explosionInterval = nil
canExplode = false
maxBombstoexplode = 8

if v114.Value == 200 then
	maxBombstoexplode = 18
end

AimMissile = nil
GetAimMissile = function()
	if AimMissile and AimMissile.Parent and AimMissile.PrimaryPart then
		return AimMissile.PrimaryPart
	end
end
GetExplosionType = function()
	local spamexplosiontype_ = spamexplosiontype

	if spamexplosiontarget == 1 and _G.BypassPlayerSeat then
		local _GTargetToBombPlayer

		if _G.TargetToBombPlayer and spamexplosiontarget == 1 then
			_GTargetToBombPlayer = PS:FindFirstChild(_G.TargetToBombPlayer)
		end

		if _GTargetToBombPlayer and _GTargetToBombPlayer.Character then
			if _GTargetToBombPlayer.Character:FindFirstChildOfClass("Humanoid") then
				local Humanoid = _GTargetToBombPlayer.Character.Humanoid

				if Humanoid.Sit and Humanoid.SeatPart then
					spamexplosiontype_ = "BallSnowball"
				end
			end
		end
	end

	return spamexplosiontype_
end
CAS:BindAction("FireBomb", fireBombs, false, Enum.KeyCode.F)

do
	local t52 = {
		BombMissile = "PartHitDetector",
		BombDarkMatter = "PartHitDetector",
		FireworkMissile = "PartHitDetector",
		BombBalloon = "Balloon",
		PresentBig = "Box",
		PresentSmall = "Box",
		BallSnowball = "SoundPart"
	}

	ExplodeBomb = function(p330, p331, p332)
		local t53 = {
			{
				Hitbox = p330:FindFirstChild(t52[p330.Name]),
				PositionPart = p331
			},
			p332
		}

		if p330.Name == "BallSnowball" then
			if not p330:GetAttribute("FollowSnowball") then
				p330:SetAttribute("FollowSnowball", true)
				task.spawn(function()
					while p330.Parent do
						local SoundPart = p330:FindFirstChild("SoundPart")

						if SoundPart and p330:GetAttribute("MissileTeleported") then
							local t54 = {
								{
									Radius = 0,
									Hitbox = SoundPart,
									Color = Color3.new(),
									Model = SoundPart,
									TimeLength = 0,
									Type = "SnowPoof",
									ImpactSpeed = 0,
									ExplodesByFire = false,
									ExplodedOnce = false,
									DestroysModel = false,
									ExplodesByPointy = true,
									MaxForcePerStudSquared = 0,
									PositionPart = p331
								},
								p331.Position
							}

							p330:PivotTo(p331.CFrame)
							task.wait()
							BombEvents.BombExplode:FireServer(unpack(t54))
						end

						task.wait()
					end
				end)
			end
		else
			BombEvents.BombExplode:FireServer(unpack(t53))
		end
	end
end

ExplodeByTargetMode = function(p333)
	if spamexplosiontarget == 0 then
		ExplodeBomb(p333, workspace.SpawnLocation, Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)))
	elseif spamexplosiontarget == 1 then
		local _GTargetToBombPlayer

		if _G.TargetToBombPlayer then
			_GTargetToBombPlayer = PS:FindFirstChild(_G.TargetToBombPlayer)
		end

		if _GTargetToBombPlayer and _GTargetToBombPlayer.Character then
			if _GTargetToBombPlayer.Character:FindFirstChild("HumanoidRootPart") and not verifyDev(_GTargetToBombPlayer) then
				local HumanoidRootPart = _GTargetToBombPlayer.Character.HumanoidRootPart
				local v1293

				if _G.PredictPlayer then
					v1293 = GetFakeAim2()

					if v113.Value and not (_G.GotFakeAim2 or _G.AcquiringFakeAim2) then
						_G.AcquiringFakeAim2 = true
						task.spawn(function()
							for i = 1, 100 do
								if _G.GotFakeAim2 or not _G.FireworkEffectSpam or not _G.PredictPlayer then
									break
								end

								TeleportPlayer(CFrame.new(workspace.SpawnLocation.CFrame.Position + Vector3.new(0, 5, 0)), 1)
								GetFakeAim2()
								task.wait()
							end

							_G.AcquiringFakeAim2 = false
						end)
					end
				end

				if v1293 and GetExplosionType() ~= "BallSnowball" then
					ExplodeBomb(p333, v1293, HumanoidRootPart.Position + HumanoidRootPart.Velocity / 1.93)
				else
					ExplodeBomb(p333, HumanoidRootPart, HumanoidRootPart.Position)
				end
			end
		end
	elseif spamexplosiontarget == 2 then
		local v1295 = GetFakeAim2()
		local pos_

		if LocalPlayer.Character then
			if LocalPlayer.Character:FindFirstChild("CamPart") then
				ray = Ray.new(LocalPlayer.Character.CamPart.Position, LocalPlayer.Character.CamPart.CFrame.lookVector * 5000)

				local v1297, v1298 = W:FindPartOnRayWithIgnoreList(ray, {
					LocalPlayer.Character,
					u112
				})

				hit = v1297
				pos = v1298

				if hit and pos then
					pos_ = pos
				end
			end
		end

		if v1295 and pos_ then
			ExplodeBomb(p333, v1295, pos_)
		end
	end
end
LastBombExplode = setmetatable({}, {
	__mode = "k"
})
CanExplodeBomb = function(p334)
	local v1299 = LastBombExplode[p334]

	return not v1299 or os.clock() - v1299 >= 0.5
end
ExplodeBombOnce = function(p335)
	LastBombExplode[p335] = os.clock()
	ExplodeByTargetMode(p335)
end

do
	ExplodeFirstBomb = function(p336)
		for _, child in pairs(u112:GetChildren()) do
			if child.Name == p336 and CanExplodeBomb(child) then
				ExplodeBombOnce(child)

				return
			end
		end
	end
end

_G.ExplodingBombs = false

do
	ExplodeAllAtOnce = function()
		_G.ExplodingBombs = true

		local v1302 = GetExplosionType()
		local explosionInterval_ = explosionInterval or 0

		for _, child in pairs(u112:GetChildren()) do
			if child.Name == v1302 and CanExplodeBomb(child) then
				ExplodeBombOnce(child)

				if explosionInterval_ > 0 then
					task.wait(explosionInterval_)
				end
			end
		end

		_G.ExplodingBombs = false
	end
end

firework_section = Explosion_Tab:AddSection({
	Name = "Explosions Spam"
})
explosionexplanation = Explosion_Tab:AddSection({
	Name = "FAQ about (Explosions Spam)"
})

do
	CheckIfIsAToyInPlayerPlot = function(p337)
		if typeof(p337) == "Instance" and p337.Parent and p337:IsDescendantOf(W.PlotItems) then
			return true
		end
	end
end

ExplosiveHitboxNames = {
	BombDarkMatter = "Pyramid",
	BombMissile = "Body",
	BombBalloon = "Balloon",
	FireworkMissile = "Hitbox",
	PresentBig = "Box",
	PresentSmall = "Box",
	BallSnowball = "SoundPart"
}
GetPlayerPlotArea = function()
	if not _G.PlotPlayerIsOwner then
		return
	end

	local v1306 = W.Plots:FindFirstChild(tostring(_G.PlotPlayerIsOwner))

	return v1306 and v1306:FindFirstChild("PlotArea")
end

do
	ExplodePlayer = function(p338, p339)
		if typeof(p338) == "Instance" and p338:IsA("Player") and p338.Character then
			if p338.Character:FindFirstChild("HumanoidRootPart") then
				local u1307
				local HumanoidRootPart = p338.Character:FindFirstChild("HumanoidRootPart")

				for i = 1, 15 do
					if u1307 then
						break
					end

					if i > 1 then
						task.wait()
					end

					for _, child in pairs(u112:GetChildren()) do
						if child.Name == p339 then
							local v1312 = child:FindFirstChild(ExplosiveHitboxNames[p339])

							local function v1313(p340)
								local BodyVelocity = Instance.new("BodyVelocity", child.PrimaryPart)

								BodyVelocity.Velocity = Vector3.new(0, 0, 0)
								BodyVelocity.MaxForce = Vector3.new(1, 1, 1) * math.huge
								BodyVelocity.Name = "Stable"
								task.wait()
								child:PivotTo(p340)
								child:SetAttribute("MissileTeleported", true)
								u1307 = child
							end

							if v1312 and not SNOWshipOnce(v1312) and LocalPlayer:DistanceFromCharacter(v1312.Position) > 30 then
								if CheckIfIsAToyInPlayerPlot(child) then
									TeleportPlayer(v1312.CFrame)
								else
									RequestDeleteToy(child)
								end
							elseif v1312 and CheckNetworkOwnerShipOnPart(v1312) and not child:GetAttribute("MissileTeleported") then
								if CheckIfIsAToyInPlayerPlot(child) then
									local v1315 = GetPlayerPlotArea()

									if v1315 then
										v1313(CFrame.new(v1315.Position))
									end
								else
									v1313(CFrame.new(math.random(-1000, 1000), 10000, math.random(-1000, 1000)))
								end
							end
						end
					end
				end

				if u1307 and HumanoidRootPart then
					ExplodeBomb(u1307, HumanoidRootPart, HumanoidRootPart.Position)
				else
					SpawnToy({
						p339,
						CFrame.new(_G.UniversalPlayerHead.Position.X, _G.UniversalPlayerHead.Position.Y, _G.UniversalPlayerHead.Position.Z, -0.30924969911575317, 0.2610282301902771, -0.91445553302764893, 0, 0.96159195899963379, 0.27448314428329468, 0.95098090171813965, 0.084883831441402435, -0.29737201333045959),
						(Vector3.new(0, 97.69000244140625, 0))
					}, true)
				end
			end
		end
	end
end

firework_section:AddToggle({
	Name = "Explode",
	Default = false,
	Callback = function(p341)
		_G.FireworkEffectSpam = p341
		_G.FireworkSession = (_G.FireworkSession or 0) + 1

		local function v1316()
			return _G.FireworkEffectSpam and _G.FireworkSession == _G.FireworkSession
		end
		local function v1317(p342)
			local bombsammountoexplode_ = bombsammountoexplode

			if v113.Value and bombsammountoexplode_ > 4 and (p342 == "BombDarkMatter" or p342 == "BombMissile" or p342 == "BombBalloon") then
				bombsammountoexplode_ = 4
			end

			return bombsammountoexplode_
		end

		if p341 then
			task.spawn(function()
				while v1316() do
					local v1319 = GetPlayerCFrame()
					local v1320 = GetExplosionType()

					if v1319 and not (_G.ExplodingBombs or not (countToys(v1320) < v1317(v1320)) or CheckToyLimit(10)) then
						SpawnToy({
							v1320,
							CFrame.new(v1319.Position.X, v1319.Position.Y, v1319.Position.Z, -0.30924969911575317, 0.2610282301902771, -0.91445553302764893, 0, 0.96159195899963379, 0.27448314428329468, 0.95098090171813965, 0.084883831441402435, -0.29737201333045959),
							(Vector3.new(0, 97.69000244140625, 0))
						}, true)
					end

					task.wait()
				end
			end)
			task.spawn(function()
				while v1316() do
					local v1321 = GetExplosionType()
					local v1322 = ExplosiveHitboxNames[v1321]
					local t55 = {}

					for _, child in pairs(u112:GetChildren()) do
						if child.Name == v1321 then
							local v1326 = v1322 and child:FindFirstChild(v1322)

							if v1326 and not SNOWshipOnce(v1326) and LocalPlayer:DistanceFromCharacter(v1326.Position) > 30 then
								if CheckIfIsAToyInPlayerPlot(child) then
									TeleportPlayer(v1326.CFrame)
								else
									RequestDeleteToy(child)
								end
							elseif v1326 and CheckNetworkOwnerShipOnPart(v1326) and not child:GetAttribute("MissileTeleported") then
								if CheckIfIsAToyInPlayerPlot(child) then
									local v1327 = GetPlayerPlotArea()

									if v1327 then
										SetModelPropertiesBombs(child)
										table.insert(t55, {
											child,
											CFrame.new(v1327.Position)
										})
									end
								else
									table.insert(t55, {
										child,
										CFrame.new(math.random(-1000, 1000), 10000, math.random(-1000, 1000))
									})
								end
							end
						end
					end

					if #t55 > 0 then
						for _, v in ipairs(t55) do
							local BodyVelocity = Instance.new("BodyVelocity")

							BodyVelocity.Velocity = Vector3.new(0, 0, 0)
							BodyVelocity.MaxForce = Vector3.new(1, 1, 1) * math.huge
							BodyVelocity.Name = "Stable"
							BodyVelocity.Parent = v[1].PrimaryPart
						end

						task.wait()

						for _, v in ipairs(t55) do
							local v1333 = v[1]

							if v1333.Parent then
								v1333:PivotTo(v[2])
								v1333:SetAttribute("MissileTeleported", true)
							end
						end
					end

					task.wait(0.1)
				end
			end)
			task.spawn(function()
				while v1316() do
					local v1334 = GetExplosionType()

					if _G.TriggerMode == 1 and (spamexplosiontarget == 0 or spamexplosiontarget == 1) then
						local v1335 = countToys(v1334)

						if v1317(v1334) <= v1335 or CheckToyLimit(10) then
							ExplodeAllAtOnce()
						end
					elseif (_G.TriggerMode == 0 or spamexplosiontarget == 2) and _G.FireBomb then
						if (explosionInterval or 0) > 0 then
							ExplodeFirstBomb(v1334)
							task.wait(explosionInterval)
						else
							ExplodeAllAtOnce()
						end
					end

					task.wait()
				end
			end)
			task.spawn(function()
				while v1316() do
					CheckToyLimit(10, true, { GetExplosionType() })
					task.wait()
				end
			end)
			task.spawn(function()
				local n19 = 0
				local n20 = 0

				while v1316() do
					local _GTargetToBombPlayer

					if _G.TargetToBombPlayer and spamexplosiontarget == 1 then
						_GTargetToBombPlayer = PS:FindFirstChild(_G.TargetToBombPlayer)
					end

					if _GTargetToBombPlayer and _GTargetToBombPlayer.Character then
						if _GTargetToBombPlayer.Character:FindFirstChild("HumanoidRootPart") and not verifyDev(_GTargetToBombPlayer) then
							local now = os.clock()

							if IsPlayerInsideSafeZone(_GTargetToBombPlayer) then
								if not v113.Value and now - n19 > 0.25 then
									local v1340 = GetPlayerPlotArea()

									if v1340 then
										n19 = now
										TeleportPlayer(v1340.CFrame * CFrame.new(10, 0, 10) + Vector3.new(0, -5, 0))
									end
								end

								if not _G.PlotPlayerIsOwner and now - n20 > 3 then
									n20 = now
									ClaimEmptyPlot()
								end
							elseif v113.Value and now - n19 > 0.25 then
								n19 = now
								TeleportPlayer(CFrame.new(workspace.SpawnLocation.Position + Vector3.new(0, 5, 0)))
							end
						end
					end

					task.wait()
				end
			end)
		end
	end
})
firework_section:AddDropdown({
	Name = "Explosion Type",
	Default = "Firework",
	Options = {
		{
			Name = "FireworkMissile",
			FakeName = "Firework",
			Image = "rbxassetid://71634501782424",
			ImageRectOffset = Vector2.new(0, 540),
			ImageRectSize = Vector2.new(90, 90)
		},
		{
			Name = "BombMissile",
			FakeName = "Missile",
			Image = "rbxassetid://71634501782424",
			ImageRectOffset = Vector2.new(900, 90),
			ImageRectSize = Vector2.new(90, 90)
		},
		{
			Name = "BombDarkMatter",
			FakeName = "Void",
			Image = "rbxassetid://71634501782424",
			ImageRectOffset = Vector2.new(810, 90),
			ImageRectSize = Vector2.new(90, 90)
		},
		{
			Name = "BombBalloon",
			FakeName = "Ballon",
			Image = "rbxassetid://71634501782424",
			ImageRectOffset = Vector2.new(720, 90),
			ImageRectSize = Vector2.new(90, 90)
		},
		{
			Name = "PresentSmall",
			FakeName = "Small Present",
			Image = "rbxassetid://104169552239223",
			ImageRectOffset = Vector2.new(180, 270),
			ImageRectSize = Vector2.new(90, 90)
		},
		{
			Name = "PresentBig",
			FakeName = "Big Present",
			Image = "rbxassetid://104169552239223",
			ImageRectOffset = Vector2.new(90, 270),
			ImageRectSize = Vector2.new(90, 90)
		},
		{
			Name = "BallSnowball",
			FakeName = "Snowball",
			Image = "rbxassetid://71634501782424",
			ImageRectOffset = Vector2.new(0, 90),
			ImageRectSize = Vector2.new(90, 90)
		}
	},
	Callback = function(p343)
		spamexplosiontype = p343
	end
})
firework_section:AddBind({
	Name = "Trigger Bombs",
	Default = Enum.KeyCode.F,
	Hold = true,
	Callback = function(p344)
		if FireExplosionM_B then
			FireExplosionM_B:Set(p344)
		end

		_G.FireBomb = p344
	end
})
FireExplosionM_B = FireExplosionM_B or nil
firework_section:AddDropdown({
	Name = "Trigger Mode",
	Default = "Automatic",
	Options = {
		"Key",
		"Automatic"
	},
	Callback = function(p345)
		if p345 == "Key" then
			_G.TriggerMode = 0

			if not FireExplosionM_B then
				FireExplosionM_B = MakeMobileButtonToggle(function()
					local fireBomb = not _G.FireBomb

					FireExplosionM_B:Set(fireBomb)
					_G.FireBomb = fireBomb
				end, "FireBomb", false, gui4)
				FireExplosionM_B:Set(_G.FireBomb)
				FireExplosionM_B:ChangeText("")
				FireExplosionM_B:ChangeIcon(11702759774)
			end
		elseif p345 == "Automatic" then
			_G.TriggerMode = 1

			if FireExplosionM_B then
				FireExplosionM_B:Delete()
				FireExplosionM_B = nil
			end
		end
	end
})

do
	firework_section:AddSlider({
		Name = "Delay (Automatic Trigger Mode)",
		Min = 0,
		Max = 0.5,
		Default = 0,
		Color = Color3.fromRGB(59, 122, 179),
		Increment = 0.015,
		ValueName = "interval between every explosion in automatic trigger mode!",
		Callback = function(p346)
			explosionInterval = p346
		end
	})
end

firework_section:AddSlider({
	Name = "Ammount to Explode",
	Min = 1,
	Max = 20,
	Default = 1,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 1,
	ValueName = "to explode the player brutally",
	Callback = function(p347)
		bombsammountoexplode = p347
	end
})

do
	firework_section:AddDropdown({
		Name = "Target",
		Default = "Spawn",
		Options = {
			"Spawn",
			"Player",
			"Mouse"
		},
		Callback = function(p348)
			if p348 == "Spawn" then
				spamexplosiontarget = 0
			elseif p348 == "Player" then
				spamexplosiontarget = 1
			elseif p348 == "Mouse" then
				spamexplosiontarget = 2
			end
		end
	})
end

PlayerToTarget = firework_section:AddPlayersDropdown({
	Name = "Select Player",
	Default = "",
	MultipleSelection = false,
	SearchBar = true,
	Callback = function(p349)
		_G.TargetToBombPlayer = p349
	end
})
MakeSearchBar(PlayerToTarget, firework_section)
firework_section:AddToggle({
	Name = "Predict Player Movement",
	Default = false,
	Callback = function(p350)
		_G.PredictPlayer = p350
	end,
	Save = true,
	Flag = "PredictPlayerMovement_toggle"
})
firework_section:AddToggle({
	Name = "Bypass Player Seat",
	Default = false,
	Callback = function(p351)
		_G.BypassPlayerSeat = p351
	end,
	Save = true,
	Flag = "SilentAim_toggle"
})
explosionexplanation:AddParagraph("How to use target mouse?", "Press/Hold the keybind (F) and then BOOM!")
explosionexplanation:AddParagraph("How to target player?", "Select Target to Player and then select the player you want to target")
explosionexplanation:AddParagraph("How to change the explosive", "Click on Explosive Type and select any type")
explosionexplanation:AddParagraph("What is Bypass Player Seat", "This will prevent players from sitting on something while being exploded!")
LocalPlayer.Idled:Connect(function()
	VU:CaptureController()
	VU:ClickButton2(Vector2.new())
end)
GrabPartsModel = game:GetService("ReplicatedFirst").GrabParts
_G.ActualFakeGrabParts = nil
var120_upvw = nil

do
	RS_.GrabEvents.EndGrabEarly.OnClientEvent:Connect(function()
		if _G.ActualFakeGrabParts then
			_G.ActualFakeGrabParts:Destroy()
		end
	end)
end

positionCam = function()
	if UserInputService.MouseBehavior ~= Enum.MouseBehavior.LockCenter then
		UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
	end

	if W.CurrentCamera.CameraType ~= Enum.CameraType.Scriptable then
		W.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	end

	for _, descendant in pairs(LocalPlayer.Character:GetDescendants()) do
		if descendant:IsA("BasePart") then
			descendant.Transparency = 1
		end
	end

	W.CurrentCamera.CFrame = CFrame.new(_G.UniversalPlayerRoot.CFrame * var120_upvw) * W.CurrentCamera.CFrame.Rotation

	if _G.RotatingFakeGrabParts == false then
		R:UnbindFromRenderStep("camBinding1")
		W.CurrentCamera.CameraType = Enum.CameraType.Custom
		UserInputService.MouseBehavior = Enum.MouseBehavior.Default
	end
end

do
	rotatefunction = function()
	end
end

throwfunction = function()
end

do
	zoominfunction = function()
	end
end

do
	zoomoutfunction = function()
	end
end

hidemobilegrabbuttons = nil
GetTargetFakeGrabHolding = function()
end

do
	DeleteRealGrabParts = function()
		ChangeCrosshairsFrame(UDim2.new(0, 11, 0, 11))

		if anticreatelinelocalscript then
			if anticreatelinelocalscript:FindFirstChild("GrabNotifyEvent") then
				anticreatelinelocalscript.GrabNotifyEvent:Fire(false)
			end
		end

		module_upvr_2.ChangeColor("RealGrab")

		if _G.RealGrabParts then
			CAS:UnbindAction("Throw")
			CAS:UnbindAction("ZoomIn")
			CAS:UnbindAction("ZoomOut")
			CAS:UnbindAction("ZoomPC")
			CAS:UnbindAction("Rotate")
			ActionEvent("GrabbingControls", false)
			ActionEvent("GrabControls", false)
			ActionEvent("RotatingControls", false)
			ActionEvent("RotateControls", false)
			W.CurrentCamera.CameraType = Enum.CameraType.Custom
			R:UnbindFromRenderStep("dragBinding")
			R:UnbindFromRenderStep("buttonDistanceMoving")
			v118:FireServer(_G.RealGrabPartsHolding)
			_G.RealGrabParts:Destroy()
		end
	end
end

GrabPartFake = function(p352, p353, p354)
	local Character = game.Players.LocalPlayer.Character

	if Character and p352 and p352:IsA("Part") and not _G.ActualFakeGrabParts and _G.UniversalPlayerHumanoid.Health > 0 then
		if _G.RealGrabParts and not p354 then
			return
		end

		if _G.RealGrabParts and p354 then
			DeleteRealGrabParts()
		end

		local Head = p352.Parent:FindFirstChild("Head")
		local Humanoid = p352.Parent:FindFirstChildOfClass("Humanoid")
		local v1347 = Head or p352
		local u1348 = false
		local u1349 = false
		local CurrentReach = LocalPlayer:FindFirstChild("CurrentReach")

		if Humanoid and Humanoid.Health < 1 and u1027.InPlot.Value then
			return nil
		end

		local v1351 = p353 or p352

		EnableSilentAimButton(true)
		pcDistance2 = (p352.Position - W.CurrentCamera.CFrame.Position).Magnitude

		local clone = GrabPartsModel:Clone()

		clone:SetAttribute("Fake", true)
		clone.Name = "GrabParts"
		clone.GrabPart.Color = game.Players.LocalPlayer.BeamColor.BallColorHolder.Value
		clone.BeamPart.GrabBeam.Color = game.Players.LocalPlayer.BeamColor.ColorSequenceHolder.Color

		if CurrentReach and CurrentReach.Value == 40 then
			clone.BeamPart.GrabBeam.Texture = "rbxassetid://8933355899"
		end

		ChangeCrosshairsFrame(UDim2.new(0, 7, 0, 7))
		clone.DragPart.Anchored = true
		clone.GrabPart.GrabAttach.Orientation = workspace.RotateOrientPart.PartOrient.WorldOrientation
		clone.DragPart.DragAttach.WorldOrientation = workspace.RotateOrientPart.PartOrient.WorldOrientation
		clone.GrabPart.WeldConstraint.Part1 = p352
		clone.GrabPart.Position = p352.Position
		clone.GrabPart.Anchored = false
		clone.BeamPart.Anchored = true
		clone.BeamPart.GrabBeam.Attachment0 = Character:FindFirstChild("CamPart").Attachment
		clone.Parent = workspace
		_G.ActualFakeGrabParts = clone

		local connection = UserInputService.InputChanged:Connect(function(input, gameProcessed)
			if not gameProcessed then
				if input.UserInputType == Enum.UserInputType.MouseWheel then
					if input.Position.Z > 0 then
						pcDistance2 = math.ceil(pcDistance2 + input.Position.Z * 2)
					elseif input.Position.Z < 0 then
						pcDistance2 = math.floor(pcDistance2 + input.Position.Z * 2)
					end

					if pcDistance2 < 3 then
						pcDistance2 = 3
					elseif pcDistance2 >= 30 then
						pcDistance2 = 30
					end

					v120:FireServer(pcDistance2)
				end

				if u1349 and input.KeyCode ~= Enum.KeyCode.Thumbstick2 and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
					local clone2 = workspace.RotateOrientPart:Clone()

					clone2.Anchored = true
					clone2.Orientation = Vector3.new(clone2.Orientation.X + input.Delta.Y, clone2.Orientation.Y + input.Delta.X, clone2.Orientation.Z)
					W.RotateOrientPart.PartOrient.WorldOrientation = clone2:WaitForChild("PartOrient").WorldOrientation
					clone2:Destroy()
				end
			end
		end)

		clone.GrabPart.BeamSound:Play()
		clone.GrabPart.AttachSound:Play()
		ActionEvent("HoldControls", false)
		ActionEvent("GrabbingControls", true)
		ActionEvent("GrabControls", false)

		local function v1355()
			_G.ZoomingIn = true

			while _G.ZoomingIn do
				if _G.FutherExtend then
					pcDistance2 = math.floor(pcDistance2 - IncreaseLineExtend)
				else
					pcDistance2 = math.floor(pcDistance2 - 2)
				end

				if pcDistance2 < 3 then
					pcDistance2 = 3
				end

				v120:FireServer(pcDistance2)
				wait(0.05)
			end
		end
		local function v1356()
			_G.ZoomingOut = true

			while _G.ZoomingOut do
				pcDistance2 = math.ceil(pcDistance2 + (_G.FutherExtend and IncreaseLineExtend) or 2)

				if not _G.FutherExtend and pcDistance2 >= 30 then
					pcDistance2 = 30
				end

				v120:FireServer(pcDistance2)
				wait(0.05)
			end
		end
		local function v1357()
			clone:Destroy()

			if p352.Anchored == false then
				local n21 = 0

				if p352.Parent:IsA("Model") and p352.Parent.Name ~= "Workspace" then
					for _, child in pairs(p352.Parent:GetChildren()) do
						if child:IsA("BasePart") then
							n21 += child.Mass
						end
					end

					for _, child in pairs(p352.Parent:GetChildren()) do
						if child:IsA("BasePart") then
							child.Velocity = W.CurrentCamera.CFrame.LookVector * 50
						end
					end
				end

				local velocity = W.CurrentCamera.CFrame.LookVector * 750 / (n21 + p352.Mass) + W.CurrentCamera.CFrame.LookVector * 15

				if velocity.Magnitude < 100 then
					velocity = W.CurrentCamera.CFrame.LookVector * 100
				end

				p352.Velocity = velocity
			end
		end
		local function v1364()
			if u1349 then
				u1349 = false
				_G.RotatingFakeGrabParts = false
				W.CurrentCamera.CameraType = Enum.CameraType.Custom
				UserInputService.MouseBehavior = Enum.MouseBehavior.Default
				R:UnbindFromRenderStep("camBinding1")
				module_upvr_2.ChangeColor("Rotate")
				ActionEvent("RotatingControls", false)
				ActionEvent("RotateControls", true)
			else
				u1349 = true
				_G.RotatingFakeGrabParts = true
				var120_upvw = _G.UniversalPlayerRoot.CFrame:ToObjectSpace(W.CurrentCamera.CFrame).Position
				W.CurrentCamera.CameraType = Enum.CameraType.Scriptable
				UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
				R:BindToRenderStep("camBinding1", Enum.RenderPriority.Camera.Value - 1, positionCam)
				ActionEvent("RotatingControls", true)
				ActionEvent("RotateControls", false)
				ActionEvent("")
				module_upvr_2.ChangeColor("Rotate", Color3.new(0, 1, 1))
			end
		end

		local connection2 = UserInputService.InputBegan:Connect(function(input, gameProcessed)
			if not gameProcessed then
				if input.UserInputType == Enum.UserInputType.MouseButton2 then
					v1357()
				elseif input.KeyCode == Enum.KeyCode.R then
					v1364()
				end
			end
		end)
		local connection3 = W.ChildAdded:Connect(function(child)
			if clone.Parent and child.Name == "GrabParts" and child ~= clone and child.Parent == W then
				R:UnbindFromRenderStep("dragBinding")
				R:UnbindFromRenderStep("buttonDistanceMoving")

				local DragPart = child.DragPart
				local BeamPart = child.BeamPart
				local GrabPart = child.GrabPart

				if DragPart and BeamPart and GrabPart then
					BeamPart.GrabBeam.Enabled = false
					GrabPart.Transparency = 1
					GrabPart.AttachSound.Volume = 0
					GrabPart.BeamSound.Volume = 0
					DragPart.AlignOrientation.Enabled = false
					DragPart.AlignPosition.Enabled = false
					v117:FireServer(p352, CFrame.new(0, 0, 0))
				end
			else
				return
			end
		end)

		v119:FireServer(v1347, lookAt(_G.UniversalPlayerRoot.Position, v1347.Position))

		local function v1370()
			hidemobilegrabbuttons = task.spawn(function()
				for i = 0, 15 do
					module_upvr_2.DisableButton("ZoomIn")
					module_upvr_2.DisableButton("ZoomOut")
					module_upvr_2.DisableButton("Throw")
					module_upvr_2.DisableButton("Rotate")
					wait(0.05)
				end
			end)
			connection:Disconnect()
			connection2:Disconnect()
			connection3:Disconnect()
			ActionEvent("GrabbingControls", false)
			ActionEvent("GrabControls", false)
			ActionEvent("RotatingControls", false)
			ActionEvent("RotateControls", false)

			if anticreatelinelocalscript then
				if anticreatelinelocalscript:FindFirstChild("GrabNotifyEvent") then
					anticreatelinelocalscript.GrabNotifyEvent:Fire(false)
				end
			end

			v118:FireServer(p352)

			if _G.ActualFakeGrabParts then
				_G.ActualFakeGrabParts:Destroy()
				_G.RealGrabPartsHolding = nil
			end

			_G.ActualFakeGrabParts = nil
			_G.RotatingFakeGrabParts = false
			u1349 = false
			W.CurrentCamera.CameraType = Enum.CameraType.Custom
			UserInputService.MouseBehavior = Enum.MouseBehavior.Default
			module_upvr_2.ChangeColor("Grab")
			EnableSilentAimButton(false)
			ChangeCrosshairsFrame(UDim2.new(0, 11, 0, 11))
			GetTargetFakeGrabHolding = function()
				return nil
			end
		end

		rotatefunction = v1364
		throwfunction = v1357
		zoominfunction = v1355
		zoomoutfunction = v1356

		if hidemobilegrabbuttons then
			task.cancel(hidemobilegrabbuttons)
		end

		module_upvr_2.ChangeColor("Grab", Color3.new(0, 1, 1))
		module_upvr_2.PlaceButton("Throw")
		module_upvr_2.PlaceButton("Rotate")

		if not _G.FutherExtend then
			module_upvr_2.PlaceButton("ZoomIn")
			module_upvr_2.PlaceButton("ZoomOut")
		end

		task.spawn(function()
			while clone.Parent and p352:IsDescendantOf(W) do
				if CheckNetworkOwnerShipOnPart(v1347) and not u1348 then
					GetTargetFakeGrabHolding = function()
						return v1351
					end
					pcDistance2 = (p352.Position - W.CurrentCamera.CFrame.Position).Magnitude
					v120:FireServer(pcDistance2)
					v117:FireServer(p352, CFrame.new(0, 0, 0))
					anticreatelinelocalscript.GrabNotifyEvent:Fire(true)
					u1348 = true
					module_upvr_2.ChangeColor("Grab", Color3.new(0, 1, 1))
				elseif not CheckNetworkOwnerShipOnPart(v1347) and u1348 then
					u1348 = false
				end

				module_upvr_2.GrayOutButton("Grab", false)
				ActionEvent("GrabControls", false)
				ChangeCrosshairsFrame(UDim2.new(0, 7, 0, 7))
				clone.DragPart.Position = workspace.CurrentCamera.CFrame.LookVector * pcDistance2 + workspace.CurrentCamera.CFrame.Position
				clone.DragPart.DragAttach.WorldOrientation = workspace.RotateOrientPart.PartOrient.WorldOrientation
				clone.BeamPart.CFrame = CFrame.lookAt(clone.GrabPart.Position, clone.DragPart.Position, Vector3.new(0, 0, 1))
				clone.BeamPart.GrabBeam.CurveSize1 = (clone.GrabPart.Position - clone.DragPart.Position).Magnitude * 1.5
				clone.GrabPart.BeamSound.PlaybackSpeed = (clone.GrabPart.Position - clone.DragPart.Position).Magnitude * 1.5 * 1.5 / 2 + 2.5
				task.wait()
			end

			v1370()
		end)
	end
end
piano_gui = SafeGetObject("rbxassetid://127175911101110")

if piano_gui then
	piano_gui.DisplayOrder = 102
	piano_gui.IgnoreGuiInset = true
	piano_gui.ResetOnSpawn = false
	piano_gui.Enabled = false
	piano_gui.Parent = v111
end

if not isfolder("FTAP_Notes") then
	makefolder("FTAP_Notes")
end

PreMadeMusics = {
	Lingangu = "8.....0.....w.....w.....w.....w.....w.....e.....w.....0.....8.....0.....9.....8.....9.....0"
}
reloadnotes = function()
	if isfolder("FTAP_Notes") then
		local FTAP_Notes = listfiles("FTAP_Notes")

		for k in pairs(PreMadeMusics) do
			table.insert(FTAP_Notes, 1, k)
		end

		if files_Dropdown then
			files_Dropdown:Refresh(FTAP_Notes, true)
		end
	end
end
TrainControl_Section = Misc_Tab:AddSection({
	Name = "FTAP Train"
})
TrainControl_Section:AddToggle({
	Name = "Control Train",
	Default = false,
	Callback = function(p355)
		_G.ControllingTrain = p355

		if p355 then
			local ObjectModel = workspace.Map.AlwaysHereTweenedObjects.Train.Object:FindFirstChild("ObjectModel")
			local controltrain_toggle = result.Flags.controltrain_toggle
			local antiinput_toggle = result.Flags.antiinput_toggle
			local destroytrain_toggle = result.Flags.destroytrain_toggle

			if destroytrain_toggle and destroytrain_toggle.Value then
				destroytrain_toggle:Set(false)
			end

			if not ObjectModel then
				result:MakeNotification({
					Name = "<font color='#700909'>Error!</font>",
					Content = "This object got destroyed",
					Image = "rbxassetid://110786993356448",
					Time = 2
				})

				if controltrain_toggle then
					controltrain_toggle:Set(false)

					return
				end
			end

			local Seat = ObjectModel:FindFirstChild("Seat")

			ObjectModel.Parent.FollowThisPart.AlignPosition.Enabled = false
			ObjectModel.Parent.FollowThisPart.AlignOrientation.Enabled = false

			while _G.ControllingTrain do
				if ObjectModel.Parent then
					if Seat.Occupant == _G.UniversalPlayerHumanoid then
						if antiinput_toggle then
							if not antiinput_toggle.Value then
								antiinput_toggle:Set(true)
							end
						end

						if not VFlyIY_MD.Flying then
							VFlyIY_MD.Enable(5)
						end
					else
						SitOnVS(Seat)

						if antiinput_toggle and antiinput_toggle.Value then
							antiinput_toggle:Set(false)
						end

						if VFlyIY_MD.Flying then
							VFlyIY_MD.Disable()
						end
					end

					task.wait()
				else
					result:MakeNotification({
						Name = "<font color='#700909'>Error!</font>",
						Content = "Train got destroyed",
						Image = "rbxassetid://110786993356448",
						Time = 2
					})

					if controltrain_toggle then
						controltrain_toggle:Set(false)

						break
					end

					if Seat.Occupant == _G.UniversalPlayerHumanoid then
						if antiinput_toggle then
							if not antiinput_toggle.Value then
								antiinput_toggle:Set(true)
							end
						end

						if not VFlyIY_MD.Flying then
							VFlyIY_MD.Enable(5)
						end
					else
						SitOnVS(Seat)

						if antiinput_toggle and antiinput_toggle.Value then
							antiinput_toggle:Set(false)
						end

						if VFlyIY_MD.Flying then
							VFlyIY_MD.Disable()
						end
					end

					task.wait()
				end
			end

			antiinput_toggle:Set(false)

			if VFlyIY_MD.Flying then
				VFlyIY_MD.Disable()
			end
		end
	end,
	Flag = "controltrain_toggle"
})
TrainControl_Section:AddSlider({
	Name = "Speed",
	Min = 5,
	Max = 20,
	Default = 5,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 1,
	ValueName = "",
	Callback = function(p356)
		VFlyIY_MD.SetSpeed(p356)
	end,
	Save = true,
	Flag = "trainspeedvfly_slider"
})

do
	TrainControl_Section:AddToggle({
		Name = "Destroy Train",
		Default = false,
		Callback = function(p357)
			_G.DestroyingTrain = p357

			if p357 then
				local ObjectModel = workspace.Map.AlwaysHereTweenedObjects.Train.Object:FindFirstChild("ObjectModel")
				local destroytrain_toggle = result.Flags.destroytrain_toggle
				local antiinput_toggle = result.Flags.antiinput_toggle
				local controltrain_toggle = result.Flags.controltrain_toggle

				if controltrain_toggle then
					if controltrain_toggle.Value then
						controltrain_toggle:Set(false)
					end
				end

				if not ObjectModel then
					result:MakeNotification({
						Name = "<font color='#700909'>Error!</font>",
						Content = "This object got destroyed",
						Image = "rbxassetid://110786993356448",
						Time = 2
					})

					if destroytrain_toggle then
						destroytrain_toggle:Set(false)

						return
					end
				end

				local Seat = ObjectModel:FindFirstChild("Seat")

				while _G.DestroyingTrain do
					if ObjectModel.Parent then
						if Seat.Occupant == _G.UniversalPlayerHumanoid then
							if antiinput_toggle and not antiinput_toggle.Value then
								antiinput_toggle:Set(true)
							end

							task.wait(1)
							W.FallenPartsDestroyHeight = -50000
							_G.UniversalPlayerRoot.CFrame = CFrame.new(0, -49900, 0)
							task.wait(0.1)
							_G.UniversalPlayerRoot.AssemblyLinearVelocity = Vector3.new(0, -1000000, 0)
							task.wait(1)
							W.FallenPartsDestroyHeight = -100
						else
							SitOnVS(Seat)

							if antiinput_toggle and antiinput_toggle.Value then
								antiinput_toggle:Set(false)
							end
						end

						task.wait()
					else
						result:MakeNotification({
							Name = "<b><font color='#1ab031'>Successfully!</font></b>",
							Content = "The object was destroyed!",
							Image = "rbxassetid://93898873302694",
							Time = 2
						})

						if destroytrain_toggle then
							destroytrain_toggle:Set(false)

							break
						end

						if Seat.Occupant == _G.UniversalPlayerHumanoid then
							if antiinput_toggle and not antiinput_toggle.Value then
								antiinput_toggle:Set(true)
							end

							task.wait(1)
							W.FallenPartsDestroyHeight = -50000
							_G.UniversalPlayerRoot.CFrame = CFrame.new(0, -49900, 0)
							task.wait(0.1)
							_G.UniversalPlayerRoot.AssemblyLinearVelocity = Vector3.new(0, -1000000, 0)
							task.wait(1)
							W.FallenPartsDestroyHeight = -100
						else
							SitOnVS(Seat)

							if antiinput_toggle and antiinput_toggle.Value then
								antiinput_toggle:Set(false)
							end
						end

						task.wait()
					end
				end

				antiinput_toggle:Set(false)
			end
		end,
		Flag = "destroytrain_toggle"
	})
end

MTsunami_Section = Misc_Tab:AddSection({
	Name = "Make Tsunami"
})
RFC_Section = Misc_Tab:AddSection({
	Name = "Remove Floor Collision"
})
MapPartSticky = {}

do
	RFC_Section:AddButton({
		Name = "Remove Collision",
		Callback = function()
			local v1384

			if not _G.GPartsHold then
				result:MakeNotification({
					Name = "<font color='#b3782b'>Warning!</font>",
					Content = "Since you aren't holding any parts, the script automatically opted for the spawn area!",
					Image = "rbxassetid://119020096067894",
					Time = 2
				})
				v1384 = findPartByPosition(workspace.Map.BaseGround, Vector3.new(107.5, -101.35040283203125, 43.374965667724609))
			end

			if _G.GPartsHold or v1384 then
				local GPartsHold = _G.GPartsHold or v1384
				local v1386 = MapPartSticky[GPartsHold]

				if v1386 and v1386.Parent then
					DeleteToyRE:FireServer(v1386)
					MapPartSticky[GPartsHold] = nil

					for i = 0, 25 do
						if v1386.Parent then
							task.wait(0.025)

							continue
						end

						break
					end
				end

				for i = 0, 100 do
					local v1389, v1390 = PutShuriken(GPartsHold, CFrame.new(200000, -math.huge, 300000), true, "ToolPencil")

					if v1389 then
						MapPartSticky[GPartsHold] = v1390
						result:MakeNotification({
							Name = "<b><font color='#1ab031'>Successfully!</font></b>",
							Content = "Collision Removed!",
							Image = "rbxassetid://93898873302694",
							Time = 2
						})

						break
					end

					task.wait()
				end
			else
				result:MakeNotification({
					Name = "<font color='#700909'>Error!</font>",
					Content = "You gotta grab the part you want to make unstable!",
					Image = "rbxassetid://110786993356448",
					Time = 2
				})
			end
		end
	})
end

RFC_Section:AddButton({
	Name = "Make Unstable" .. premium_text,
	Callback = function()
		if GetKey() ~= "Xana" then
			-- notify disabled

			return
		end

		local v1391

		if not _G.GPartsHold then
			result:MakeNotification({
				Name = "<font color='#b3782b'>Warning!</font>",
				Content = "Since you aren't holding any parts, the script automatically opted for the spawn area!",
				Image = "rbxassetid://119020096067894",
				Time = 2
			})
			v1391 = findPartByPosition(workspace.Map.BaseGround, Vector3.new(107.5, -101.35040283203125, 43.374965667724609))
		end

		if _G.GPartsHold or v1391 then
			local GPartsHold = _G.GPartsHold or v1391
			local v1393 = MapPartSticky[GPartsHold]

			if v1393 and v1393.Parent then
				DeleteToyRE:FireServer(v1393)
				MapPartSticky[GPartsHold] = nil

				for i = 0, 25 do
					if v1393.Parent then
						task.wait(0.025)

						continue
					end

					break
				end
			end

			for i = 0, 100 do
				local v1396, v1397 = PutShuriken(GPartsHold, CFrame.new(0, -4e9, 0), true, "ToolPencil")

				if v1396 then
					MapPartSticky[GPartsHold] = v1397
					result:MakeNotification({
						Name = "<b><font color='#1ab031'>Successfully!</font></b>",
						Content = "Stability Removed!",
						Image = "rbxassetid://93898873302694",
						Time = 2
					})

					break
				end

				task.wait()
			end
		else
			result:MakeNotification({
				Name = "<font color='#700909'>Error!</font>",
				Content = "You gotta grab the part you want to make unstable!",
				Image = "rbxassetid://110786993356448",
				Time = 2
			})
		end
	end
})
MTsunami_Section:AddToggle({
	Name = "Make a Tsunami",
	Default = false,
	Callback = function(p358)
		_G.MakeTsunamiOverflow = p358

		if p358 then
			local ObjectModel = workspace.Map.AlwaysHereTweenedObjects.Ocean.Object:FindFirstChild("ObjectModel")
			local maketsunami_toggle = result.Flags.maketsunami_toggle

			if not ObjectModel then
				result:MakeNotification({
					Name = "<font color='#700909'>Error!</font>",
					Content = "This object doesn't exist or got destroyed",
					Image = "rbxassetid://110786993356448",
					Time = 2
				})

				if maketsunami_toggle then
					maketsunami_toggle:Set(false)

					return
				end
			end

			local v1400 = ObjectModel:GetChildren()[22]

			while _G.MakeTsunamiOverflow do
				if BlackHole(v1400, false, CFrame.new(4294967296, 2147483648, 2147483648)) and maketsunami_toggle then
					maketsunami_toggle:Set(false)

					break
				end

				task.wait()
			end
		end
	end,
	Flag = "maketsunami_toggle"
})
BTO_Section = Misc_Tab:AddSection({
	Name = "Break Tweened Objects"
})
PP_Section = Misc_Tab:AddSection({
	Name = "Pencil Penis"
})
HHItems_Section = Misc_Tab:AddSection({
	Name = "Hold Items"
})
SyncAll_Section = Misc_Tab:AddSection({
	Name = "Sync"
})
SeatMisc_Section = Misc_Tab:AddSection({
	Name = "Seat"
})
EASAlarm_Section = Misc_Tab:AddSection({
	Name = "EAS Alarm (Hz)"
})
Piano_Section = Misc_Tab:AddSection({
	Name = "Piano"
})
TweenObjPaths = {
	["Inner UFO"] = W.Map.AlwaysHereTweenedObjects.InnerUFO,
	["Outer UFO"] = W.Map.AlwaysHereTweenedObjects.OuterUFO,
	["Cave Cart"] = W.Map.AlwaysHereTweenedObjects.CaveCart,
	["Large Rock"] = W.Map.AlwaysHereTweenedObjects.LrgDebris,
	["Large Rock 2"] = W.Map.AlwaysHereTweenedObjects.LrgDebris2,
	["Small Rock"] = W.Map.AlwaysHereTweenedObjects.SmlDebris,
	["Small Rock 2"] = W.Map.AlwaysHereTweenedObjects.SmlDebris2
}
TweenObjParts = {
	["Inner UFO"] = "Body",
	["Outer UFO"] = "Body",
	["Cave Cart"] = "Part",
	["Large Rock"] = nil,
	["Large Rock 2"] = nil,
	["Small Rock"] = nil,
	["Small Rock 2"] = nil
}
BTO_Section:AddDropdown({
	Name = "Object",
	Default = "Inner UFO",
	Options = {
		"Inner UFO",
		"Outer UFO",
		"Cave Cart",
		"Large Rock",
		"Large Rock 2",
		"Small Rock",
		"Small Rock 2"
	},
	Callback = function(p359)
		MapTweenObj = p359
	end
})

do
	BTO_Section:AddToggle({
		Name = "Break",
		Default = false,
		Callback = function(p360)
			BreakTweenobjs = p360

			if p360 then
				while BreakTweenobjs do
					local ObjectModel = TweenObjPaths[MapTweenObj].Object:FindFirstChild("ObjectModel")
					local FollowThisPart = ObjectModel and ObjectModel.Parent:FindFirstChild("FollowThisPart")
					local BreakTObjects_toggle = result.Flags.BreakTObjects_toggle

					if FollowThisPart then
						local AlignPosition = FollowThisPart:FindFirstChildOfClass("AlignPosition")
						local AlignOrientation = FollowThisPart:FindFirstChildOfClass("AlignOrientation")

						AlignPosition.Enabled = false
						AlignOrientation.Enabled = false
					end

					if ObjectModel then
						local BasePart = TweenObjParts[MapTweenObj] and ObjectModel:FindFirstChild(TweenObjParts[MapTweenObj]) or ObjectModel:FindFirstChildWhichIsA("BasePart")
						local v1407 = CheckNetworkOwnerShipOnPart(BasePart)

						if IsNetworkOwner(BasePart) then
							for i = 0, 100 do
								if not PutShuriken(BasePart) then
									task.wait()

									continue
								end

								break
							end

							result:MakeNotification({
								Name = "<b><font color='#1ab031'>Successfully!</font></b>",
								Content = "The object was broken, just grab it using massless grab.",
								Image = "rbxassetid://93898873302694",
								Time = 2
							})

							if BreakTObjects_toggle then
								BreakTObjects_toggle:Set(false)

								break
							end

							if BlackHole(BasePart) and not v1407 then
								for i = 1, 100 do
									if SNOWshipOnce(BasePart) then
										break
									end

									TeleportPlayer(CFrame.new(BasePart.CFrame.Position + Vector3.new(0, 5, 0)), 1, true, 0.5)
									task.wait()
								end
							end

							task.wait()
						else
							if BlackHole(BasePart) and not v1407 then
								for i = 1, 100 do
									if SNOWshipOnce(BasePart) then
										break
									end

									TeleportPlayer(CFrame.new(BasePart.CFrame.Position + Vector3.new(0, 5, 0)), 1, true, 0.5)
									task.wait()
								end
							end

							task.wait()
						end
					else
						result:MakeNotification({
							Name = "<font color='#700909'>Error!</font>",
							Content = "This object doesn't exist or got destroyed",
							Image = "rbxassetid://110786993356448",
							Time = 2
						})

						if BreakTObjects_toggle then
							BreakTObjects_toggle:Set(false)

							break
						end

						task.wait()
					end
				end
			end
		end,
		Flag = "BreakTObjects_toggle"
	})
end

BTO_Section:AddButton({
	Name = "Add Shuriken",
	Callback = function()
		local ObjectModel = TweenObjPaths[MapTweenObj].Object:FindFirstChild("ObjectModel")

		if ObjectModel then
			local BasePart = TweenObjParts[MapTweenObj] and ObjectModel:FindFirstChild(TweenObjParts[MapTweenObj]) or ObjectModel:FindFirstChildWhichIsA("BasePart")

			if BasePart then
				for i = 0, 100 do
					if not PutShuriken(BasePart) then
						task.wait()

						continue
					end

					break
				end
			end
		end
	end
})
teclasAssociadas = {}
teclasParaButtons = {}

do
	local t56 = {
		["1"] = Enum.KeyCode.One,
		["2"] = Enum.KeyCode.Two,
		["3"] = Enum.KeyCode.Three,
		["4"] = Enum.KeyCode.Four,
		["5"] = Enum.KeyCode.Five,
		["6"] = Enum.KeyCode.Six,
		["7"] = Enum.KeyCode.Seven,
		["8"] = Enum.KeyCode.Eight,
		["9"] = Enum.KeyCode.Nine,
		["0"] = Enum.KeyCode.Zero,
		A = Enum.KeyCode.A,
		B = Enum.KeyCode.B,
		C = Enum.KeyCode.C,
		D = Enum.KeyCode.D,
		E = Enum.KeyCode.E,
		F = Enum.KeyCode.F,
		G = Enum.KeyCode.G,
		H = Enum.KeyCode.H,
		I = Enum.KeyCode.I,
		J = Enum.KeyCode.J,
		K = Enum.KeyCode.K,
		L = Enum.KeyCode.L,
		M = Enum.KeyCode.M,
		N = Enum.KeyCode.N,
		O = Enum.KeyCode.O,
		P = Enum.KeyCode.P,
		Q = Enum.KeyCode.Q,
		R = Enum.KeyCode.R,
		S = Enum.KeyCode.S,
		T = Enum.KeyCode.T,
		U = Enum.KeyCode.U,
		V = Enum.KeyCode.V,
		W = Enum.KeyCode.W,
		X = Enum.KeyCode.X,
		Y = Enum.KeyCode.Y,
		Z = Enum.KeyCode.Z
	}

	if typeof(piano_gui) == "Instance" then
		for _, child in pairs(piano_gui:GetChildren()) do
			if child:IsA("ImageButton") then
				teclasParaButtons[child.Content.Key.Text:upper()] = child.Name
			end
		end
	end

	DisableMenu = function(p361)
		if p361 then
			LocalPlayer.PlayerGui.MenuGui.Open.Volume = 0
			LocalPlayer.PlayerGui.MenuGui.Close.Volume = 0
		else
			LocalPlayer.PlayerGui.MenuGui.Open.Volume = 0.3
			LocalPlayer.PlayerGui.MenuGui.Close.Volume = 0.3
		end
	end
	RecordingLogs = {}
	lastPressTime = nil
	PausedTime = 0
	task.spawn(function()
	end)
	TocarTecla = function(p362)
		if typeof(_G.PianoToy) == "Instance" then
			if _G.PianoToy:FindFirstChild(p362) and _G.RecordingKeys and not _G.PausedKeys then
				local now = tick()
				local n22 = 0

				if lastPressTime then
					n22 = now - lastPressTime
				end

				lastPressTime = now
				print(n22)
				table.insert(RecordingLogs, {
					key = p362,
					delay = n22
				})
				SNOWship(_G.PianoToy[p362])
			end
		end
	end
	ReproduzirTecla = function(p363)
		if typeof(_G.PianoToy) == "Instance" then
			if _G.PianoToy:FindFirstChild(p363) then
				SNOWship(_G.PianoToy[p363])
			end
		end
	end

	if typeof(piano_gui) == "Instance" then
		for _, child in pairs(piano_gui:GetChildren()) do
			if child:IsA("ImageButton") then
				teclasAssociadas[t56[child.Content.Key.Text:upper()]] = child.Name
				child.MouseButton1Click:Connect(function()
					TocarTecla(child.Name)
				end)
			end
		end

		local Record = piano_gui.PianoInteraction.Buttons.Record
		local Stop = piano_gui.PianoInteraction.Buttons.Stop
		local Save = piano_gui.PianoInteraction.Buttons.Save
		local Pause = piano_gui.PianoInteraction.Buttons.Pause
		local Status = piano_gui.PianoInteraction.Status
		local Text = piano_gui.PianoInteraction_2.Text

		Record.Visible = true
		Stop.Visible = false
		Pause.Visible = false
		Save.Visible = false
		Status.Text = ""
		Record.MouseButton1Click:Connect(function()
			Record.Visible = false
			Pause.Visible = true
			Stop.Visible = true
			_G.RecordingKeys = true
			_G.PausedKeys = false

			local v1427 = tick() - PausedTime

			if lastPressTime then
				lastPressTime += v1427
			end

			Status.Text = "Recording..."
		end)
		Pause.MouseButton1Click:Connect(function()
			Status.Text = "Paused"
			Pause.Visible = false
			Record.Visible = true
			_G.PausedKeys = true
			PausedTime = tick()
		end)
		Stop.MouseButton1Click:Connect(function()
			Stop.Visible = false
			Record.Visible = false
			Pause.Visible = false
			Save.Visible = true
			_G.RecordingKeys = false
			_G.PausedKeys = false
			PausedTime = 0
			lastPressTime = nil
			Status.Text = "Recorded!"
		end)
		Save.MouseButton1Click:Connect(function()
			Stop.Visible = false
			Record.Visible = true
			Pause.Visible = false
			Save.Visible = false
			Status.Text = "Saved!"
			writefile("FTAP_Notes/" .. piano_gui.PianoInteraction.File_Name.Text .. ".json", HttpService:JSONEncode(RecordingLogs))
			PausedTime = 0
			lastPressTime = nil
			_G.RecordingKeys = false
			_G.PausedKeys = false
			reloadnotes()
			table.clear(RecordingLogs)
		end)
		Text.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				local v1428 = Text.Text:upper()

				for i = 1, #v1428 do
					local v1430 = string.sub(v1428, i, i)

					if v1430 == "." then
						task.wait(0.1)
					else
						TocarTecla(teclasParaButtons[v1430:upper()])
					end
				end
			end
		end)
	end
end

UserInputService.InputBegan:Connect(function(input)
	if UserInputService:GetFocusedTextBox() then
		return
	end

	local v1431 = teclasAssociadas[input.KeyCode]

	if v1431 then
		TocarTecla(v1431)
	end
end)
PP_Section:AddButton({
	Name = "Add ✏ (RAMPAGE HUB 💀)",
	Callback = function()
		if pencilpenis and not pencilpenis.Parent then
			pencilpenis = nil
		end

		if pencilpenis then
			result:MakeNotification({
				Name = "Warning!",
				Content = "Pencil Penis is already setup!",
				Image = "rbxassetid://4483345998",
				Time = 2
			})

			return
		end

		for i = 0, 35 do
			for _, child in pairs(u112:GetChildren()) do
				if child.Name == "ToolPencil" and not pencilpenis then
					pencilpenis = child
				end
			end

			if pencilpenis then
				local v1435 = SFcQ(pencilpenis)

				if v1435 then
					if IsNetworkOwner(v1435) then
						SetStickyPart(pencilpenis, _G.UniversalPlayerHead.Parent:FindFirstChild("Torso"), CFrame.new(0, -0.65, 0) * CFrame.Angles(0, math.rad(180), math.rad(90)))
						task.spawn(function()
							while pencilpenis.Parent do
								if IsNetworkOwner(v1435) then
									SetStickyPart(pencilpenis, _G.UniversalPlayerHead.Parent:FindFirstChild("Torso"), CFrame.new(0, -0.65, 0) * CFrame.Angles(0, math.rad(180), math.rad(90)))
								elseif Getdistancefromcharacter(v1435.Position) < 30 then
									SNOWshipOnce(v1435)
								else
									DeleteToyRE:FireServer(pencilpenis)
								end

								task.wait(0.25)
							end

							pencilpenis = nil
						end)

						return
					end

					if Getdistancefromcharacter(v1435.Position) < 30 then
						SNOWshipOnce(v1435)
					else
						TeleportPlayer(CFrame.new(v1435.CFrame.Position + Vector3.new(0, 5, 0)))
					end
				end
			else
				local v1436 = GetPlayerCFrame()

				if v1436 then
					SpawnToy({
						"ToolPencil",
						v1436 * CFrame.new(0, 20, 20),
						(Vector3.new(0, 97.69000244140625, 0))
					}, true)
				end
			end

			task.wait(0.025)
		end
	end
})
Piano_Section:AddButton({
	Name = "Piano",
	Callback = function()
		if piano_gui.Enabled then
			piano_gui.Enabled = false
			DisableMenu(false)
		else
			DisableMenu(true)
			piano_gui.Enabled = true

			while not CheckPiano() and piano_gui.Enabled do
				task.wait(0.1)
			end
		end
	end
})
signodeDown_Thread = nil
files_Dropdown = Piano_Section:AddDropdown({
	Name = "Notes",
	Default = "",
	Options = { "" },
	Callback = function(p364)
		_G.NoteSelected = p364
	end
})
reloadnotes()

do
	Piano_Section:AddButton({
		Name = "Load",
		Callback = function()
			if signodeDown_Thread then
				task.cancel(signodeDown_Thread)
			end

			if isfile(_G.NoteSelected) then
				local data = HttpService:JSONDecode(readfile(_G.NoteSelected))

				signodeDown_Thread = task.spawn(function()
					repeat
						for _, v in ipairs(data) do
							task.wait(v.delay / _G.PianoLoadSpeed)
							ReproduzirTecla(v.key)
						end

						wait(2)
					until not _G.PlaybackLoop
				end)
			else
				signodeDown_Thread = task.spawn(function()
					local v1440 = PreMadeMusics[_G.NoteSelected]

					repeat
						for i = 1, #v1440 do
							local v1442 = string.sub(v1440, i, i)

							if v1442 == "." then
								task.wait(0.1 / _G.PianoLoadSpeed)
							else
								ReproduzirTecla(teclasParaButtons[v1442:upper()])
							end
						end

						wait(2)
					until not _G.PlaybackLoop
				end)
			end
		end
	})
end

Piano_Section:AddSlider({
	Name = "Speed",
	Min = 0.2,
	Max = 5,
	Default = 1,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 0.1,
	ValueName = "Interval",
	Callback = function(p365)
		_G.PianoLoadSpeed = p365
	end,
	Flag = "soundinterval"
})
Piano_Section:AddToggle({
	Name = "Loop",
	Default = false,
	Callback = function(p366)
		_G.PlaybackLoop = p366
	end,
	Flag = "PlayChatSound_toggle"
})
SilentAim_Section = Misc_Tab:AddSection({
	Name = "Silent-Aim"
})
SilentAimV3_Section = Misc_Tab:AddSection({
	Name = "Silent-Aim V3"
})
ChatSounds_Section = Misc_Tab:AddSection({
	Name = "Chat Sounds"
})

do
	ChatSounds_Section:AddDropdown({
		Name = "Select Sound",
		Default = "Chatting",
		Options = {
			"Chatting",
			"Uwu",
			"Ew",
			"Monkey",
			"Whistle",
			"Hahaha",
			"Lick",
			"Grrr",
			"Crying",
			"Yummy",
			"Chicken",
			"Daddy",
			"Mommy",
			"Aaaah",
			"Oooo",
			"Pizza",
			"One",
			"Two",
			"Three",
			"Four",
			"Five",
			"Hehe",
			"Pew",
			"Sing",
			"Yeehaw",
			"Hit",
			"Sick",
			"Oof",
			"Silence",
			"Ree",
			"Count"
		},
		Callback = function(p367)
			_G.SoundChatSelect = p367
		end,
		MultipleSelection = true,
		Save = true,
		Flag = "PlayChatSoundType_dropdown"
	})
end

do
	ChatSounds_Section:AddSlider({
		Name = "Sound Interval",
		Min = 2,
		Max = 5,
		Default = 0.1,
		Color = Color3.fromRGB(59, 122, 179),
		Increment = 0.1,
		ValueName = "Interval",
		Callback = function(p368)
			_G.SoundPlayInterval = p368
		end,
		Flag = "soundinterval"
	})
end

ChatSounds_Section:AddSlider({
	Name = "Internal Interval",
	Min = 0.1,
	Max = 1,
	Default = 0.1,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 0.1,
	ValueName = "Interval",
	Callback = function(p369)
		_G.SoundPlayInterval2 = p369
	end,
	Flag = "soundinterval2"
})

do
	ChatSounds_Section:AddToggle({
		Name = "Play Sound",
		Default = false,
		Callback = function(p370)
			_G.SpamSoundChat = p370

			if p370 then
				while _G.SpamSoundChat do
					for _, v in pairs(_G.SoundChatSelect) do
						if not _G.SpamSoundChat then
							break
						end

						task.spawn(function()
							TextChatService.TextChannels.RBXGeneral:SendAsync("/e " .. v)
						end)
						task.wait(_G.SoundPlayInterval2 or 1)
					end

					task.wait(2)
				end
			elseif typeof(SpamSoundRC) == "RBXScriptConnection" then
				SpamSoundChat:Disconnect()
				SpamSoundRC = nil
			end
		end,
		Flag = "PlayChatSound_toggle"
	})
end

oldgrablineeventparent = v117.Parent
GetClosest = function()
	local v1445
	local huge = math.huge

	for _, player in pairs(PS_:GetPlayers()) do
		if player.Name ~= v1024.Name and player.Character and v1024 and v1024.Character then
			if v1024.Character:FindFirstChild("HumanoidRootPart") then
				local HumanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")

				if HumanoidRootPart then
					local Position = v1024.Character.HumanoidRootPart.Position
					local _, v1452 = W.CurrentCamera:WorldToScreenPoint(HumanoidRootPart.Position)

					if v1452 then
						local magnitude = (Position - HumanoidRootPart.Position).magnitude

						if magnitude < huge then
							huge = magnitude
							v1445 = player
						end
					end
				end
			end
		end
	end

	return v1445
end
SilentAim_Section:AddToggle({
	Name = "Silent Aim V1 (Raycast)",
	Default = false,
	Callback = function(p371)
		_G.SilentAim = p371

		if not getgc then
			local SilentAim_toggle = result.Flags.SilentAim_toggle

			if SilentAim_toggle then
				SilentAim_toggle:Set(false)
			end
		end

		if p371 then
			if typeof(sv_conn) ~= "RBXScriptConnection" then
				sv_conn = R.Heartbeat:Connect(function()
					u1027 = GetClosest()
				end)
			end
		elseif typeof(sv_conn) == "RBXScriptConnection" and not (_G.SilentAimV2 or _G.SilentAim) then
			sv_conn:Disconnect()
			sv_conn = nil
			print("Todas conexões terminadas")
		end
	end,
	Save = true,
	Flag = "SilentAim_toggle"
})

do
	SilentAim_Section:AddToggle({
		Name = "Silent Aim V2 (All Executor and PC Only)",
		Default = false,
		Callback = function(p372)
			_G.SilentAimV2 = p372

			if p372 then
				if typeof(sv_conn) ~= "RBXScriptConnection" then
					sv_conn = R.Heartbeat:Connect(function()
						u1027 = GetClosest()
					end)
				end

				if typeof(sv_conn2) ~= "RBXScriptConnection" then
					sv_conn2 = R.Heartbeat:Connect(function()
						if u1027 and u1027 ~= LocalPlayer and _G.SilentAimV2 and not (_G.ActualFakeGrabParts or _G.RealGrabParts) then
							if _G.UniversalPlayerRoot and u1027 and u1027.Character and u1027.Character.HumanoidRootPart and u1027.Character.Humanoid and u1027.Character.Humanoid.Health > 0 and not u1027.InPlot.Value then
								local Magnitude = (_G.UniversalPlayerRoot.Position - u1027.Character.HumanoidRootPart.Position).Magnitude

								if updatedAimCrossScreen == 0 then
									EnableSilentAimButton(true)
								end

								updatedAimCrossScreen = 1

								if Magnitude <= u1026 then
									ActionEvent("GrabControls", true)
									ChangeCrosshairsFrame(UDim2.new(0, 21, 0, 21))
									module_upvr_2.GrayOutButton("Grab", false)
								end
							end
						elseif updatedAimCrossScreen == 1 then
							updatedAimCrossScreen = 0

							if not _G.ActualFakeGrabParts or _G.RealGrabParts then
								EnableSilentAimButton(false)
							end

							ActionEvent("GrabControls", false)
							ChangeCrosshairsFrame(UDim2.new(0, 11, 0, 11))
							module_upvr_2.GrayOutButton("Grab", true)
							module_upvr_2.ChangeColor("Grab")
						end
					end)
				end
			else
				if typeof(sv_conn2) == "RBXScriptConnection" then
					sv_conn2:Disconnect()
					sv_conn2 = nil
				end

				if typeof(sv_conn) == "RBXScriptConnection" and not (_G.SilentAimV2 or _G.SilentAim) then
					sv_conn:Disconnect()
					sv_conn = nil
					print("Todas conexões terminadas")
				end
			end
		end,
		Save = true,
		Flag = "SilentAimV2_toggle"
	})
end

FOVring = Drawing.new("Circle")
FOVring.Thickness = 1.5
FOVring.Radius = 100
FOVring.Transparency = 1
FOVring.Color = Color3.fromRGB(50, 255, 50)
FOVring.Position = W.CurrentCamera.ViewportSize / 2
FOVring.Visible = false
loopSV3 = nil
SilentAimV3_Section:AddToggle({
	Name = "Silent Aim V3",
	Default = false,
	Callback = function(p373)
		_G.SilentAimV3 = p373

		if p373 then
			local SilentAimV3_toggle = result.Flags.SilentAimV3_toggle

			if _G.UniversalPlayerHumanoid.Health <= 0 then
				if SilentAimV3_toggle then
					SilentAimV3_toggle:Set(false)
				end

				return
			end

			FOVring.Visible = true
			FOVring.Position = W.CurrentCamera.ViewportSize / 2
			UseFakeCam("sv3", true)
			CheckForPart = function(p374, p375)
				if p374:FindFirstChild(p375) then
					return true
				end

				return false
			end

			local players = PS:GetPlayers()

			PS.PlayerAdded:Connect(function(player)
				table.insert(players, player)
			end)
			PS.PlayerRemoving:Connect(function(player)
				for i = #players, 1, -1 do
					if players[i] == player then
						table.remove(players, i)

						break
					end
				end
			end)
			GetClosestV = function()
				local CFrame_ = W.CurrentCamera.CFrame
				local Unit = Ray.new(CFrame_.Position, CFrame_.LookVector).Unit
				local v1461
				local n23 = 30
				local targetPlayersSV3_ = #targetPlayersSV3 > 0 and targetPlayersSV3 or players

				for _, v in pairs(targetPlayersSV3_) do
					if v ~= v1024 and v.Character and CheckForPart(v.Character, "Torso") then
						local Torso = v.Character:FindFirstChild("Torso")
						local _, v1468 = W.CurrentCamera:WorldToViewportPoint(Torso.Position)

						if v1468 then
							local Magnitude = (Torso.Position - Unit:ClosestPoint(Torso.Position)).Magnitude

							if Magnitude < n23 then
								n23 = Magnitude
								v1461 = Torso
							end
						end
					end
				end

				return v1461
			end
			loopSV3 = R.Heartbeat:Connect(function()
				local v1470 = new_cam.ViewportSize / 2
				local v1471 = GetClosestV(new_cam.CFrame)

				if v1471 and not _G.RealGrabParts then
					local v1472 = new_cam:WorldToScreenPoint(v1471.Position)

					if (Vector2.new(v1472.X, v1472.Y) - v1470).Magnitude < FOVring.Radius then
						og_cam.CFrame = new_cam.CFrame:Lerp(CFrame.new(new_cam.CFrame.Position, v1471.Position), 1)
					end
				else
					og_cam.CFrame = new_cam.CFrame
				end
			end)
		else
			if loopSV3 then
				loopSV3:Disconnect()
				loopSV3 = nil
			end

			FOVring.Visible = false
			UseFakeCam("sv3", false)
		end
	end,
	Save = false,
	Flag = "SilentAimV3_toggle"
})
targetPlayersSV3 = {}

do
	SilentAimV3_Section:AddPlayersDropdown({
		Name = "Target Players",
		Default = "",
		SearchBar = true,
		MultipleSelection = true,
		Callback = function(p376)
			local t57 = {}

			for _, v in pairs(p376) do
				if typeof(v) == "string" then
					table.insert(t57, PS:FindFirstChild(v))
				end
			end

			for _, v in pairs(t57) do
				print(v, typeof(v))
			end

			targetPlayersSV3 = t57
		end
	})
end

do
	SilentAimV3_Section:AddSlider({
		Name = "Circle R",
		Min = 150,
		Max = 500,
		Default = 200,
		Color = Color3.fromRGB(59, 122, 179),
		Increment = 1,
		ValueName = "Radius",
		Callback = function(p377)
			S_V3circleRadius = p377
			FOVring.Radius = p377
		end,
		Flag = "sv3R_slider"
	})
end

do
	SilentAimV3_Section:AddSlider({
		Name = "Circle T",
		Min = 0,
		Max = 1,
		Default = 1,
		Color = Color3.fromRGB(59, 122, 179),
		Increment = 0.1,
		ValueName = "Transparency",
		Callback = function(p378)
			FOVring.Transparency = p378
		end,
		Flag = "sv3T_slider"
	})
end

executeGrabCAS = function()
	if _G.ActualFakeGrabParts then
		_G.ActualFakeGrabParts:Destroy()

		return
	end

	if u1027 and u1027 ~= LocalPlayer and u1027.Character and not verifyDev(u1027) and u1027.Character.HumanoidRootPart and _G.SilentAimV2 and not u1027.InPlot.Value then
		local magnitude = (v1024.Character.HumanoidRootPart.Position - u1027.Character.HumanoidRootPart.Position).magnitude

		u1028 = math.random(1, #getgenv().Settings.Hitbox)
		u1029 = getgenv().Settings.Hitbox[u1028]
		u1030 = u1027.Character[u1029]

		if magnitude <= u1026 and u1030 then
			GrabPartFake(u1030, u1027)
		end
	end
end
EnableSilentAimButton = function(p379)
	if RealGrabMobileButton and FakeGrabMobileButton then
		if p379 then
			FakeGrabMobileButton.Visible = true
			RealGrabMobileButton.Visible = false
		else
			FakeGrabMobileButton.Visible = false
			RealGrabMobileButton.Visible = true
		end
	end
end
RealGrabMobileButton = nil
FakeGrabMobileButton = nil

do
	if CAG then
		MakeSilentAimv2connections = function()
			for _, descendant in pairs(CAG:GetDescendants()) do
				if descendant:IsA("ImageButton") then
					local ActionIcon = descendant:WaitForChild("ActionIcon", 1)

					if ActionIcon then
						if ActionIcon:IsA("ImageLabel") and not ActionIcon:GetAttribute("SilentAimV2Connection") then
							if ActionIcon.Image == "rbxassetid://9603669631" then
								ActionIcon:SetAttribute("SilentAimV2Connection", true)
								RealGrabMobileButton = descendant
								module_upvr_2.Buttons.RealGrab = descendant

								if not FakeGrabMobileButton then
									FakeGrabMobileButton = descendant:Clone()
									FakeGrabMobileButton.Parent = CAG.ContextButtonFrame
									FakeGrabMobileButton.Visible = false
									module_upvr_2.Buttons.Grab = FakeGrabMobileButton
									FakeGrabMobileButton.MouseButton1Down:Connect(function()
										executeGrabCAS()
									end)
								end
							end

							if ActionIcon.Image == "rbxassetid://9603830181" and not ActionIcon:GetAttribute("SilentAimV2Connection") then
								ActionIcon:SetAttribute("SilentAimV2Connection", true)
								descendant.MouseButton1Down:Connect(function()
									rotatefunction()
								end)
							end

							if ActionIcon.Image == "http://www.roblox.com/asset/?id=9603678090" and not ActionIcon:GetAttribute("SilentAimV2Connection") then
								ActionIcon:SetAttribute("SilentAimV2Connection", true)
								descendant.MouseButton1Down:Connect(function()
									throwfunction()
								end)
							end

							if ActionIcon.Image == "rbxassetid://9603831913" and not ActionIcon:GetAttribute("SilentAimV2Connection") then
								ActionIcon:SetAttribute("SilentAimV2Connection", true)
								descendant.MouseButton1Down:Connect(function()
									zoomoutfunction()
								end)
								descendant.InputEnded:Connect(function(input, gameProcessed)
									if not gameProcessed then
										if UserInputService.TouchEnabled and input.UserInputType == Enum.UserInputType.Touch then
											_G.ZoomingOut = false
										end
									end
								end)
							end

							if ActionIcon.Image == "rbxassetid://9603826756" and not ActionIcon:GetAttribute("SilentAimV2Connection") then
								ActionIcon:SetAttribute("SilentAimV2Connection", true)
								descendant.MouseButton1Down:Connect(function()
									zoominfunction()
								end)
								descendant.InputEnded:Connect(function(input, gameProcessed)
									if not gameProcessed and UserInputService.TouchEnabled and input.UserInputType == Enum.UserInputType.Touch then
										_G.ZoomingIn = false
									end
								end)
							end
						end
					end
				end
			end
		end
		CAG.DescendantAdded:Connect(function()
			MakeSilentAimv2connections()
		end)
		MakeSilentAimv2connections()
	end
end

UserInputService.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		executeGrabCAS()
	end
end)
SilentAim_Section:AddSlider({
	Name = "Silent-Aim Range",
	Min = 20,
	Max = 45,
	Default = 30,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 1,
	ValueName = "",
	Callback = function(p380)
		u1026 = p380
	end,
	Save = true,
	Flag = "silentaimrange_slider"
})
GrabPartsModel = RF.GrabParts
_G.ActualFakeGrabParts = nil
FurtherReach_Section = PlayerLine_Tab:AddSection({
	Name = "Further Reach"
})
FurtherReachRS_C1 = nil
FurtherReachRS_C2 = nil
FurtherReachRS_C3 = nil
hookinstances_t = {
	RS.MenuToys.LimitedTimeToyEvent,
	RS.GamepassEvents.FurtherReachBoughtNotifier
}

do
	furthergamepass = function(p381)
		if p381 then
			hookinstances_t[1].Name = "FurtherReachBoughtNotifier"
			hookinstances_t[1].Parent = RS.GamepassEvents
			hookinstances_t[2].Name = "LimitedTimeToyEvent"
			hookinstances_t[2].Parent = RS.MenuToys
			hookinstances_t[1]:FireServer()
		else
			hookinstances_t[1].Name = "LimitedTimeToyEvent"
			hookinstances_t[1].Parent = RS.MenuToys
			hookinstances_t[2].Name = "FurtherReachBoughtNotifier"
			hookinstances_t[2].Parent = RS.GamepassEvents
		end
	end
end

FurtherReach_Section:AddToggle({
	Name = "Further Reach",
	Default = false,
	Callback = function(p382)
		if not _G.FurtherReachData then
			_G.FurtherReachData = {}
		end

		if not _G.FurtherReachData.initialized then
			_G.FurtherReachData.initialized = true
			_G.FurtherReachData.Players = game:GetService("Players")
			_G.FurtherReachData.ReplicatedStorage = game:GetService("ReplicatedStorage")
			_G.FurtherReachData.LocalPlayer = _G.FurtherReachData.Players.LocalPlayer
			_G.FurtherReachData.ReachEvent = _G.FurtherReachData.ReplicatedStorage.GamepassEvents.FurtherReachBoughtNotifier
			_G.FurtherReachData.TriggerEvent = _G.FurtherReachData.ReplicatedStorage.MenuToys.LimitedTimeToyEvent
			_G.FurtherReachData.Enabled = false
			_G.FurtherReachData.RespawnConnection = nil
			_G.FurtherReachData.ReloadGrab = function()
				local Character = _G.FurtherReachData.LocalPlayer.Character

				if not Character then
					return
				end

				local GrabbingScript = Character:FindFirstChild("GrabbingScript")

				if GrabbingScript then
					GrabbingScript.Enabled = false
					GrabbingScript.Enabled = true
				end
			end
			_G.FurtherReachData.Enable = function()
				if _G.FurtherReachData.Enabled then
					return
				end

				_G.FurtherReachData.Enabled = true

				if _G.FurtherReachData.LocalPlayer:FindFirstChild("FartherReach") then
					_G.FurtherReachData.LocalPlayer.FartherReach:Destroy()
				end

				local BoolValue = Instance.new("BoolValue")

				BoolValue.Name = "FartherReach"
				BoolValue.Value = true
				BoolValue.Parent = _G.FurtherReachData.LocalPlayer
				furthergamepass(true)
				_G.FurtherReachData.ReloadGrab()
				task.delay(0.1, function()
					furthergamepass(true)
				end)

				local GrabbingScript = _G.FurtherReachData.LocalPlayer.Character and _G.FurtherReachData.LocalPlayer.Character:FindFirstChild("GrabbingScript") or _G.FurtherReachData.LocalPlayer.Character:WaitForChild("GrabbingScript", 1)

				if GrabbingScript then
					_G.FurtherReachData.ReloadConnection = GrabbingScript:GetPropertyChangedSignal("Enabled"):Connect(function()
						if GrabbingScript.Enabled then
							task.delay(0.1, function()
								furthergamepass(true)
							end)
						end
					end)
				end

				_G.FurtherReachData.RespawnConnection = _G.FurtherReachData.LocalPlayer.CharacterAdded:Once(function()
					task.wait(0.1)
					_G.FurtherReachData.Enabled = false
					_G.FurtherReachData.Enable()
				end)
			end
			_G.FurtherReachData.Disable = function()
				if not _G.FurtherReachData.Enabled then
					return
				end

				_G.FurtherReachData.Enabled = false

				if _G.FurtherReachData.LocalPlayer:FindFirstChild("FartherReach") then
					_G.FurtherReachData.LocalPlayer.FartherReach:Destroy()
				end

				furthergamepass(false)
				_G.FurtherReachData.ReloadGrab()

				if _G.FurtherReachData.ReloadConnection then
					_G.FurtherReachData.ReloadConnection:Disconnect()
					_G.FurtherReachData.ReloadConnection = nil
				end

				if _G.FurtherReachData.RespawnConnection then
					_G.FurtherReachData.RespawnConnection:Disconnect()
					_G.FurtherReachData.RespawnConnection = nil
				end
			end
		end

		if p382 then
			_G.FurtherReachData.Enable()
		else
			_G.FurtherReachData.Disable()
		end
	end,
	Save = true,
	Flag = "FurtherReach_toggle"
})
FurtherLineExtend_Section = PlayerLine_Tab:AddSection({
	Name = "Line Extender"
})
FLEConns_C1 = nil
FLEConns_C2 = nil
FurtherLineExtend_Section:AddToggle({
	Name = "Further Extend",
	Default = false,
	Callback = function(p383)
		_G.FutherExtend = p383

		if p383 then
			_G.distance = _G.distance or 20

			local huge = math.huge

			FLEConns_C1 = UserInputService.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseWheel then
					if input.Position.Z < 0 then
						_G.distance = math.max(math.ceil(_G.distance + input.Position.Z * (_G.FutherExtend and IncreaseLineExtend) or 2), 3)
					end

					if input.Position.Z > 0 then
						_G.distance = math.min(math.floor(_G.distance + input.Position.Z * (_G.FutherExtend and IncreaseLineExtend) or 2), huge)
					end
				end
			end)
			FLEConns_C2 = W.ChildAdded:Connect(function(child)
				if child.Name == "GrabParts" and child:IsA("Model") and not IsHoldingAdminPlayer() then
					if _G.FutherExtend and UserInputService.MouseEnabled and not IsMobile() then
						local v1487 = child
						local DragPart = v1487:WaitForChild("DragPart", 5)
						local GrabPart = v1487:WaitForChild("GrabPart", 5)

						if DragPart and GrabPart then
							_G.distance = (GrabPart.Position - workspace.CurrentCamera.CFrame.Position).Magnitude

							local connection

							connection = R.RenderStepped:Connect(function()
								if not v1487.Parent or not _G.FutherExtend then
									connection:Disconnect()
									connection = nil
									gbsttae = false

									return
								end

								if _G.distance < 3 then
									_G.distance = 3
								end

								DragPart.Position = workspace.CurrentCamera.CFrame.LookVector * _G.distance + workspace.CurrentCamera.CFrame.Position
							end)
						end
					end

					if _G.FutherExtend and IsMobile() then
						toggleDefaultExtendButtons(false)
						toggleButtonState(true)
					end
				end
			end)
		else
			if typeof(FLEConns_C1) == "RBXScriptConnection" then
				FLEConns_C1:Disconnect()
				FLEConns_C1 = nil
			end

			if typeof(FLEConns_C2) == "RBXScriptConnection" then
				FLEConns_C2:Disconnect()
				FLEConns_C2 = nil
			end
		end
	end,
	Save = true,
	Flag = "FurtherLineExtend_toggle"
})
MaxExtendLine = 0
MinExtendLine = 0

if UserInputService.TouchEnabled then
	MinExtendLine = 3
	MaxExtendLine = 25
elseif UserInputService.MouseEnabled then
	MinExtendLine = 3
	MaxExtendLine = 25
end

do
	FurtherLineExtend_Section:AddSlider({
		Name = "Increase Extend",
		Min = MinExtendLine,
		Max = MaxExtendLine,
		Default = 3,
		Color = Color3.fromRGB(59, 122, 179),
		Increment = 1,
		ValueName = "Ammount",
		Callback = function(p384)
			IncreaseLineExtend = p384
		end,
		Save = true,
		Flag = "FurtherLineExtend_slider"
	})
end

Auras_Section = Auras_Tab:AddSection({
	Name = "Normal Auras"
})
FlingAura_Section = Auras_Tab:AddSection({
	Name = "Fling Aura"
})
AAKA_Section = Auras_Tab:AddSection({
	Name = "Anti Anti-Kick Aura"
})
BangAura_Section = Auras_Tab:AddSection({
	Name = "Bang Aura"
})
MechAuraSection = Auras_Tab:AddSection({
	Name = "Mech"
})
WingsAuraSection = Auras_Tab:AddSection({
	Name = "Wings"
})
AnchorAura_Section = Auras_Tab:AddSection({
	Name = "Anchor Aura"
})
KickAura_Section = Auras_Tab:AddSection({
	Name = "Kick Aura" .. premium_text
})
RotationAuraSection = Auras_Tab:AddSection({
	Name = "Telekinesis Aura"
})
AurasWhiteList_Section = Auras_Tab:AddSection({
	Name = "Auras Whitelist"
})

do
	blobmanVerification = function()
		local Character = LocalPlayer.Character
		local Humanoid

		if Character then
			Humanoid = Character:FindFirstChildOfClass("Humanoid")
		end

		if not CheckBlobman(BlobmanV2) then
			return true
		end

		if not Character or not Humanoid or not Humanoid.Sit or Humanoid.SeatPart == nil or tostring(Humanoid.SeatPart.Parent) ~= "CreatureBlobman" then
			return false
		end

		_G.LastBlobmanWasSeat = Humanoid.SeatPart.Parent

		if CheckBlobman(_G.LastBlobmanWasSeat) then
			return true
		end

		_G.LastBlobmanWasSeat = nil
	end
end

IsPlayerInLoopList = function(p385)
	local v1493 = false

	PS:FindFirstChild(p385)

	if blobmanVerification() and _G.LoopKick then
		for _, v in pairs(t11) do
			if p385 == v then
				v1493 = true
			end
		end
	end

	return v1493
end

do
	CheckPlayer = function(p386)
		if typeof(p386) == "Instance" and p386 ~= LocalPlayer and not verifyDev(p386) and p386.Character then
			if p386.Character:FindFirstChild("HumanoidRootPart") then
				if p386.Character:FindFirstChildOfClass("Humanoid") and p386.Character.Humanoid.Health > 0 then
					return true
				end
			end
		end
	end
end

do
	CheckPlayerWF = function(p387, p388, p389, p390)
		if not CheckPlayer(p387) or CheckFriendsWithCondition(p387.Name, p388) then
			return
		end

		if p389 and IsPlayerInsideSafeZone(p387) then
			return false
		end

		if p390 and p387.Character.HumanoidRootPart.AssemblyLinearVelocity.Magnitude > 500 then
			return false
		end

		return true
	end
end

CheckPlayerForLoop = function(p391, p392, p393)
	if p393 == nil then
		p393 = true
	end

	if CheckPlayerWF(p391, false, p393, true) and p392 then
		return true
	end
end

do
	CheckPlayerAuras = function(p394)
		if CheckPlayerWF(p394, _G.WhitelistFriends) and not IsPlayerInLoopList(p394.Name) then
			if not (p394.Character:GetAttribute("Kicking") or _G.KickAura) then
				return true
			end
		end
	end
end

do
	CheckPlayerAurasKick = function(p395)
		if CheckPlayerWF(p395, _G.WhitelistFriends) and not IsPlayerInLoopList(p395.Name) then
			if not p395.Character:GetAttribute("Kicking") then
				return true
			end
		end
	end
end

CreateSkyVelocity = function(p396)
	if not p396:FindFirstChild("SkyVelocity") then
		local BodyVelocity = Instance.new("BodyVelocity", p396)

		BodyVelocity.Name = "SkyVelocity"
		BodyVelocity.Velocity = Vector3.new(0, 1e14, 0)
		BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	end
end
CreateBringBody = function(p397, p398)
	if p397:FindFirstChild("BringBody") then
		p397:FindFirstChild("BringBody").Position = p398.Position
	else
		local BodyPosition = Instance.new("BodyPosition", p397)

		BodyPosition.Name = "BringBody"
		BodyPosition.Position = p398.Position
		BodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		BodyPosition.D = 5000
		BodyPosition.P = 1500000
	end
end

local t58 = {
	Sit = false,
	Death = false,
	Burn = false
}

do
	local u1499

	StartAuraLoop = function()
		if u1499 then
			return
		end

		u1499 = true

		while t58.Sit or t58.Death or t58.Burn or t58.Attraction or t58.Bang or t58.KickO or t58.KickB do
			for _, player in ipairs(PS:GetPlayers()) do
				if CheckPlayerAuras(player) then
					local Character = player.Character

					if Character then
						if t58.Sit then
							Character:FindFirstChild("Head")
							SNOWshipPlayer(player)
						end

						if t58.Death then
							local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
							local Humanoid = Character:FindFirstChildOfClass("Humanoid")
							local v1505 = SNOWshipPlayer(player)

							if HumanoidRootPart and Humanoid and v1505 then
								if IsNetworkOwner(HumanoidRootPart) and CheckNetworkOwnerShipOnPlayer(player) then
									SetCollisionObjectOff(Character)
									W.FallenPartsDestroyHeight = -50000
									HumanoidRootPart.CFrame = CFrame.new(0, -49900, 0)
									task.wait(0.1)
									HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, -1000000, 0)
								end
							end
						end

						if t58.Burn then
							local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

							if HumanoidRootPart and LocalPlayer:DistanceFromCharacter(HumanoidRootPart.Position) < 30 then
								Burn(HumanoidRootPart)
							end
						end

						if t58.Attraction then
							local Humanoid = Character:FindFirstChildOfClass("Humanoid")
							local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

							if Humanoid and HumanoidRootPart then
								SNOWship(HumanoidRootPart)
								Humanoid.Sit = false
								Humanoid.WalkSpeed = 25
								Humanoid:MoveTo(_G.UniversalPlayerRoot.Position)
							end
						end

						if t58.Bang then
							local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
							local v1510 = SNOWshipPlayer(player)

							if BangPartAtt and BangAura_BoolValue and HumanoidRootPart and v1510 then
								MakeBangConnection(Character, HumanoidRootPart, player, BangPartAtt, BangAura_BoolValue)
							end
						end

						if t58.KickO then
							local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
							local v1512 = SNOWshipPlayer(player)

							if HumanoidRootPart and v1512 then
								CreateSkyVelocity(HumanoidRootPart)
								v118:FireServer(HumanoidRootPart)
							end
						end

						if t58.KickB then
							local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
							local Head = Character:FindFirstChild("Head")

							if HumanoidRootPart and Head then
								local v1515, v1516 = GetBlobmanFunctions()

								if v1515 then
									local LeftDetector = v1515:FindFirstChild("LeftDetector")
									local HumanoidRootPart2 = v1515:FindFirstChild("HumanoidRootPart")
									local v1519 = LocalPlayer:DistanceFromCharacter(HumanoidRootPart.Position)

									LeftDetector:FindFirstChild("LeftWeld").Enabled = false

									if v1519 < 35 and LeftDetector and HumanoidRootPart2 then
										task.spawn(function()
											if Head:FindFirstChild("PartOwner") and Head:FindFirstChild("PartOwner").Value == LocalPlayer.Name then
												HumanoidRootPart.AssemblyLinearVelocity = Vector3.new()
												v118:FireServer(HumanoidRootPart)
												v1516:FireServer(LeftDetector, HumanoidRootPart, LeftDetector:FindFirstChild("LeftWeld"))
												task.wait()
												v1516:FireServer(LeftDetector, _G.UniversalPlayerRoot, LeftDetector:FindFirstChild("LeftWeld"))
											else
												v119:FireServer(HumanoidRootPart, HumanoidRootPart.CFrame)
											end
										end)
									end
								else
									SitOnBlobman(true)
								end
							end
						end

						task.wait(0.005)
					end
				end
			end

			task.wait(0.1)
		end

		u1499 = nil
	end
end

Auras_Section:AddToggle({
	Name = "Sit Aura",
	Default = false,
	Callback = function(p399)
		t58.Sit = p399

		if p399 then
			StartAuraLoop()
		end
	end,
	Save = true,
	Flag = "sitaura_toggle"
})

do
	Auras_Section:AddToggle({
		Name = "Death Aura",
		Default = false,
		Callback = function(p400)
			t58.Death = p400

			if p400 then
				StartAuraLoop()
			end
		end,
		Save = true,
		Flag = "deathaura_toggle"
	})
end

do
	Auras_Section:AddToggle({
		Name = "Burn Aura",
		Default = false,
		Callback = function(p401)
			t58.Burn = p401

			if p401 then
				StartAuraLoop()
			end
		end,
		Save = true,
		Flag = "burnaura_toggle"
	})
end

Auras_Section:AddToggle({
	Name = "Attraction Aura",
	Default = false,
	Callback = function(p402)
		t58.Attraction = p402

		if p402 then
			StartAuraLoop()
		end
	end,
	Save = true,
	Flag = "attaura_toggle"
})
FlingAura_Section:AddToggle({
	Name = "Fling Aura",
	Default = false,
	Callback = function(p403)
		_G.FlingAura = p403

		if p403 then
			while _G.FlingAura do
				local partBoundsInRadius = W:GetPartBoundsInRadius(_G.UniversalPlayerRoot.Position, 30, COAroundPParams)

				if partBoundsInRadius then
					for _, partBoundsInRadiu in ipairs(partBoundsInRadius) do
						if CheckForGPB(partBoundsInRadiu, _G.FlingAFilter) then
							local Parent = partBoundsInRadiu.Parent
							local Head = SFcQ(Parent)

							if Head then
								local playerFromCharacter = Head.Parent and Head.Parent:IsA("Model") and PS:GetPlayerFromCharacter(Head.Parent)

								if (not playerFromCharacter or _G.FlingTarget ~= 2) and (playerFromCharacter or _G.FlingTarget ~= 1) then
									if playerFromCharacter then
										Head = Parent:FindFirstChild("Head")
									end

									if SNOWshipOnce(Head) then
										FlingAuraVelocity = Head:FindFirstChild("FlingAuraVelocity")

										if not FlingAuraVelocity then
											local v1526 = lookAt(_G.UniversalPlayerRoot.Position, Head.Position)
											local BodyVelocity = Instance.new("BodyVelocity", Head)

											BodyVelocity.Name = "FlingAuraVelocity"
											BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
											BodyVelocity.Velocity = Vector3.new(v1526.lookVector.X, 0.5, v1526.lookVector.Z) * math.clamp(_G.FlingStrength, 400, 600)
											DB:AddItem(BodyVelocity)
										end
									end
								end
							end
						end
					end
				end

				task.wait(0.025)
			end
		end
	end,
	Save = true,
	Flag = "flingaura_toggle"
})

do
	FlingAura_Section:AddSlider({
		Name = "Strength",
		Min = 400,
		Max = 10000,
		Default = 400,
		Color = Color3.fromRGB(59, 122, 179),
		Increment = 100,
		ValueName = "",
		Callback = function(p404)
			_G.FlingStrength = p404
		end,
		Save = true,
		Flag = "flingstrengthvalue_toggle"
	})
end

do
	FlingAura_Section:AddDropdown({
		Name = "Toys Filter",
		Default = "All Toys",
		Options = {
			"My Toys",
			"Players Toys",
			"Map Toys",
			"All Toys"
		},
		Callback = function(p405)
			if p405 == "My Toys" then
				_G.FlingAFilter = 1
			elseif p405 == "Players Toys" then
				_G.FlingAFilter = 2
			elseif p405 == "Map Toys" then
				_G.FlingAFilter = 3
			elseif p405 == "All Toys" then
				_G.FlingAFilter = 4
			end
		end,
		Save = true,
		Flag = "FlingAFilter_dropdown"
	})
end

FlingAura_Section:AddDropdown({
	Name = "Target",
	Default = "Players",
	Options = {
		"Players",
		"Objects",
		"Players and Objects"
	},
	Callback = function(p406)
		if p406 == "Players" then
			_G.FlingTarget = 1
		elseif p406 == "Objects" then
			_G.FlingTarget = 2
		elseif p406 == "Players and Objects" then
			_G.FlingTarget = 3
		end
	end,
	Save = true,
	Flag = "flingtarget_dropdown"
})
AAKAToys = {
	NinjaKatana = "StickyPart",
	NinjaKunai = "StickyPart",
	NinjaShuriken = "StickyPart",
	ToolCleaver = "StickyPart",
	ToolDiggingForkRusty = "StickyPart",
	ToolPencil = "SoundPart",
	ToolPickaxe = "StickyPart"
}

do
	AAKA_Section:AddToggle({
		Name = "Anti-Sticky Aura",
		Default = false,
		Callback = function(p407)
			_G.AAKA = p407

			if p407 then
				local t59 = {}
				local n24 = 0

				local function v1530(p408)
					if AAKAToys[p408.Name] and not table.find(t59, p408) then
						table.insert(t59, p408)
					end
				end
				local function v1531(p409, p410)
					local v1532 = p409:FindFirstChild(AAKAToys[p409.Name])

					if not v1532 or not v1532:IsA("BasePart") then
						return
					end

					if (p410.Position - v1532.Position).Magnitude > 30 then
						return
					end

					local PlayerValue = p409:FindFirstChild("PlayerValue")

					if not PlayerValue or not PlayerValue.Value then
						return
					end

					local v1534 = tostring(PlayerValue.Value)

					if CheckFriendsWithCondition(v1534, _G.WhitelistFriends) or v1534 == LocalPlayer.Name then
						return
					end

					if not p409:FindFirstChild("StickyPart") then
						return
					end

					local v1535 = CheckIfKunaiIsOnPlayer(p409)
					local now = os.clock()

					if IsNetworkOwner(v1532) then
						if v1535 == "No use!" then
							local v1537 = v1532.Position - p410.Position
							local Unit

							if v1537.Magnitude > 0.1 then
								Unit = v1537.Unit
							else
								Unit = Vector3.new(0, 1, 0)
							end

							v1532.AssemblyLinearVelocity = (Unit + Vector3.new(0, 0.35, 0)).Unit * 400
							v1532.AssemblyAngularVelocity = Vector3.new(100, 100, 100)
						end
					elseif now - n24 > 1 then
						n24 = now
						v119:FireServer(v1532, lookAt(_G.UniversalPlayerRoot.Position, v1532.Position))
					end
				end

				ConnectPlayersTF("AAKA", "Add", v1530)
				task.spawn(function()
					while _G.AAKA do
						local Character = LocalPlayer.Character
						local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

						if HumanoidRootPart then
							for i = #t59, 1, -1 do
								local v1542 = t59[i]

								if v1542.Parent then
									v1531(v1542, HumanoidRootPart)
								else
									table.remove(t59, i)
								end
							end
						end

						task.wait(0.1)
					end
				end)
			else
				ConnectPlayersTF("AAKA")
			end
		end,
		Save = true,
		Flag = "aaka_aura_toggle"
	})
end

do
	SetAAKA = function(p411)
		if result.Flags.aaka_aura_toggle then
			result.Flags.aaka_aura_toggle:Set(p411)
		end
	end
end

unAnchorAll = function()
	for _, v in pairs(AnchoredObjects) do
		if typeof(v.PartAnchored) == "Instance" then
			unAnchorObject(v.PartAnchored)
		end
	end
end
GPB_BLToys = {
	CreatureBlobman = true,
	NinjaKunai = true,
	NinjaShuriken = true,
	FoodMayonnaise = true,
	TractorGreen = true
}
CheckForGPB = function(p412, p413)
	local v1545 = tonumber(p413) or 3
	local Parent = p412.Parent

	if typeof(Parent) == "Instance" and Parent:IsA("Model") then
		local Parent2 = Parent.Parent
		local PlayerValue = Parent:FindFirstChild("PlayerValue")

		if PlayerValue then
			if v1545 == 1 and PlayerValue.Value == LocalPlayer and not GPB_BLToys[Parent.Name] then
				return true
			end

			if v1545 == 2 then
				if PlayerValue.Value ~= LocalPlayer then
					return true
				end
			end

			if v1545 == 4 then
				return true
			end
		elseif (v1545 == 3 or v1545 == 4) and Parent2 then
			if not Parent2.Name:find("SpawnedInToys") then
				if not Parent2.Name:find("Plot") then
					return true
				end
			end
		end
	end
end

do
	AnchorAura_Section:AddToggle({
		Name = "Anchor Aura",
		Default = false,
		Callback = function(p414)
			_G.AnchorAura = p414

			if p414 then
				while _G.AnchorAura do
					local partBoundsInRadius = W:GetPartBoundsInRadius(_G.UniversalPlayerRoot.Position, 30, COAroundPParams)

					if partBoundsInRadius then
						for _, partBoundsInRadiu in ipairs(partBoundsInRadius) do
							if CheckForGPB(partBoundsInRadiu, _G.AnchorAFilter) then
								local Parent = partBoundsInRadiu.Parent

								if not Parent:GetAttribute("IsAnchored") then
									local Head = SFcQ(Parent)

									if Head then
										local playerFromCharacter = Head.Parent and Head.Parent:IsA("Model") and PS:GetPlayerFromCharacter(Head.Parent)

										if (not playerFromCharacter or _G.AnchorTarget ~= 2) and (playerFromCharacter or _G.AnchorTarget ~= 1) then
											if playerFromCharacter then
												Head = Parent:FindFirstChild("Head")
											end

											if SNOWshipOnce(Head) then
												setanchorObject(Head)
											end
										end
									end
								end
							end
						end
					end

					task.wait(0.025)
				end
			end
		end,
		Save = true,
		Flag = "anchoraura_toggle"
	})
end

do
	AnchorAura_Section:AddDropdown({
		Name = "Toys Filter",
		Default = "All Toys",
		Options = {
			"My Toys",
			"Players Toys",
			"Map Toys",
			"All Toys"
		},
		Callback = function(p415)
			if p415 == "My Toys" then
				_G.AnchorAFilter = 1
			elseif p415 == "Players Toys" then
				_G.AnchorAFilter = 2
			elseif p415 == "Map Toys" then
				_G.AnchorAFilter = 3
			elseif p415 == "All Toys" then
				_G.AnchorAFilter = 4
			end
		end,
		Save = true,
		Flag = "anchorAfilter_dropdown"
	})
end

AnchorAura_Section:AddDropdown({
	Name = "Target",
	Default = "Players",
	Options = {
		"Players",
		"Objects",
		"Players and Objects"
	},
	Callback = function(p416)
		if p416 == "Players" then
			_G.AnchorTarget = 1
		elseif p416 == "Objects" then
			_G.AnchorTarget = 2
		elseif p416 == "Players and Objects" then
			_G.AnchorTarget = 3
		end
	end,
	Save = true,
	Flag = "anchortarget_dropdown"
})
AnchorAura_Section:AddButton({
	Name = "Unanchor All",
	Callback = function()
		unAnchorAll()
	end
})
GroupCollisionData = {}
SetCollisionObjectOff = function(p417)
	if not p417:IsA("Model") or p417:GetAttribute("ObjectCollisions") then
		return
	end

	local function v1555(p418)
		local t60 = {}

		for _, descendant in ipairs(p418:GetDescendants()) do
			if descendant:IsA("BasePart") then
				table.insert(t60, descendant)
			end
		end

		return t60
	end

	p417:SetAttribute("ObjectCollisions", true)

	local t61 = {}
	local t62 = {}
	local v1561 = v1555(p417)

	local function v1562(p419)
		if t61[p419] ~= nil then
			return
		end

		t61[p419] = p419.CanCollide
		p419.CanCollide = false

		local connection = p419:GetPropertyChangedSignal("CanCollide"):Connect(function()
			if p419.CanCollide then
				p419.CanCollide = false
			end
		end)

		table.insert(t62, connection)
	end

	for _, v in ipairs(v1561) do
		v1562(v)
	end

	table.insert(t62, p417.DescendantAdded:Connect(function(descendant)
		if descendant:IsA("BasePart") then
			v1562(descendant)
		end
	end))
	table.insert(GroupCollisionData, {
		Model = p417,
		OldValues = t61,
		Connections = t62
	})

	local connection

	connection = p417.Destroying:Connect(function()
		for _, v in ipairs(t62) do
			v:Disconnect()
		end

		for i, v in ipairs(GroupCollisionData) do
			if v.Model == p417 then
				table.remove(GroupCollisionData, i)
			end
		end

		connection:Disconnect()
	end)
	table.insert(t62, connection)
end
SetCollisionObjectOn = function(p420)
	if not p420:IsA("Model") or not p420:GetAttribute("ObjectCollisions") then
		return
	end

	for i, v in ipairs(GroupCollisionData) do
		if v.Model == p420 then
			for _, connection in ipairs(v.Connections) do
				connection:Disconnect()
			end

			for k, oldValue in pairs(v.OldValues) do
				if k and k.Parent then
					k.CanCollide = oldValue
				end
			end

			p420:SetAttribute("ObjectCollisions", false)
			table.remove(GroupCollisionData, i)

			return
		end
	end
end
TornadoManager = {}
TornadoManager.GlobalTheta = 0
TornadoManager.Active = {}
TornadoManager.Order = {}
TornadoManager.Count = 0

do
	local t63 = {}
	local t64 = {}
	local raycastParams = RaycastParams.new()

	raycastParams.FilterType = Enum.RaycastFilterType.Exclude
	SafeRemove = function(p421, p422)
		local v1580 = table.find(p421, p422)

		if v1580 then
			table.remove(p421, v1580)
		end
	end
	TornadoManager.RebalanceOffsets = function(p423)
		local count = #p423.Order

		p423.Count = count

		if count == 0 then
			return
		end

		for i, v in ipairs(p423.Order) do
			local v1584 = p423.Active[v]

			v1584.Index = i
			v1584.TargetOffset = i / count * 6.2831853071795862
		end
	end
	TornadoManager.Add = function(p424, p425, p426)
		if p424.Active[p425] then
			return
		end

		if not p425 or not p426 then
			return
		end

		p425:SetAttribute("TornadoSetup", true)
		table.insert(t63, p425)

		local Attachment = Instance.new("Attachment", p426)
		local AlignPosition = Instance.new("AlignPosition")

		AlignPosition.Name = "TornadoAuraVelocity"
		AlignPosition.Attachment0 = Attachment
		AlignPosition.Responsiveness = 200
		AlignPosition.MaxForce = math.huge
		AlignPosition.ApplyAtCenterOfMass = true
		AlignPosition.Mode = Enum.PositionAlignmentMode.OneAttachment
		AlignPosition.Parent = p426

		local AlignOrientation = Instance.new("AlignOrientation")

		AlignOrientation.Name = "TornadoAuraOrientation"
		AlignOrientation.Attachment0 = Attachment
		AlignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
		AlignOrientation.RigidityEnabled = true
		AlignOrientation.Parent = p426
		SetCollisionObjectOff(p425)
		p424.Active[p425] = {
			Model = p425,
			Part = p426,
			Attachment = Attachment,
			Velocity = AlignPosition,
			Gyro = AlignOrientation,
			TargetOffset = 0,
			CurrentOffset = 0,
			Index = 1
		}
		table.insert(p424.Order, p425)
		p424:RebalanceOffsets()
		p424.Active[p425].DestroyConn = p425.Destroying:Connect(function()
			TornadoManager:Remove(p425)
		end)
	end
	TornadoManager.Remove = function(p427, p428)
		local v1588 = p427.Active[p428]

		if not v1588 then
			return
		end

		SafeRemove(t63, p428)
		SetCollisionObjectOn(p428)

		if v1588.Attachment then
			v1588.Attachment:Destroy()
		end

		if v1588.Velocity then
			v1588.Velocity:Destroy()
		end

		if v1588.Gyro then
			v1588.Gyro:Destroy()
		end

		if v1588.DestroyConn then
			v1588.DestroyConn:Disconnect()
		end

		p428:SetAttribute("TornadoSetup", false)
		p427.Active[p428] = nil
		t64[p428] = nil
		SafeRemove(p427.Order, p428)
		p427:RebalanceOffsets()
	end
	GetTargetPosition = function()
		if _G.TornadoFollowType == "Freeze" then
			return _G.FreezePos3D
		end

		if _G.TornadoFollowType == "Player" then
			local v1589 = GetPlayerHRPByName(_G.TornadoFollowPlayer)

			if v1589 then
				_G.FreezePos3D = v1589.Position

				return v1589.Position
			end
		end

		if _G.TornadoFollowType == "Mouse" then
			local CamPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("CamPart")

			if not CamPart then
				return
			end

			raycastParams.FilterDescendantsInstances = {
				LocalPlayer.Character,
				unpack(t63)
			}

			local hit_ = W:Raycast(CamPart.Position, CamPart.CFrame.LookVector * 5000, raycastParams)

			if hit_ then
				_G.FreezePos3D = hit_.Position

				return hit_.Position
			end
		end
	end
	UpdateTornado = function(p429, p430, p431, p432)
		local v1592 = t64[p429]

		if not v1592 then
			local v1593 = TornadoManager.Active[p429]

			v1592 = {
				angle = v1593 and v1593.TargetOffset or math.random() * math.pi * 2,
				phase = math.random() * math.pi * 2,
				jitter = 0.85 + math.random() * 0.3,
				liftSpeed = 0.8 + math.random() * 0.4
			}
			t64[p429] = v1592
		end

		local v1594 = p430 * 60
		local v1595 = TornadoHeight * 4
		local v1596 = 1 + p432 * 0.15

		v1592.phase += TornadoSpeed * v1594 * 0.12 * v1592.liftSpeed

		local v1597 = 0.5 - 0.5 * math.cos(v1592.phase)
		local v1598 = (v1596 + (p432 - v1596) * v1597 ^ 1.6) * v1592.jitter

		v1592.angle += TornadoSpeed * v1594 * math.min(math.sqrt(p432 / v1598), 3)

		return p431 + Vector3.new(math.sin(TornadoManager.GlobalTheta * 0.13), 0, math.cos(TornadoManager.GlobalTheta * 0.09)) * (p432 * 0.4 * v1597) + Vector3.new(math.cos(v1592.angle) * v1598, -3 + v1597 * v1595, math.sin(v1592.angle) * v1598)
	end
end

do
	local function v1599(p433)
		return 13 * math.cos(p433) - 5 * math.cos(2 * p433) - 2 * math.cos(3 * p433) - math.cos(4 * p433)
	end

	SpiralFormulaCalculation = function(p434, p435, p436, p437, p438)
		local v1600 = p434 + Vector3.new(0, TornadoHeight, 0)

		if _G.TornadoShape == "Tornado" then
			return UpdateTornado(p438, p437, p434, p436)
		end

		if _G.TornadoShape == "Orbital" then
			return v1600 + Vector3.new(math.sin(p435) * p436, 0, math.cos(p435) * p436)
		end

		if _G.TornadoShape == "Ferris Wheel" then
			local vector3 = Vector3.new(math.sin(p435) * p436, 0, math.cos(p435) * p436)
			local cFrame = CFrame.Angles(ferris_angleX, ferris_angleY, ferris_angleZ)

			return v1600 + cFrame:VectorToWorldSpace(vector3)
		end

		if _G.TornadoShape == "Heart" then
			local v1603 = Vector3.new(16 * math.sin(p435) ^ 3, v1599(p435), 0) * mapRange(p436, 5, 1000, 1, 10)
			local cFrame = CFrame.Angles(ferris_angleX, ferris_angleY, ferris_angleZ)

			return v1600 + cFrame:VectorToWorldSpace(v1603)
		end

		if _G.TornadoShape == "Infinity" then
			local v1605 = 1 + math.sin(p435) ^ 2
			local v1606 = Vector3.new(math.cos(p435) / v1605, math.sin(p435) * math.cos(p435) / v1605, 0) * p436
			local cFrame = CFrame.Angles(ferris_angleX, ferris_angleY, ferris_angleZ)

			return v1600 + cFrame:VectorToWorldSpace(v1606)
		end

		if _G.TornadoShape == "Flower" then
			local v1608 = math.cos(4 * p435) * p436
			local vector3 = Vector3.new(math.sin(p435) * v1608, 0, math.cos(p435) * v1608)
			local cFrame = CFrame.Angles(ferris_angleX, ferris_angleY, ferris_angleZ)

			return v1600 + cFrame:VectorToWorldSpace(vector3)
		end

		if _G.TornadoShape == "Trefoil" then
			local vector3 = Vector3.new(math.sin(p435) + 2 * math.sin(2 * p435), math.cos(p435) - 2 * math.cos(2 * p435), -math.sin(3 * p435))
			local cFrame = CFrame.Angles(ferris_angleX, ferris_angleY, ferris_angleZ)

			return v1600 + cFrame:VectorToWorldSpace(vector3 * (p436 / 3))
		end

		if _G.TornadoShape == "Crown" then
			local v1613 = math.sin(p435 * 5) * (p436 * 0.3)

			return v1600 + Vector3.new(math.sin(p435) * p436, v1613, math.cos(p435) * p436)
		end

		if _G.TornadoShape == "Star" or _G.TornadoShape == "Polygon" then
			local v1614 = _G.TornadoShape == "Star"
			local v1615 = v1614 and 10 or 4
			local v1616 = p435 % 6.2831853071795862 / 6.2831853071795862 * v1615
			local v1617 = math.floor(v1616)

			local function v1618(p439)
				local v1619 = p439 * 6.2831853071795862 / v1615
				local v1620 = v1614 and p439 % 2 == 1 and 0.4 or 1

				return Vector3.new(math.sin(v1619) * v1620, math.cos(v1619) * v1620, 0)
			end

			local v1621 = v1618(v1617):Lerp(v1618(v1617 + 1), v1616 - v1617) * p436
			local cFrame = CFrame.Angles(ferris_angleX, ferris_angleY, ferris_angleZ)

			return v1600 + cFrame:VectorToWorldSpace(v1621)
		end

		local v1623 = TornadoManager.Active[p438]
		local Index = v1623 and v1623.Index or 1
		local v1625 = math.max(TornadoManager.Count, 1)

		if _G.TornadoShape == "Atom" then
			local v1626 = (Index - 1) % 3
			local v1627 = TornadoManager.GlobalTheta + math.floor((Index - 1) / 3) / (math.floor((v1625 - 1 - v1626) / 3) + 1) * math.pi * 2
			local vector3 = Vector3.new(math.cos(v1627) * p436, math.sin(v1627) * p436 * 0.35, 0)
			local cFrame = CFrame.Angles(0, 0, v1626 * math.pi / 3)
			local v1630 = CFrame.Angles(ferris_angleX, ferris_angleY, ferris_angleZ) * cFrame

			return v1600 + v1630:VectorToWorldSpace(vector3)
		end

		if _G.TornadoShape == "DNA" then
			local v1631 = (Index - 1) % 2
			local v1632 = math.floor((Index - 1) / 2)
			local v1633 = math.ceil(v1625 / 2)
			local v1634 = v1633 > 1 and v1632 / (v1633 - 1) or 0
			local v1635 = TornadoManager.GlobalTheta + v1634 * math.pi * 3 + v1631 * math.pi
			local vector3 = Vector3.new(math.cos(v1635) * p436, v1634 * p436 * 3, math.sin(v1635) * p436)
			local cFrame = CFrame.Angles(ferris_angleX, ferris_angleY, ferris_angleZ)

			return v1600 + cFrame:VectorToWorldSpace(vector3)
		end

		if _G.TornadoShape == "Heart 3D" then
			local v1638 = 16 * (1 - 2 * (Index - 0.5) / v1625)
			local v1639 = math.asin((math.abs(v1638) / 16) ^ 0.33333333333333331)
			local v1640 = v1599(v1639)
			local v1641 = v1599(math.pi - v1639)
			local v1642 = (v1640 - v1641) / 2
			local v1643 = (Index - 1) * math.pi * 0.76393202250021019 + TornadoManager.GlobalTheta
			local v1644 = Vector3.new(v1638, (v1640 + v1641) / 2 + math.cos(v1643) * v1642, math.sin(v1643) * v1642 * 0.5) * mapRange(p436, 5, 1000, 1, 10)
			local cFrame = CFrame.Angles(ferris_angleX, ferris_angleY, ferris_angleZ)

			return v1600 + cFrame:VectorToWorldSpace(v1644)
		end

		if _G.TornadoShape == "Sphere" then
			local v1646 = 1 - 2 * (Index - 0.5) / v1625
			local v1647 = math.sqrt(1 - v1646 * v1646)
			local v1648 = (Index - 1) * math.pi * 0.76393202250021019 + TornadoManager.GlobalTheta
			local v1649 = Vector3.new(math.cos(v1648) * v1647, v1646, math.sin(v1648) * v1647) * p436
			local cFrame = CFrame.Angles(ferris_angleX, ferris_angleY, ferris_angleZ)

			return v1600 + cFrame:VectorToWorldSpace(v1649)
		end

		if _G.TornadoShape ~= "Shield" then
			return
		end

		local v1651 = math.ceil(math.sqrt(v1625))
		local v1652 = math.ceil(v1625 / v1651)
		local v1653 = (Index - 1) % v1651
		local v1654 = math.floor((Index - 1) / v1651)
		local v1655 = math.max(4, p436 * 0.4)
		local LookVector = W.CurrentCamera.CFrame.LookVector
		local vector3 = Vector3.new(LookVector.X, 0, LookVector.Z)

		if vector3.Magnitude < 0.001 then
			vector3 = Vector3.new(0, 0, -1)
		end

		local cFrame = CFrame.lookAt(Vector3.zero, vector3.Unit)
		local vector32 = Vector3.new((v1653 - (v1651 - 1) / 2) * v1655, (v1654 - (v1652 - 1) / 2) * v1655, -p436)

		return v1600 + cFrame:VectorToWorldSpace(vector32)
	end
end

RotationAuraSection:AddToggle({
	Name = "Telekinesis Aura",
	Default = false,
	Callback = function(p440)
		_G.TelekinesisAura = p440

		if p440 then
			if ShapeAuraC_1 then
				ShapeAuraC_1:Disconnect()
			end

			if ShapeAuraC_3 then
				ShapeAuraC_3:Disconnect()
			end

			local n25 = 0

			ShapeAuraC_1 = R.Heartbeat:Connect(function(dt)
				if _G.TornadoMode ~= "Aura" then
					return
				end

				n25 += dt

				if n25 < 0.15 then
					return
				end

				n25 = 0

				local partBoundsInRadius = W:GetPartBoundsInRadius(_G.UniversalPlayerRoot.Position, 30, COAroundPParams)

				if partBoundsInRadius then
					local t65 = {}

					for _, partBoundsInRadiu in ipairs(partBoundsInRadius) do
						local Parent = partBoundsInRadiu.Parent

						if Parent and not t65[Parent] and not TornadoManager.Active[Parent] then
							t65[Parent] = true

							if CheckForGPB(partBoundsInRadiu, _G.TKAFilter) then
								local Head = SFcQ(Parent)

								if Head then
									local playerFromCharacter = Head.Parent and Head.Parent:IsA("Model") and PS:GetPlayerFromCharacter(Head.Parent)

									if (not playerFromCharacter or _G.TornadoTarget ~= 2) and (playerFromCharacter or _G.TornadoTarget ~= 1) then
										if playerFromCharacter then
											Head = Parent:FindFirstChild("Head")
										end

										if SNOWshipOnce(Head) then
											TornadoManager:Add(Parent, Head)
										end
									end
								end
							end
						end
					end
				end
			end)
			lastTimeWarningATA = lastTimeWarningATA or os.clock()

			if not ShapeAuraC_2 then
				ShapeAuraC_2 = R.Heartbeat:Connect(function(dt)
					if not (next(TornadoManager.Active) or _G.TelekinesisAura) then
						ShapeAuraC_2:Disconnect()
						ShapeAuraC_2 = nil
						print("Função disconectada! Pois nenhum objeto está circulando!")

						return
					end

					if next(TornadoManager.Active) and not _G.TelekinesisAura and os.clock() - lastTimeWarningATA >= 45 then
						result:MakeNotification({
							Name = "Script Activity (Telekinesis Aura)",
							Content = "Telekinesis Aura is still running, make sure to click on 'Disconnect All' for disabling it completely",
							Image = "rbxassetid://89496630185293",
							Time = 5
						})
						lastTimeWarningATA = os.clock()
					end

					local v1668 = GetTargetPosition()

					if not v1668 then
						return
					end

					local v1669 = dt * 60

					TornadoManager.GlobalTheta += TornadoSpeed * v1669

					local v1670 = 1 - 0.92 ^ v1669

					if _G.TKAutoRotateAxis and _G.TKAutoRotateAxis ~= "Off" then
						local v1671 = math.rad(9) * dt
						local n26 = 6.2831853071795862

						if _G.TKAutoRotateAxis == "X" or _G.TKAutoRotateAxis == "All" then
							ferris_angleX = (ferris_angleX + v1671) % n26
						end

						if _G.TKAutoRotateAxis == "Y" or _G.TKAutoRotateAxis == "All" then
							ferris_angleY = (ferris_angleY + v1671 * 0.7) % n26
						end

						if _G.TKAutoRotateAxis == "Z" or _G.TKAutoRotateAxis == "All" then
							ferris_angleZ = (ferris_angleZ + v1671 * 0.5) % n26
						end
					end

					local TKOrientation = _G.TKOrientation or "Face Center"
					local cFrame = CFrame.Angles(rotationAngleX or 0, rotationAngleY or 0, rotationAngleZ or 0)

					for k, v in pairs(TornadoManager.Active) do
						if k.Parent and v.Part.Parent then
							v.CurrentOffset += (v.TargetOffset - v.CurrentOffset) * v1670
							v.Velocity.Position = SpiralFormulaCalculation(v1668, TornadoManager.GlobalTheta + v.CurrentOffset, TornadoOffset, dt, k)
							v.Gyro.Enabled = TKOrientation ~= "Off"

							if TKOrientation == "Face Center" then
								local Position = v.Part.Position

								v.Gyro.CFrame = CFrame.lookAt(Position, Vector3.new(v1668.X, Position.Y, v1668.Z))
							elseif TKOrientation == "Custom Angles" then
								v.Gyro.CFrame = cFrame
							end
						else
							TornadoManager:Remove(k)
						end
					end
				end)
			end

			ShapeAuraC_3 = W.ChildAdded:Connect(function(child)
				if child.Name == "GrabParts" then
					if _G.TornadoMode ~= "Click" then
						return
					end

					local GrabPart = child:WaitForChild("GrabPart", 1)
					local WeldConstraint = GrabPart and GrabPart:WaitForChild("WeldConstraint", 1)
					local Part1 = WeldConstraint and WeldConstraint.Part1
					local Parent = Part1 and Part1.Parent and Part1.Parent:IsA("Model") and Part1.Parent

					if Part1 and Parent then
						if not CheckForGPB(Part1, _G.TKAFilter) then
							return
						end

						local playerFromCharacter = Part1.Parent and Part1.Parent:IsA("Model") and PS:GetPlayerFromCharacter(Part1.Parent)

						if playerFromCharacter and _G.TornadoTarget == 2 then
							return
						end

						if not (playerFromCharacter or _G.TornadoTarget ~= 1) then
							return
						end

						if playerFromCharacter then
							Part1 = Parent:FindFirstChild("Head")
						end

						if not Part1 then
							return
						end

						for i = 1, 10 do
							if IsNetworkOwner(Part1) then
								TornadoManager:Add(Parent, Part1)

								break
							end

							task.wait(0.1)
						end
					end
				end
			end)
		else
			if typeof(ShapeAuraC_1) == "RBXScriptConnection" then
				ShapeAuraC_1:Disconnect()
				ShapeAuraC_1 = nil
			end

			if typeof(ShapeAuraC_3) == "RBXScriptConnection" then
				ShapeAuraC_3:Disconnect()
				ShapeAuraC_3 = nil
			end
		end
	end,
	Save = true,
	Flag = "shapeaura_toggle"
})
RotationAuraSection:AddDropdown({
	Name = "Select Mode",
	Default = "Aura",
	Options = {
		"Click",
		"Aura"
	},
	Callback = function(p441)
		if p441 then
			_G.TornadoMode = p441
		end
	end
})

do
	RotationAuraSection:AddDropdown({
		Name = "Toys Filter",
		Default = "All Toys",
		Options = {
			"My Toys",
			"Players Toys",
			"Map Toys",
			"All Toys"
		},
		Callback = function(p442)
			if p442 == "My Toys" then
				_G.TKAFilter = 1
			elseif p442 == "Players Toys" then
				_G.TKAFilter = 2
			elseif p442 == "Map Toys" then
				_G.TKAFilter = 3
			elseif p442 == "All Toys" then
				_G.TKAFilter = 4
			end
		end,
		Save = true,
		Flag = "TKAFilter_dropdown"
	})
end

telekenesisshapedropdown = nil

do
	telekenesisshapedropdown = RotationAuraSection:AddDropdown({
		Name = "Shape",
		Default = "Orbital",
		Options = {
			"Orbital",
			"Tornado",
			"Ferris Wheel",
			"Heart",
			"Heart 3D",
			"Infinity",
			"Flower",
			"Trefoil",
			"Crown",
			"Star",
			"Polygon",
			"Atom",
			"DNA",
			"Sphere",
			"Shield"
		},
		Callback = function(p443)
			if p443 then
				_G.TornadoShape = p443

				if p443 == "Ferris Wheel" then
					ferris_angleX_slider:Set(90)
				end
			end
		end,
		Flag = "telekenesis_shapes",
		Save = false
	})
end

RotationAuraSection:AddLabel("Shape Rotation:")
ferris_angleX = 0
ferris_angleY = 0
ferris_angleZ = 0
ferris_angleX_slider = RotationAuraSection:AddSlider({
	Name = "Shape X",
	Min = 0,
	Max = 180,
	Default = 90,
	Color = Color3.fromRGB(222, 80, 80),
	Increment = 1,
	ValueName = "Angle",
	Callback = function(p444)
		ferris_angleX = math.rad(p444)
	end,
	Save = false,
	Flag = "ferriswheelAngleX_toggle"
})
RotationAuraSection:AddSlider({
	Name = "Shape Y",
	Min = 0,
	Max = 180,
	Default = 90,
	Color = Color3.fromRGB(80, 222, 120),
	Increment = 1,
	ValueName = "Angle",
	Callback = function(p445)
		ferris_angleY = math.rad(p445)
	end,
	Save = true,
	Flag = "ferriswheelAngleY_toggle"
})
RotationAuraSection:AddSlider({
	Name = "Shape Z",
	Min = 0,
	Max = 180,
	Default = 0,
	Color = Color3.fromRGB(80, 97, 222),
	Increment = 1,
	ValueName = "Angle",
	Callback = function(p446)
		ferris_angleZ = math.rad(p446)
	end,
	Save = true,
	Flag = "ferriswheelAngleZ_toggle"
})

do
	RotationAuraSection:AddDropdown({
		Name = "Auto Rotate",
		Default = "Off",
		Options = {
			"Off",
			"X",
			"Y",
			"Z",
			"All"
		},
		Callback = function(p447)
			_G.TKAutoRotateAxis = p447
		end
	})
end

RotationAuraSection:AddLabel("Base Properties:")
telekenesissfollowtypedropdown = RotationAuraSection:AddDropdown({
	Name = "Follow Type:",
	Default = "Player",
	Options = {
		"Player",
		"Mouse",
		"Freeze"
	},
	Callback = function(p448)
		if p448 then
			_G.TornadoFollowType = p448
		end
	end
})
RotationAuraList = RotationAuraSection:AddPlayersDropdown({
	Name = "Follow Player",
	Default = "",
	SearchBar = true,
	MultipleSelection = false,
	Callback = function(p449)
		_G.TornadoFollowPlayer = p449
		telekenesissfollowtypedropdown:Set("Player")
	end
})
MakeSearchBar(RotationAuraList, RotationAuraSection)
_G.TornadoFollowPlayer = LocalPlayer.Name
RotationAuraSection:AddBind({
	Name = "Freeze Position",
	Default = Enum.KeyCode.K,
	Hold = false,
	Callback = function()
		telekenesissfollowtypedropdown:Set("Freeze")
	end
})

do
	RotationAuraSection:AddDropdown({
		Name = "Target",
		Default = "Objects",
		Options = {
			"Players",
			"Objects",
			"Players and Objects"
		},
		Callback = function(p450)
			if p450 == "Players" then
				_G.TornadoTarget = 1
			elseif p450 == "Objects" then
				_G.TornadoTarget = 2
			elseif p450 == "Players and Objects" then
				_G.TornadoTarget = 3
			end
		end,
		Save = true,
		Flag = "tornadotarget_dropdown"
	})
end

RotationAuraSection:AddSlider({
	Name = "Distance",
	Min = 5,
	Max = 1000,
	Default = 10,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 5,
	ValueName = "Offset",
	Callback = function(p451)
		TornadoOffset = p451
	end,
	Save = true,
	Flag = "tornadodistance_toggle"
})
RotationAuraSection:AddSlider({
	Name = "Height",
	Min = 5,
	Max = 1000,
	Default = 10,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 5,
	ValueName = "Offset",
	Callback = function(p452)
		TornadoHeight = p452
	end,
	Save = true,
	Flag = "tornadoheight_toggle"
})
telekenesissliderspeed = nil

do
	telekenesissliderspeed = RotationAuraSection:AddSlider({
		Name = "Speed",
		Min = 0,
		Max = 3,
		Default = 0.1,
		Color = Color3.fromRGB(59, 122, 179),
		Increment = 0.001,
		ValueName = "Rotation Speed",
		Callback = function(p453)
			TornadoSpeed = p453
		end,
		Save = true,
		Flag = "tornadospeed_toggle"
	})
end

RotationAuraSection:AddLabel("Object Orientation:")

do
	RotationAuraSection:AddDropdown({
		Name = "Orientation",
		Default = "Face Center",
		Options = {
			"Face Center",
			"Custom Angles",
			"Off"
		},
		Callback = function(p454)
			_G.TKOrientation = p454
		end,
		Save = true,
		Flag = "TKOrientation_dropdown"
	})
end

do
	RotationAuraSection:AddSlider({
		Name = "Object X",
		Min = -360,
		Max = 360,
		Default = 180,
		Color = Color3.fromRGB(222, 80, 80),
		Increment = 1,
		ValueName = "Angle",
		Callback = function(p455)
			rotationAngleX = math.rad(p455)
		end,
		Save = true,
		Flag = "tornadoOAngleX_toggle"
	})
end

RotationAuraSection:AddSlider({
	Name = "Object Y",
	Min = -360,
	Max = 360,
	Default = 90,
	Color = Color3.fromRGB(80, 222, 120),
	Increment = 1,
	ValueName = "Angle",
	Callback = function(p456)
		rotationAngleY = math.rad(p456)
	end,
	Save = true,
	Flag = "tornadoOAngleY_toggle"
})
RotationAuraSection:AddSlider({
	Name = "Object Z",
	Min = -360,
	Max = 360,
	Default = 0,
	Color = Color3.fromRGB(80, 97, 222),
	Increment = 1,
	ValueName = "Angle",
	Callback = function(p457)
		rotationAngleZ = math.rad(p457)
	end,
	Save = true,
	Flag = "tornadoOAngleZ_toggle"
})
RotationAuraSection:AddLabel("Finish Telekenesis Aura:")
RotationAuraSection:AddButton({
	Name = "Disconnect All",
	Callback = function()
		for k in pairs(TornadoManager.Active) do
			TornadoManager:Remove(k)
		end
	end
})

local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer3 = game.Players.LocalPlayer

if not LocalPlayer3.Character then
	LocalPlayer3.CharacterAdded:Wait()
end

bang_baseOffset = 2
bang_forwardDistance = 5
bang_speed = 1
bangPart = nil
MakeBangPart = function()
	if bangPart then
		local bangPart_ = bangPart

		return bangPart_:FindFirstChildOfClass("Attachment")
	end

	bangPart = Instance.new("Part")
	bangPart.Anchored = true
	bangPart.CanCollide = false
	bangPart.Size = Vector3.new(0.5, 0.5, 0.5)
	bangPart.BrickColor = BrickColor.new("Bright red")
	bangPart.Material = Enum.Material.Neon
	bangPart.Name = "BangPart"
	bangPart.Parent = workspace
	bangPart.CanQuery = false
	bangPart.Transparency = 1

	local Attachment = Instance.new("Attachment", bangPart)
	local n27 = 0

	StartAnimSarrar()

	local connection

	connection = RunService.Heartbeat:Connect(function(dt)
		if not ((_G.BangAura or not not _G.LoopBang) and bangPart.Parent) then
			Attachment:Destroy()
			bangPart:Destroy()
			_G.SarradaAnim:Stop()
			bangPart = nil
			connection:Disconnect()

			return
		end

		n27 += dt
		bangPart.Position = _G.UniversalPlayerRoot.Position + _G.UniversalPlayerRoot.CFrame.LookVector * bang_baseOffset + _G.UniversalPlayerRoot.CFrame.LookVector * math.sin(n27 * math.pi * bang_speed) ^ 2 * bang_forwardDistance + Vector3.new(0, -0.5, 0)
		bangPart.Orientation = _G.UniversalPlayerRoot.Orientation
		_G.SarradaAnim:AdjustSpeed(mapRange(bang_speed, 1, 10, 2.4, 10))
	end)

	return Attachment
end
leftWing = nil
rightWing = nil
wings_partsTable = {}
wingsDistance = 10

local RunService2 = game:GetService("RunService")
local n28 = 0.5
local n29 = 0.07
local n30 = 25
local n31 = 25

wingsFollowMovement = false

local t66 = {
	phase = 0,
	freq = 0.5,
	amp = 10,
	center = 15,
	flapping = false,
	cFreq = 1,
	cAmp = 30,
	cCenter = 8,
	showParts = false,
	segSpacing = 8,
	toyRotation = CFrame.identity
}

do
	local function v1698(p458)
		local v1699 = p458 % 1
		local v1700

		if v1699 < n28 then
			v1700 = 0.5 * v1699 / n28
		else
			v1700 = 0.5 + 0.5 * (v1699 - n28) / (1 - n28)
		end

		return math.cos(v1700 * 2 * math.pi), math.sin(v1700 * 2 * math.pi)
	end
	local function v1701(p459, p460)
		local AssemblyLinearVelocity = p459.AssemblyLinearVelocity
		local Magnitude = Vector3.new(AssemblyLinearVelocity.X, 0, AssemblyLinearVelocity.Z).Magnitude
		local n32, n33, n34

		if not t66.flapping then
			n32 = 0.3
			n33 = 0
			n34 = 15
		elseif not wingsFollowMovement then
			n32 = t66.cFreq
			n33 = t66.cAmp
			n34 = t66.cCenter
		elseif AssemblyLinearVelocity.Y < -15 then
			n32 = 0.35
			n33 = 6
			n34 = 3
		elseif AssemblyLinearVelocity.Y > 6 then
			n32 = 2.4
			n33 = 60
			n34 = 8
		elseif Magnitude > 2 then
			local v1707 = math.clamp(Magnitude / 40, 0, 1)

			n32 = 0.9 + 1.2 * v1707
			n33 = 30 + 25 * v1707
			n34 = 10 - 6 * v1707
		else
			n32 = 0.45
			n33 = 8
			n34 = 18
		end

		local v1708 = 1 - math.exp(-3 * p460)

		t66.freq += (n32 - t66.freq) * v1708
		t66.amp += (n33 - t66.amp) * v1708
		t66.center += (n34 - t66.center) * v1708
		t66.phase = (t66.phase + t66.freq * p460) % 1
	end
	local function v1709(p461, p462, p463)
		local cFrame = p461 * CFrame.new(p463 * 2, 1.5, 0.5)

		p462.CFrame = cFrame
		p462.AssemblyLinearVelocity = Vector3.zero

		local t67 = {}

		for _, v in ipairs(wings_partsTable) do
			if v.dir == p463 then
				table.insert(t67, v)
			end
		end

		local v1714 = t66.amp / 60
		local n35 = 0
		local n36 = 0

		for i, v in ipairs(t67) do
			local part = v.part

			if part.Parent then
				local v1720, v1721 = v1698(t66.phase - (i - 1) * n29)
				local v1722 = (i - 1) / math.max(#t67 - 1, 1)
				local v1723 = t66.center + v1720 * t66.amp * (1 + 0.15 * v1722)
				local v1724 = math.max(0, -v1721) * n31 * (0.4 + 0.6 * v1722) * v1714
				local v1725 = -v1721 * n30 * (0.3 + 0.7 * v1722) * v1714
				local offset = v.offset

				if i == 1 then
					offset += wingsDistance - 2
				end

				cFrame = cFrame * CFrame.Angles(0, -p463 * math.rad(v1724 - n36), p463 * math.rad(v1723 - n35)) * CFrame.new(p463 * offset, 0, 0)
				n35 = v1723
				n36 = v1724
				part.CFrame = cFrame * CFrame.Angles(math.rad(v1725), 0, 0) * CFrame.Angles(math.pi, 0, 0)
				part.AssemblyLinearVelocity = Vector3.zero
				part.AssemblyAngularVelocity = Vector3.zero
			end
		end
	end

	createWings = function()
		if leftWing and rightWing then
			return
		end

		local function createPart()
			local Part_ = Instance.new("Part")

			Part_.Size = Vector3.new(1, 1, 1)
			Part_.Anchored = false
			Part_.CanQuery = false
			Part_.CanCollide = false
			Part_.CanTouch = false
			Part_.Massless = true
			Part_.Material = Enum.Material.Neon
			Part_.Color = Color3.fromRGB(0, 170, 255)
			Part_.Transparency = t66.showParts and 0.3 or 1

			local Attachment = Instance.new("Attachment", Part_)

			Attachment.Name = "Attachment"
			Attachment.CFrame = t66.toyRotation

			local BodyVelocity = Instance.new("BodyVelocity", Part_)

			BodyVelocity.Velocity = Vector3.zero
			BodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
			BodyVelocity.P = 1250
			Part_.Parent = workspace

			return Part_
		end

		leftWing = createPart()
		rightWing = createPart()

		for _, v in ipairs({
			1,
			-1
		}) do
			for i = 0, 5 do
				table.insert(wings_partsTable, {
					part = createPart(),
					offset = i + t66.segSpacing,
					dir = v
				})
			end
		end

		flapWingsC2 = RunService2.Heartbeat:Connect(function(dt)
			if not leftWing or not rightWing then
				flapWingsC2:Disconnect()
				flapWingsC2 = nil

				return
			end

			if not _G.UniversalPlayerRoot then
				return
			end

			v1701(_G.UniversalPlayerRoot, dt)

			local CFrame_ = _G.UniversalPlayerRoot.CFrame

			v1709(CFrame_, rightWing, 1)
			v1709(CFrame_, leftWing, -1)
		end)
	end
end

do
	flapWings = function()
		t66.flapping = t66.debugFlap ~= false
	end
end

do
	destroyWings = function()
		if flapWingsC then
			flapWingsC:Disconnect()
			flapWingsC = nil
		end

		if flapWingsC2 then
			flapWingsC2:Disconnect()
			flapWingsC2 = nil
		end

		t66.flapping = false

		if leftWing then
			leftWing:Destroy()
			leftWing = nil
		end

		if rightWing then
			rightWing:Destroy()
			rightWing = nil
		end

		for _, v in pairs(wings_partsTable) do
			if v.part then
				v.part:Destroy()
			end

			if v.gyro then
				v.gyro:Destroy()
			end
		end

		table.clear(wings_partsTable)
	end
end

MechPartsOrdem = {
	"Torso",
	"Head",
	"Right Arm",
	"Left Arm",
	"Right Leg",
	"Left Leg"
}
MechPiece = function(p464, p465)
	local t68 = {
		ToyName = "PalletLightBrown",
		Attach0C = CFrame.new(0, 0, 0),
		Attach1C = p464,
		PartName = "SoundPart"
	}

	if p465 then
		for k, v in pairs(p465) do
			t68[k] = v
		end
	end

	return t68
end

do
	MakeMechLimb = function(p466, p467)
		local cFrame = CFrame.Angles(0, math.rad(90), math.rad(-90))

		return {
			MechPiece(CFrame.new(11.35, 0, 0), {
				Main = true,
				AttachName = p466,
				AttachCFrame = cFrame,
				LimbOffset = p467
			}),
			MechPiece(CFrame.new(11.35, 0, 0)),
			MechPiece(CFrame.new(0, 10.5, 0)),
			MechPiece(CFrame.new(-11.35, 0, 0)),
			MechPiece(CFrame.new(-11.35, 0, 0)),
			MechPiece(CFrame.new(0, -5, -5) * cFrame),
			MechPiece(CFrame.new(0, 0, 11.35)),
			MechPiece(CFrame.new(0, 0, 11.35)),
			MechPiece(CFrame.new(0, -10.5, 0)),
			MechPiece(CFrame.new(0, 0, -11.35)),
			MechPiece(CFrame.new(0, 0, -11.35)),
			MechPiece(nil)
		}
	end
end

MechPartsFull = {
	Torso = {
		MechPiece(CFrame.new(0, 0, 11.35), {
			Main = true,
			AttachName = "NeckAttachment",
			AttachCFrame = CFrame.new(0, 36, 0) * CFrame.Angles(0, math.rad(90), math.rad(-90)),
			LimbOffset = Vector3.new(0, 36, 0),
			Scale = 17,
			SubAttachs = { {
				Name = "Beringela",
				CF = CFrame.new(2, 5, 0) * CFrame.Angles(math.rad(-90), 0, math.rad(90))
			} }
		}),
		MechPiece(CFrame.new(0, 0, -22.7), {
			Attach2C = {
				Name = "Right Leg",
				CF = CFrame.new(11.35, -10.5, 0)
			}
		}),
		MechPiece(CFrame.new(-11.35, 0, 0), {
			Attach2C = {
				Name = "Left Leg",
				CF = CFrame.new(11.35, -10.5, 0)
			}
		}),
		MechPiece(CFrame.new(0, 0, 11.35)),
		MechPiece(CFrame.new(0, 0, 11.35)),
		MechPiece(CFrame.new(-11.35, 0, 0)),
		MechPiece(CFrame.new(0, 0, -11.35), {
			Attach2C = {
				Name = "Right Arm",
				CF = CFrame.new(0, -10.5, 11.35)
			}
		}),
		MechPiece(CFrame.new(0, 0, -11.35)),
		MechPiece(CFrame.new(0, -10.5, 0), {
			Attach2C = {
				Name = "Left Arm",
				CF = CFrame.new(0, -10.5, -11.35)
			}
		}),
		MechPiece(CFrame.new(0, 0, 11.35)),
		MechPiece(CFrame.new(0, 0, 11.35)),
		MechPiece(CFrame.new(11.35, 0, 0)),
		MechPiece(CFrame.new(0, 0, -11.35)),
		MechPiece(CFrame.new(0, 0, -11.35)),
		MechPiece(CFrame.new(11.35, 0, 0)),
		MechPiece(CFrame.new(0, 0, 11.35)),
		MechPiece(CFrame.new(0, 0, 11.35)),
		MechPiece(CFrame.new(0, 5, 5) * CFrame.Angles(0, math.rad(90), math.rad(-90))),
		MechPiece(CFrame.new(0, 0, -11.35)),
		MechPiece(CFrame.new(0, 0, -11.35)),
		MechPiece(CFrame.new(0, 33.5, 0)),
		MechPiece(CFrame.new(0, 0, 11.35)),
		MechPiece(CFrame.new(0, 0, 11.35)),
		MechPiece(CFrame.new(0, -5, -29) * CFrame.Angles(0, math.rad(270), math.rad(-90))),
		MechPiece(CFrame.new(11.35, 0, 0)),
		MechPiece(CFrame.new(11.35, 0, 0)),
		MechPiece(CFrame.new(0, 35, 0)),
		MechPiece(CFrame.new(-11.35, 0, 0)),
		MechPiece(CFrame.new(-11.35, 0, 0)),
		MechPiece(nil)
	},
	["Right Arm"] = MakeMechLimb("RightShoulderAttachment", Vector3.new(22, 59, 0)),
	["Left Arm"] = MakeMechLimb("LeftShoulderAttachment", Vector3.new(-22, 59, 0)),
	["Left Leg"] = MakeMechLimb("LeftFootAttachment", Vector3.new(-11, 27, 0)),
	["Right Leg"] = MakeMechLimb("RightFootAttachment", Vector3.new(11, 27, 0))
}
MakeMechTestLimb = function(p468)
	return {
		MechPiece(CFrame.new(11.35, 0, 0), {
			Main = true,
			AttachName = p468,
			AttachCFrame = CFrame.Angles(0, math.rad(90), math.rad(-90))
		}),
		MechPiece(nil)
	}
end
MechPartsTest = {
	Torso = {
		MechPiece(CFrame.new(0, 0, 11.35), {
			Main = true,
			AttachName = "NeckAttachment",
			AttachCFrame = CFrame.Angles(0, math.rad(90), math.rad(-90)),
			LimbOffset = Vector3.new(-5.675, 25, 0),
			Scale = 11.35,
			Attach2C = {
				Name = "Left Leg",
				CF = CFrame.new(11.35, 0, 0)
			}
		}),
		MechPiece(CFrame.new(-11.35, 0, 0), {
			Attach2C = {
				Name = "Right Leg",
				CF = CFrame.new(11.35, 0, 0)
			}
		}),
		MechPiece(CFrame.new(0, 0, -11.35), {
			Attach2C = {
				Name = "Right Arm",
				CF = CFrame.new(0, 0, 11.35)
			}
		}),
		MechPiece(nil, {
			Attach2C = {
				Name = "Left Arm",
				CF = CFrame.new(0, 0, -11.35)
			}
		})
	},
	["Right Arm"] = MakeMechTestLimb("RightShoulderAttachment"),
	["Left Arm"] = MakeMechTestLimb("LeftShoulderAttachment"),
	["Left Leg"] = MakeMechTestLimb("LeftFootAttachment"),
	["Right Leg"] = MakeMechTestLimb("RightFootAttachment")
}

do
	MechWallPiece = function(p469)
		return {
			ToyName = "PalletLightBrown",
			Attach0C = CFrame.new(0, 0, 0),
			PartName = "SoundPart",
			CF = p469
		}
	end
end

MechBox = function(p470, p471, p472)
	local cFrame = CFrame.Angles(0, math.rad(90), math.rad(-90))
	local v1742 = cFrame * cFrame
	local v1743 = p471 * 11.35 / 2
	local t69 = {}

	for i = 1, p472 do
		local v1746 = p470.Y + (p472 / 2 - i + 0.5) * 11.35

		for i2 = 1, p471 do
			local v1748 = p470.X + (i2 - p471 / 2 - 0.5) * 11.35

			table.insert(t69, MechWallPiece(CFrame.new(v1748, v1746, p470.Z - 5.25) * cFrame))
			table.insert(t69, MechWallPiece(CFrame.new(v1748, v1746, p470.Z + 5.25) * cFrame))
		end

		table.insert(t69, MechWallPiece(CFrame.new(p470.X - v1743 + 0.6, v1746, p470.Z) * v1742))
		table.insert(t69, MechWallPiece(CFrame.new(p470.X + v1743 - 0.6, v1746, p470.Z) * v1742))
	end

	return t69
end

do
	MechHead = function(p473, p474)
		local v1749 = MechBox(p473, p474, p474)
		local v1750 = p473.Y + p474 * 11.35 / 2 + 0.6

		for i = 1, p474 do
			table.insert(v1749, MechWallPiece(CFrame.new(p473.X + (i - p474 / 2 - 0.5) * 11.35, v1750, p473.Z)))
		end

		return v1749
	end
end

do
	MakeMechR6 = function()
		local t70 = {
			Torso = MechBox(Vector3.new(0, 0, 0), 2, 2),
			Head = MechHead(Vector3.new(0, 17.025, 0), 1),
			["Right Arm"] = MechBox(Vector3.new(17.025, 0, 0), 1, 2),
			["Left Arm"] = MechBox(Vector3.new(-17.025, 0, 0), 1, 2),
			["Right Leg"] = MechBox(Vector3.new(5.675, -22.7, 0), 1, 2),
			["Left Leg"] = MechBox(Vector3.new(-5.675, -22.7, 0), 1, 2)
		}
		local v1753 = t70.Torso[1]

		v1753.Scale = 11.35
		v1753.RootOffset = Vector3.new(0, 31.049999999999997, 0)

		return t70
	end
end

MechPartsR6 = MakeMechR6()
MechPartsFull.Head = MechHead(Vector3.new(0, 77, 5.25), 2)
MechPartsTest.Head = { MechWallPiece(CFrame.new(0, 47.7, 0) * CFrame.Angles(0, math.rad(90), math.rad(-90))) }
MechTestMode = false
MechBigMode = false
MechParts = MechPartsR6
MoveArm = function(p475, p476, p477)
	if typeof(p475) ~= "string" or typeof(p476) ~= "Vector3" or typeof(_G.Torso) ~= "Instance" then
		return
	end

	local v1754

	for k, v in pairs({
		["Right Arm"] = "Right Shoulder",
		["Left Arm"] = "Left Shoulder",
		["Right Leg"] = "Right Hip",
		["Left Leg"] = "Left Hip",
		Head = "Neck"
	}) do
		if p475 == k then
			v1754 = _G.Torso:FindFirstChild(v)
		end
	end

	if not v1754 then
		return
	end

	if not v1754:FindFirstChild("BaseC0") then
		local CFrameValue = Instance.new("CFrameValue")

		CFrameValue.Name = "BaseC0"
		CFrameValue.Value = v1754.C0
		CFrameValue.Parent = v1754
	end

	local Value = v1754.BaseC0.Value

	if p477 then
		v1754.C0 = Value
	else
		v1754.C0 = CFrame.new(Value.Position + p476) * Value.Rotation
	end
end
RightLegAttMC = Instance.new("ObjectValue")
LeftLegAttMC = Instance.new("ObjectValue")
RightArmAttMC = Instance.new("ObjectValue")
LeftArmAttMC = Instance.new("ObjectValue")
mechattachreferencesT = {
	["Right Leg"] = RightLegAttMC,
	["Left Leg"] = LeftLegAttMC,
	["Right Arm"] = RightArmAttMC,
	["Left Arm"] = LeftArmAttMC
}
PingolaAttMC = Instance.new("ObjectValue")
sub_mechattachreferencesT = {
	Beringela = PingolaAttMC
}
MechSuitCompleted = false
MechSuitToys = {}
MechPieces = {}
MechInstances = {}
MechConnections = {}
MechTargets = {}
MechLastRoot = nil
MechHolding = false
MechGeneration = 0
MechBuildId = 0
MechBuildingParts = nil
MechStashCFrame = CFrame.new(-79, 26, 556)
MechStashSpacing = 14
MechStashColumns = 9
MechStashCount = 0
NewMechInstance = function(p478, p479, p480)
	local instance = Instance.new(p478)

	instance.Name = p480
	instance.Parent = p479
	table.insert(MechInstances, instance)

	return instance
end
NewMechAttachment = function(p481, p482, p483)
	local Attachment = NewMechInstance("Attachment", p481, p482)

	Attachment.CFrame = p483

	return Attachment
end
MechConnect = function(p484, p485)
	local connection = p484:Connect(p485)

	table.insert(MechConnections, connection)

	return connection
end
MechBodyParts = {
	"Torso",
	"Head",
	"Right Arm",
	"Left Arm",
	"Right Leg",
	"Left Leg"
}
MechR6Idle = {
	Torso = CFrame.new(0, 0, 0),
	Head = CFrame.new(0, 1.5, 0),
	["Right Arm"] = CFrame.new(1.5, 0, 0),
	["Left Arm"] = CFrame.new(-1.5, 0, 0),
	["Right Leg"] = CFrame.new(0.5, -2, 0),
	["Left Leg"] = CFrame.new(-0.5, -2, 0)
}
MechBackOffset = 20

do
	MechLayout = function(p486)
		local t71 = {}
		local cFrame = CFrame.new()

		for i in ipairs(p486) do
			if i > 1 then
				local v1765 = p486[i - 1]

				cFrame = cFrame * v1765.Attach0C:Inverse() * (v1765.Attach1C or CFrame.new())
			end

			t71[i] = cFrame
		end

		return t71
	end
end

MechBuildLayout = function()
	local v1766 = MechParts.Torso[1]

	if v1766.CF then
		MechScale = v1766.Scale
		MechRootOffset = v1766.RootOffset
		MechOffsets = {}

		for k, v in pairs(MechParts) do
			local v1769 = MechR6Idle[k]
			local v1770 = CFrame.new(v1769.Position * MechScale) * v1769.Rotation

			MechOffsets[k] = {}

			for i, v2 in ipairs(v) do
				MechOffsets[k][i] = v1770:Inverse() * v2.CF
			end
		end

		return
	end

	MechLayouts = {}
	MechJoints = {}

	for k, v in pairs(MechParts) do
		MechLayouts[k] = MechLayout(v)
	end

	for i, v in ipairs(MechParts.Torso) do
		local Attach2C = v.Attach2C

		if Attach2C then
			MechJoints[Attach2C.Name] = MechLayouts.Torso[i] * v.Attach0C:Inverse() * Attach2C.CF
		end
	end

	local v1778 = MechParts.Torso[1]
	local t72 = {
		Torso = CFrame.new(v1778.LimbOffset) * v1778.AttachCFrame.Rotation
	}

	for k, v in pairs(MechJoints) do
		t72[k] = CFrame.new((t72.Torso * v).Position) * MechParts[k][1].AttachCFrame.Rotation
	end

	local t73 = {}

	for k, v in pairs(MechParts) do
		t73[k] = {}

		for i, v2 in ipairs(v) do
			t73[k][i] = v2.CF or t72[k] * MechLayouts[k][i] * v2.Attach0C:Inverse()
		end
	end

	local vector3 = Vector3.zero

	for _, v in ipairs(t73.Torso) do
		vector3 += v.Position
	end

	MechScale = v1778.Scale or 17
	MechRootOffset = vector3 / #t73.Torso
	MechOffsets = {}

	for k, v in pairs(t73) do
		local v1792 = MechR6Idle[k]
		local v1793 = CFrame.new(MechRootOffset) * CFrame.new(v1792.Position * MechScale) * v1792.Rotation

		MechOffsets[k] = {}

		for i, v2 in ipairs(v) do
			MechOffsets[k][i] = v1793:Inverse() * v2
		end
	end
end
MechRestorePiece = function(p487)
	if p487.Part.Parent then
		p487.Part.Massless = p487.Massless
		p487.Part.CanQuery = p487.CanQuery
		p487.Part.AssemblyLinearVelocity = Vector3.zero
		p487.Part.AssemblyAngularVelocity = Vector3.zero
	end

	if p487.Toy.Parent then
		p487.Toy:SetAttribute("Number", nil)
		SetCollisionObjectOn(p487.Toy)
	end
end

do
	MechPieceUsable = function(p488)
		return p488.Toy.Parent ~= nil and p488.Part.Parent ~= nil and IsNetworkOwner(p488.Part)
	end
end

do
	MechToyInUse = function(p489)
		for _, v in ipairs(MechPieces) do
			if v.Toy == p489 then
				return true
			end
		end

		return false
	end
end

MechStashToy = function(p490)
	MechSuitToys[p490.Name] = MechSuitToys[p490.Name] or {}

	local n37 = 0

	for _, v in pairs(MechSuitToys) do
		n37 += #v
	end

	if n37 == 0 then
		MechStashCount = 0
	end

	local v1801 = MechStashCount % MechStashColumns
	local v1802 = math.floor(MechStashCount / MechStashColumns)
	local v1803 = (MechStashColumns - 1) / 2

	MechStashCount += 1
	table.insert(MechSuitToys[p490.Name], p490)
	p490:PivotTo(MechStashCFrame * CFrame.new((v1801 - v1803) * MechStashSpacing, 0, (v1802 - v1803) * MechStashSpacing))
end
CleanupMech = function()
	MechGeneration += 1

	for _, v in ipairs(MechConnections) do
		v:Disconnect()
	end

	table.clear(MechConnections)

	for _, v in ipairs(MechInstances) do
		v:Destroy()
	end

	table.clear(MechInstances)

	for _, v in ipairs(MechPieces) do
		MechRestorePiece(v)
	end

	table.clear(MechPieces)
	table.clear(MechTargets)
	MechLastRoot = nil
	MechHolding = false
	MechBuildingParts = nil

	for _, v in pairs(mechattachreferencesT) do
		v.Value = nil
	end

	for _, v in pairs(sub_mechattachreferencesT) do
		v.Value = nil
	end

	table.clear(MechSuitToys)
	MechStashCount = 0
end

do
	MechToysNeeded = function(p491)
		local t74 = {}

		for _, v in pairs(p491) do
			for _, v2 in ipairs(v) do
				t74[v2.ToyName] = (t74[v2.ToyName] or 0) + 1
				MechSuitToys[v2.ToyName] = MechSuitToys[v2.ToyName] or {}
			end
		end

		for _, v in ipairs(MechPieces) do
			local Name = v.Toy.Name

			if t74[Name] and MechPieceUsable(v) then
				t74[Name] -= 1
			end
		end

		return t74
	end
end

do
	MechMissingToy = function(p492)
		for _, v in pairs(MechSuitToys) do
			for i = #v, 1, -1 do
				local v1825 = v[i]
				local Parent = v1825.Parent and SFcQ(v1825)

				if not Parent or not IsNetworkOwner(Parent) then
					table.remove(v, i)
				end
			end
		end

		for k, v in pairs(p492) do
			if v > #MechSuitToys[k] then
				return k
			end
		end
	end
end

do
	UpdateMechToyList = function()
		for _, child in ipairs(u112:GetChildren()) do
			local v1831 = MechSuitToys[child.Name]

			if v1831 and not table.find(v1831, child) and not MechToyInUse(child) then
				local v1832 = SFcQ(child)

				if v1832 then
					if SNOWshipOnce(v1832) then
						MechStashToy(child)
					elseif Getdistancefromcharacter(v1832.Position) > 30 then
						TeleportPlayer(CFrame.new(v1832.Position + Vector3.new(0, 5, 0)))

						break
					end
				end
			end
		end
	end
end

TakeMechToy = function(p493)
	local v1833 = MechSuitToys[p493.ToyName]

	while v1833 do
		if not (#v1833 > 0) then
			break
		end

		local v1834 = table.remove(v1833)
		local Parent = v1834.Parent and v1834:FindFirstChild(p493.PartName)

		if Parent then
			return v1834, Parent
		end
	end
end
MechBodyFrames = function(p494, p495)
	local Humanoid = p494:FindFirstChildOfClass("Humanoid")
	local CFrame_ = p495.CFrame
	local v1838 = CFrame_ * CFrame.new(0, (MechScale - 1) * (Humanoid and Humanoid.HipHeight or 0), MechBackOffset) * CFrame.new(MechRootOffset)
	local t75 = {}

	for _, v in ipairs(MechBodyParts) do
		local v1842 = p494:FindFirstChild(v)

		if v1842 then
			local v1843 = CFrame_:ToObjectSpace(v1842.CFrame)

			t75[v] = v1838 * CFrame.new(v1843.Position * MechScale) * v1843.Rotation
		elseif t75.Torso then
			local v1844 = MechR6Idle[v]

			t75[v] = t75.Torso * CFrame.new(v1844.Position * MechScale) * v1844.Rotation
		end
	end

	return t75
end

do
	MechHoldPallets = function()
		for _, v in ipairs(MechTargets) do
			local Part_ = v.Part

			if Part_.Parent then
				v.LastCF = v.LastCF or Part_.CFrame
				Part_.CFrame = v.LastCF
				Part_.AssemblyLinearVelocity = Vector3.zero
				Part_.AssemblyAngularVelocity = Vector3.zero
			end
		end

		MechHolding = true
	end
end

UpdateMechPallets = function(p496)
	local Character = LocalPlayer.Character
	local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

	if not HumanoidRootPart then
		MechHoldPallets()

		return
	end

	local MechHolding_ = HumanoidRootPart ~= MechLastRoot or MechHolding
	local v1851 = W.FallenPartsDestroyHeight + 25
	local v1852 = MechBodyFrames(Character, HumanoidRootPart)
	local t76 = {}

	for i, v in ipairs(MechTargets) do
		local v1856 = v1852[v.Limb]

		if not v1856 then
			MechHoldPallets()

			return
		end

		local v1857 = v1856 * v.Offset
		local LastCF = v.LastCF

		if not (v1857.Y + (LastCF and not MechHolding_ and math.min(v1857.Y - LastCF.Y, 0) * 2 or 0) < v1851) then
			t76[i] = v1857

			continue
		end

		MechHoldPallets()

		return
	end

	MechLastRoot = HumanoidRootPart
	MechHolding = false

	for i, v in ipairs(MechTargets) do
		local Part_ = v.Part

		if Part_.Parent then
			local v1862 = t76[i]
			local LastCF = v.LastCF
			local v1864 = Part_.CFrame:PointToObjectSpace(Part_.AssemblyCenterOfMass)

			Part_.CFrame = v1862

			if LastCF and not MechHolding_ and p496 > 0 then
				local v1865, v1866 = (v1862.Rotation * LastCF.Rotation:Inverse()):ToAxisAngle()

				Part_.AssemblyLinearVelocity = (v1862 * v1864 - LastCF * v1864) / p496
				Part_.AssemblyAngularVelocity = v1866 > 0.0001 and v1865 * (v1866 / p496) or Vector3.zero
			else
				Part_.AssemblyLinearVelocity = Vector3.zero
				Part_.AssemblyAngularVelocity = Vector3.zero
			end

			v.LastCF = v1862
		end
	end
end
MechWatchOwnership = function(p497)
	local v1867 = false

	while MechGeneration == p497 do
		local n38 = 0

		for _, v in ipairs(MechTargets) do
			local Part_ = v.Part

			if Part_.Parent and not IsNetworkOwner(Part_) then
				n38 += 1
				SNOWship(Part_)
			end
		end

		if n38 > 0 and not v1867 then
			result:MakeNotification({
				Name = "Mech Suit",
				Content = n38 .. " pallet(s) lost network ownership: other players see them out of place.",
				Image = "rbxassetid://4483345998",
				Time = 5
			})
		end

		v1867 = n38 > 0
		task.wait(1)
	end
end
MechWatchCharacter = function(p498)
	MechConnect(game:GetService("RunService").Heartbeat, UpdateMechPallets)
	UpdateMechPallets(0)
	task.spawn(MechWatchOwnership, p498)
	MechConnect(LocalPlayer.CharacterAdded, function(p499)
		local Torso = p499:WaitForChild("Torso", 5)
		local Humanoid = p499:WaitForChild("Humanoid", 5)

		if MechGeneration ~= p498 then
			return
		end

		if not Torso or not Humanoid then
			return
		end

		_G.Torso = Torso
		_G.UniversalPlayerHumanoid = Humanoid
		_G.UniverChar = p499
	end)
end
MechSelectedParts = function()
	if MechTestMode then
		return MechPartsTest
	end

	if MechBigMode then
		return MechPartsFull
	end

	return MechPartsR6
end

do
	MechAssemble = function(p500)
		for i = #MechPieces, 1, -1 do
			if not MechPieceUsable(MechPieces[i]) then
				MechRestorePiece(table.remove(MechPieces, i))
			end
		end

		MechParts = p500
		MechBuildLayout()

		for _, v in ipairs({
			mechattachreferencesT,
			sub_mechattachreferencesT
		}) do
			for _, v2 in pairs(v) do
				if v2.Value then
					v2.Value:Destroy()
				end

				v2.Value = nil
			end
		end

		local v1879 = table.clone(MechPieces)
		local t77 = {}

		for _, v in ipairs(MechPartsOrdem) do
			local v1883 = MechParts[v]

			if v1883 then
				for i, v2 in ipairs(v1883) do
					local v1886
					local v1887, v1888, v1889 = ipairs(v1879)
					local v1890 = geniter(v1887, v1888, v1889)

					while true do
						local v1891 = table.pack(v1890())

						if not v1891[1] then
							break
						end

						local v1892 = v1891[2]

						if (v1891[3]).Toy.Name == v2.ToyName then
							v1886 = table.remove(v1879, v1892)

							break
						end
					end

					if not v1886 then
						local v1893, v1894 = TakeMechToy(v2)

						if not v1893 then
							return false
						end

						v1886 = {
							Toy = v1893,
							Part = v1894,
							Massless = v1894.Massless,
							CanQuery = v1894.CanQuery
						}
						table.insert(MechPieces, v1886)
						v1894.Massless = true
						v1894.CanQuery = false
						SetCollisionObjectOff(v1893)
					end

					v1886.Toy:SetAttribute("Number", i)

					local v1895, v1896, v1897 = ipairs(v2.SubAttachs or {})

					for _, v3 in v1895, v1896, v1897 do
						local v1900 = sub_mechattachreferencesT[v3.Name]

						if v1900 then
							v1900.Value = NewMechAttachment(v1886.Part, v3.Name, v3.CF)
						end
					end

					local Attach2C = v2.Attach2C
					local v1902 = Attach2C and mechattachreferencesT[Attach2C.Name]

					if v1902 then
						v1902.Value = NewMechAttachment(v1886.Part, Attach2C.Name, Attach2C.CF)
					end

					table.insert(t77, {
						Limb = v,
						Offset = MechOffsets[v][i],
						Part = v1886.Part
					})
				end
			end
		end

		for _, v in ipairs(v1879) do
			table.remove(MechPieces, table.find(MechPieces, v))
			MechRestorePiece(v)
			MechStashToy(v.Toy)
		end

		MechTargets = t77

		return true
	end
end

MechBuild = function(p501)
	MechBuildId += 1

	local MechBuildId_ = MechBuildId
	local v1906 = MechSelectedParts()

	MechBuildingParts = v1906

	local function v1907()
		return _G.MechMaker and MechGeneration == p501 and MechBuildId == MechBuildId_
	end

	while v1907() do
		local v1908 = MechMissingToy(MechToysNeeded(v1906))

		if v1908 then
			UpdateMechToyList()
			v1908 = MechMissingToy(MechToysNeeded(v1906))
		end

		if v1908 then
			if not _G.PlotPlayerIsOwner then
				ClaimEmptyPlot()
			end

			if v113.Value or not _G.PlotPlayerIsOwner then
				if v113.Value and _G.PlotPlayerIsOwner then
					local v1909 = GetPlayerCFrame()

					if v1909 then
						SpawnToy({
							v1908,
							v1909 * CFrame.new(0, 20, 20),
							Vector3.new(0, 0, 0)
						}, true)
					end
				end

				task.wait(LocalPlayer:GetNetworkPing() + 0.1)
			else
				TeleportPlayer(W.Plots[tostring(_G.PlotPlayerIsOwner)].PlotArea.CFrame * CFrame.new(10, 0, 10) + Vector3.new(0, -5, 0))
				task.wait()
			end

			continue
		end

		if MechAssemble(v1906) then
			if not MechSuitCompleted then
				MechWatchCharacter(p501)
				MechSuitCompleted = true
			end

			return
		end

		result:MakeNotification({
			Name = "Mech Suit",
			Content = "A pallet was lost while building the mech, try again.",
			Image = "rbxassetid://4483345998",
			Time = 5
		})

		local mechmaker_toggle = result.Flags.mechmaker_toggle

		if mechmaker_toggle then
			mechmaker_toggle:Set(false)
		else
			CleanupMech()
		end

		return
	end
end
MechModelChanged = function()
	if _G.MechMaker then
		if MechBuildingParts then
			if MechSelectedParts() == MechBuildingParts then
				return
			end

			task.spawn(MechBuild, MechGeneration)

			return
		end
	end
end

do
	MechAuraSection:AddToggle({
		Name = "Mech Suit: Big Model (92 pallets)",
		Default = false,
		Callback = function(p502)
			MechBigMode = p502

			if p502 then
				MechTestMode = false

				local mechtest_toggle = result.Flags.mechtest_toggle

				if mechtest_toggle and mechtest_toggle.Value then
					mechtest_toggle:Set(false)
				end
			end

			MechModelChanged()
		end,
		Save = false,
		Flag = "mechbig_toggle"
	})
end

MechAuraSection:AddToggle({
	Name = "Mech Suit: Small Test (13 pallets)",
	Default = false,
	Callback = function(p503)
		MechTestMode = p503

		if p503 then
			MechBigMode = false

			local mechbig_toggle = result.Flags.mechbig_toggle

			if mechbig_toggle and mechbig_toggle.Value then
				mechbig_toggle:Set(false)
			end
		end

		MechModelChanged()
	end,
	Save = false,
	Flag = "mechtest_toggle"
})

do
	MechAuraSection:AddSlider({
		Name = "Mech Suit Distance",
		Min = 0,
		Max = 80,
		Default = 20,
		Increment = 1,
		ValueName = "studs",
		Callback = function(p504)
			MechBackOffset = p504
		end
	})
end

MechAuraSection:AddToggle({
	Name = "Mech Suit",
	Default = false,
	Callback = function(p505)
		_G.MechMaker = p505
		CleanupMech()

		local function v1913()
			return _G.MechMaker and MechGeneration == MechGeneration
		end

		if not p505 then
			if MechSuitCompleted then
				RemovePlotOwner()
			end

			MechSuitCompleted = false

			return
		end

		MechSuitCompleted = false

		if not _G.BrokenBarrier then
			local BHouseBarrier = result.Flags.BHouseBarrier

			if BHouseBarrier then
				BHouseBarrier:Set(true)
			end

			result:MakeNotification({
				Name = "Warning!",
				Content = "Breaking Barrier, because it's necessary to make mech suit!",
				Image = "rbxassetid://4483345998",
				Time = 5
			})

			while not _G.BrokenBarrier and v1913() do
				task.wait(1)
			end
		end

		if _G.BrokenBarrier and v1913() then
			MechBuild(MechGeneration)

			return
		end
	end,
	Save = false,
	Flag = "mechmaker_toggle"
})
wingsToyType = "PalletLightBrown"
WingsToyMainPart = {
	PalletLightBrown = "SoundPart",
	FireworkSparkler = "Stick"
}
WingsCanSpawnHere = function()
	if not v113.Value then
		return true
	end

	if not _G.PlotPlayerIsOwner then
		return false
	end

	local v1915 = W.Plots:FindFirstChild(tostring(_G.PlotPlayerIsOwner))
	local PlotArea = v1915 and v1915:FindFirstChild("PlotArea")

	if not PlotArea then
		return false
	end

	for _, v in ipairs(W:GetPartsInPart(PlotArea)) do
		if v.Parent then
			if PS:GetPlayerFromCharacter(v.Parent) == LocalPlayer then
				return true
			end
		end
	end

	return false
end
WingsLeavePlot = function()
	if v113.Value then
		TeleportPlayer(CFrame.new(W.SpawnLocation.Position + Vector3.new(0, 5, 0)))
	end
end
WingsGoToSafeZone = function()
	if v113.Value and WingsCanSpawnHere() then
		return
	end

	ClaimEmptyPlot()

	if _G.PlotPlayerIsOwner then
		local v1919 = W.Plots:FindFirstChild(tostring(_G.PlotPlayerIsOwner))
		local PlotArea = v1919 and v1919:FindFirstChild("PlotArea")

		if PlotArea then
			TeleportPlayer(PlotArea.CFrame * CFrame.new(10, 0, 10) + Vector3.new(0, -5, 0))
		end
	end
end
WingsGetToysFolder = function()
	if v113.Value and _G.PlotPlayerIsOwner then
		local v1921 = W.PlotItems:FindFirstChild(tostring(_G.PlotPlayerIsOwner))

		if v1921 then
			return v1921
		end
	end

	return W:FindFirstChild(LocalPlayer.Name .. "SpawnedInToys")
end
WingsProfileFile = result.Folder .. "/wings_profiles.json"
WingsProfiles = {}
WingsControls = {}
WingsLoadingProfile = false
pcall(function()
	if isfile and isfile(WingsProfileFile) then
		WingsProfiles = HttpService:JSONDecode(readfile(WingsProfileFile)) or {}
	end
end)
WingsProfileValue = function(p506, p507)
	local v1922 = WingsProfiles[wingsToyType]

	if v1922 and v1922[p506] ~= nil then
		return v1922[p506]
	end

	return p507
end
WingsSaveSetting = function(p508, p509)
	if WingsLoadingProfile then
		return
	end

	WingsProfiles[wingsToyType] = WingsProfiles[wingsToyType] or {}
	WingsProfiles[wingsToyType][p508] = p509

	if WingsSavePending then
		return
	end

	WingsSavePending = true
	task.delay(0.5, function()
		WingsSavePending = false
		pcall(function()
			writefile(WingsProfileFile, HttpService:JSONEncode(WingsProfiles))
		end)
	end)
end
WingsRegisterControl = function(p510, p511, p512)
	WingsControls[p510] = {
		apply = p512,
		default = p511
	}

	local function v1923(p513)
		p512(p513)
		WingsSaveSetting(p510, p513)
	end

	return v1923
end

do
	WingsApplyProfile = function()
		WingsLoadingProfile = true

		for k, v in pairs(WingsControls) do
			local v1926 = WingsProfileValue(k, v.default)

			if v.element then
				pcall(function()
					v.element:Set(v1926)
				end)
			end

			v.apply(v1926)
		end

		WingsLoadingProfile = false
	end
end

do
	WingsAuraSection:AddDropdown({
		Name = "Wings Toy",
		Default = "PalletLightBrown",
		Options = {
			{
				Name = "PalletLightBrown",
				FakeName = "Pallet"
			},
			{
				Name = "FireworkSparkler",
				FakeName = "Firework Sparkler (goes to safe-zone)"
			}
		},
		Callback = function(p514)
			local v1927 = wingsToyType ~= p514

			wingsToyType = p514
			WingsApplyProfile()

			if v1927 and (_G.WingsMaker or WingsRestartPending) and WingsMakerToggle then
				WingsRestartToken = (WingsRestartToken or 0) + 1

				local WingsRestartToken_ = WingsRestartToken

				WingsRestartPending = true
				task.spawn(function()
					if _G.WingsMaker then
						WingsRestarting = true
						WingsMakerToggle:Set(false)
					end

					task.wait(0.5)

					if WingsRestartToken_ ~= WingsRestartToken then
						return
					end

					WingsRestartPending = false
					WingsRestarting = true
					WingsMakerToggle:Set(true)
				end)
			end
		end,
		Save = true,
		Flag = "wings_toy_dropdown"
	})
end

WingsToyRotations = {
	Default = CFrame.identity,
	Flat = CFrame.Angles(math.rad(90), 0, 0),
	Standing = CFrame.Angles(0, 0, math.rad(90)),
	Sideways = CFrame.Angles(0, math.rad(90), 0),
	["Upside Down"] = CFrame.Angles(math.rad(180), 0, 0),
	["Tilted Forward"] = CFrame.Angles(math.rad(45), 0, 0),
	["Tilted Back"] = CFrame.Angles(math.rad(-45), 0, 0),
	Diagonal = CFrame.Angles(0, 0, math.rad(45))
}

do
	local rotation = WingsRegisterControl("rotation", "Default", function(p515)
		t66.toyRotation = WingsToyRotations[p515] or CFrame.identity

		for _, v in pairs(wings_partsTable) do
			local Attachment = v.part and v.part:FindFirstChild("Attachment")

			if Attachment then
				Attachment.CFrame = t66.toyRotation
			end
		end
	end)

	WingsControls.rotation.element = WingsAuraSection:AddDropdown({
		Name = "Wings Toy Rotation",
		Default = WingsProfileValue("rotation", "Default"),
		Options = {
			"Default",
			"Flat",
			"Standing",
			"Sideways",
			"Upside Down",
			"Tilted Forward",
			"Tilted Back",
			"Diagonal"
		},
		Callback = rotation
	})
end

WingsMakerToggle = WingsAuraSection:AddToggle({
	Name = "Wings Maker",
	Default = false,
	Callback = function(p516)
		_G.WingsMaker = p516

		if not WingsRestarting then
			WingsRestartToken = (WingsRestartToken or 0) + 1
			WingsRestartPending = false
		end

		WingsRestarting = false
		WingsSession = (WingsSession or 0) + 1

		local WingsSession_ = WingsSession

		local function v1934()
			return _G.WingsMaker and WingsSession_ == WingsSession
		end

		if p516 then
			if typeof(wings_partsTable) ~= "table" then
				return
			end

			createWings()
			flapWings()

			local function v1935(p517)
				for _, v in pairs(wings_partsTable) do
					if v.toy == p517 then
						return true
					end
				end
			end

			while v1934() do
				for _, v in pairs(wings_partsTable) do
					local v1940 = v
					local part = v1940.part
					local Attachment = typeof(part) == "Instance" and part:IsA("BasePart") and part:FindFirstChild("Attachment")

					if Attachment then
						local toy = v1940.toy

						if toy and not toy.Parent then
							v1940.toy = nil
						end

						if not toy then
							local u1944

							task.spawn(function()
								while not v1940.toy and v1934() do
									task.wait(0.015)

									if u1944 and u1944.Parent then
										local v1945 = u1944:FindFirstChild(WingsToyMainPart[u1944.Name] or "SoundPart")

										if v1945 then
											local v1946 = u1944
											local v1947 = Getdistancefromcharacter(v1945.Position)

											if v1947 < 30 then
												if SNOWshipOnce(v1945) then
													v1940.toy = v1946
													v1946:SetAttribute("Connected1", true)
													SetCollisionObjectOff(v1946)

													local Attachment2 = Instance.new("Attachment", v1945)
													local AlignPosition = Instance.new("AlignPosition", v1945)

													AlignPosition.Name = "WingPosition"
													AlignPosition.Responsiveness = 200
													AlignPosition.MaxForce = math.huge
													AlignPosition.ApplyAtCenterOfMass = true
													AlignPosition.Attachment0 = Attachment2
													AlignPosition.Attachment1 = Attachment
													AlignPosition.Mode = Enum.PositionAlignmentMode.TwoAttachment

													local AlignOrientation = Instance.new("AlignOrientation", v1945)

													AlignOrientation.Name = "WingOrientation"
													AlignOrientation.Attachment0 = Attachment2
													AlignOrientation.Attachment1 = Attachment
													AlignOrientation.Mode = Enum.OrientationAlignmentMode.TwoAttachment
													AlignOrientation.RigidityEnabled = true
													AlignOrientation.Enabled = true
													v1946.DescendantAdded:Connect(function(descendant)
														if descendant.Name == "PartOwner" then
															if descendant.Value ~= LocalPlayer.Name then
																while descendant.Parent do
																	local v1951 = Getdistancefromcharacter(v1945.Position)
																	local v1952 = CheckNetworkOwnerShipOnPart(v1945)

																	if v1951 > 30 and not v1952 then
																		DeleteToyRE:FireServer(v1946)

																		break
																	elseif not SNOWshipOnce(v1945) then
																		task.wait(0.1)

																		continue
																	end

																	break
																end
															end
														end
													end)

													continue
												end
											end

											if v1947 > 30 and not CheckNetworkOwnerShipOnPart(v1945) then
												DeleteToyRE:FireServer(v1946)
												u1944 = nil
											end
										end
									else
										if wingsToyType == "FireworkSparkler" then
											WingsGoToSafeZone()
										elseif not WingsCanSpawnHere() then
											WingsLeavePlot()
										end

										local v1953 = GetPlayerCFrame()

										if v1953 then
											SpawnToy({
												wingsToyType,
												CFrame.new(v1953.Position.X, v1953.Position.Y, v1953.Position.Z, -0.133750245, -0.471861839, 0.871468484, -3.7252903e-09, 0.879369617, 0.476139903, -0.991015136, 0.0636838302, -0.117615893),
												(Vector3.new(0, 97.69000244140625, 0))
											}, true)
										end
									end
								end
							end)

							local connection
							local v1955

							local function v1956(child)
								if child.Name == wingsToyType and not v1935(child) then
									SetCollisionObjectOff(child)
									u1944 = child
								end
							end

							repeat
								local v1957 = WingsGetToysFolder()

								if v1957 ~= v1955 then
									if connection then
										connection:Disconnect()
										connection = nil
									end

									v1955 = v1957

									if v1957 then
										connection = v1957.ChildAdded:Connect(v1956)
									end
								end

								task.wait(0.015)
							until v1940.toy or not v1934()

							if connection then
								connection:Disconnect()
							end
						end
					end
				end

				task.wait(0.025)
			end
		else
			if typeof(wings_partsTable) ~= "table" then
				return
			end

			local v1958 = false

			for _, v in pairs(wings_partsTable) do
				local toy = v.toy

				if toy then
					if toy.Name == "FireworkSparkler" then
						v1958 = true
					else
						DeleteToyRE:FireServer(toy)
					end
				end
			end

			destroyWings()

			if v1958 and _G.PlotPlayerIsOwner then
				task.spawn(function()
					local v1962 = GetPlayerCFrame()

					RemovePlotOwner()

					if v1962 then
						TeleportPlayer(v1962, 3)
					end
				end)
			end
		end
	end,
	Save = true,
	Flag = "wingsaura_toggle"
})

do
	local function v1963(p518, p519, p520, p521, p522, p523, p524, p525)
		local v1964 = WingsRegisterControl(p524, p521, p525)

		WingsControls[p524].element = WingsAuraSection:AddSlider({
			Name = p518,
			Min = p519,
			Max = p520,
			Default = WingsProfileValue(p524, p521),
			Increment = p522,
			ValueName = p523,
			Callback = v1964
		})
	end

	WingsAuraSection:AddLabel("Wings Customization")
	WingsAuraSection:AddToggle({
		Name = "Flap Wings",
		Default = true,
		Callback = function(p526)
			t66.debugFlap = p526

			if leftWing then
				t66.flapping = p526
			end
		end,
		Save = true,
		Flag = "wings_flap_toggle"
	})

	local dynamic = WingsRegisterControl("dynamic", wingsFollowMovement, function(p527)
		wingsFollowMovement = p527
	end)

	WingsControls.dynamic.element = WingsAuraSection:AddToggle({
		Name = "Dynamic Flapping (react to movement)",
		Default = WingsProfileValue("dynamic", wingsFollowMovement),
		Callback = dynamic
	})
	v1963("Flap Speed", 0.1, 4, t66.cFreq, 0.1, "flaps/sec", "wings_speed_slider", function(p528)
		t66.cFreq = p528
	end)
	v1963("Flap Height", 0, 90, t66.cAmp, 1, "degrees", "wings_height_slider", function(p529)
		t66.cAmp = p529
	end)
	v1963("Wing Angle", -45, 60, t66.cCenter, 1, "degrees (up/down)", "wings_angle_slider", function(p530)
		t66.cCenter = p530
	end)
	v1963("Flap Snap", 0, 100, math.floor((0.5 - n28) / 0.2 * 100 + 0.5), 1, "% (0 = smooth)", "wings_snap_slider", function(p531)
		n28 = 0.5 - p531 / 100 * 0.2
	end)
	v1963("Wing Flexibility", 0, 100, math.floor(n29 / 0.25 * 100 + 0.5), 1, "%", "wings_flex_slider", function(p532)
		n29 = p532 / 100 * 0.25
	end)
	v1963("Feather Twist", 0, 60, n30, 1, "degrees", "wings_twist_slider", function(p533)
		n30 = p533
	end)
	v1963("Wing Fold", 0, 60, n31, 1, "degrees", "wings_fold_slider", function(p534)
		n31 = p534
	end)
	v1963("Wing Size", 1, 20, t66.segSpacing, 1, "studs", "wings_size_slider", function(p535)
		t66.segSpacing = p535

		local t78 = {}

		for _, v in ipairs(wings_partsTable) do
			t78[v.dir] = (t78[v.dir] or 0) + 1
			v.offset = p535 + t78[v.dir] - 1
		end
	end)
	v1963("Distance From Body", 0, 30, wingsDistance, 1, "studs", "wings_distance_slider", function(p536)
		wingsDistance = p536
	end)
end

do
	RigConnectToysLoop = function(p537, p538, p539, p540, p541)
		local function v1969(p542)
			for _, v in pairs(p537) do
				if v.toy == p542 then
					return true
				end
			end

			return p542:GetAttribute("Connected1") == true
		end

		while p539() do
			for _, v in pairs(p537) do
				if not p539() then
					break
				end

				local part = v.part
				local Attachment = typeof(part) == "Instance" and part:IsA("BasePart") and part:FindFirstChild("Attachment")

				if Attachment then
					if v.toy and not v.toy.Parent then
						v.toy = nil
					end

					if not v.toy then
						local u1976

						task.spawn(function()
							while not v.toy and p539() do
								task.wait(0.015)

								if u1976 and u1976.Parent then
									local v1977 = u1976:FindFirstChild(WingsToyMainPart[u1976.Name] or "SoundPart")

									if v1977 then
										local v1978 = u1976
										local v1979 = Getdistancefromcharacter(v1977.Position)

										if v1979 < 30 and SNOWshipOnce(v1977) then
											v.toy = v1978
											v1978:SetAttribute("Connected1", true)
											SetCollisionObjectOff(v1978)

											local Attachment2 = Instance.new("Attachment", v1977)

											if p540 then
												p540(v, v1978, v1977, Attachment2)
											end

											local AlignPosition = Instance.new("AlignPosition", v1977)

											AlignPosition.Name = "RigPosition"
											AlignPosition.Responsiveness = 200
											AlignPosition.MaxForce = math.huge
											AlignPosition.ApplyAtCenterOfMass = true
											AlignPosition.Attachment0 = Attachment2
											AlignPosition.Attachment1 = Attachment
											AlignPosition.Mode = Enum.PositionAlignmentMode.TwoAttachment

											local AlignOrientation = Instance.new("AlignOrientation", v1977)

											AlignOrientation.Name = "RigOrientation"
											AlignOrientation.Attachment0 = Attachment2
											AlignOrientation.Attachment1 = Attachment
											AlignOrientation.Mode = Enum.OrientationAlignmentMode.TwoAttachment
											AlignOrientation.RigidityEnabled = true
											AlignOrientation.Enabled = true
											v1978.DescendantAdded:Connect(function(descendant)
												if descendant.Name == "PartOwner" and descendant.Value ~= LocalPlayer.Name then
													while descendant.Parent do
														local v1983 = Getdistancefromcharacter(v1977.Position)
														local v1984 = CheckNetworkOwnerShipOnPart(v1977)

														if v1983 > 30 and not v1984 then
															DeleteToyRE:FireServer(v1978)

															break
														elseif not SNOWshipOnce(v1977) then
															task.wait(0.1)

															continue
														end

														break
													end
												end
											end)
										elseif v1979 > 30 and not CheckNetworkOwnerShipOnPart(v1977) then
											DeleteToyRE:FireServer(v1978)
											u1976 = nil
										end
									end
								else
									local v1985 = p538()

									if v1985 == "FireworkSparkler" or p541 and p541() then
										WingsGoToSafeZone()
									elseif not WingsCanSpawnHere() then
										WingsLeavePlot()
									end

									local v1986 = GetPlayerCFrame()

									if v1986 then
										SpawnToy({
											v1985,
											CFrame.new(v1986.Position.X, v1986.Position.Y, v1986.Position.Z, -0.133750245, -0.471861839, 0.871468484, -3.7252903e-09, 0.879369617, 0.476139903, -0.991015136, 0.0636838302, -0.117615893),
											(Vector3.new(0, 97.69000244140625, 0))
										}, true)
									end
								end
							end
						end)

						local connection
						local v1988

						repeat
							local v1989 = WingsGetToysFolder()

							if v1989 ~= v1988 then
								if connection then
									connection:Disconnect()
									connection = nil
								end

								v1988 = v1989

								if v1989 then
									connection = v1989.ChildAdded:Connect(function(child)
										if child.Name == p538() and not v1969(child) then
											SetCollisionObjectOff(child)
											u1976 = child
										end
									end)
								end
							end

							task.wait(0.015)
						until v.toy or not p539()

						if connection then
							connection:Disconnect()
						end
					end
				end
			end

			task.wait(0.025)
		end
	end
end

RigReleaseToys = function(p543)
	local v1990 = false

	for _, v in pairs(p543) do
		if v.toy then
			if v.toy.Name == "FireworkSparkler" then
				v1990 = true
			else
				if v.toy:IsDescendantOf(W.PlotItems) then
					v1990 = true
					v.toy = nil

					continue
				end

				DeleteToyRE:FireServer(v.toy)
			end

			v.toy = nil
		end
	end

	if v1990 and _G.PlotPlayerIsOwner then
		task.spawn(function()
			local v1993 = GetPlayerCFrame()

			RemovePlotOwner()

			if v1993 then
				TeleportPlayer(v1993, 3)
			end
		end)
	end
end
SpiderLegs = {
	session = 0,
	parts = {},
	legs = {},
	folder = nil,
	conn = nil,
	lift = nil,
	toyType = "LadderLightBrown",
	rotation = CFrame.identity,
	autoFit = true,
	toyLength = 22,
	height = 18,
	segLength = 20.240000000000002,
	spread = 5,
	frontSpread = 6,
	legCount = 4,
	segCount = 3,
	activeSegCount = nil,
	stepDistance = 7,
	stepTime = 0.3,
	stepHeight = 4,
	climbEnabled = true,
	climbDistance = 0.5,
	climbSpeed = 20,
	uprightTime = 0,
	exitForward = nil,
	climbState = nil,
	ceilNormal = nil,
	ceilPoint = nil,
	ceilReflect = false,
	ceilAxis = nil,
	wallFlip = false,
	holdUntilRelease = false,
	arc = nil,
	climbTarget = nil,
	climbUp = nil,
	climbForward = nil,
	climbNormal = nil,
	climbWallPoint = nil,
	surfaceUp = nil,
	orient = nil,
	platformStandSet = false,
	jumpEnabled = true,
	jumpHeight = 60,
	jumpChargeTime = 1,
	jumpState = nil,
	jumpCharge = 0,
	jumpArmed = false,
	jump = nil,
	groundY = nil,
	landTime = 0,
	jumpGui = nil,
	jumpFill = nil,
	jumpTouch = false,
	jumpTouchInput = nil
}

do
	SpiderLegsSolve = function(p544, p545, p546, p547, p548)
		local v1994 = p547 * p548
		local v1995 = p545 - p544
		local Magnitude = v1995.Magnitude

		if Magnitude < 0.01 then
			p545 = p544 - Vector3.new(0, 0.01, 0)
			v1995 = p545 - p544
			Magnitude = 0.01
		end

		if v1994 * 0.999 < Magnitude then
			p545 = p544 + v1995.Unit * v1994 * 0.999
		end

		local t79 = {}

		for i = 1, p548 + 1 do
			local v1999 = (i - 1) / p548

			t79[i] = p544:Lerp(p545, v1999) + p546 * p547 * math.sin(math.pi * v1999) * (1.2 - 0.6 * v1999)
		end

		for i = 1, 10 do
			t79[p548 + 1] = p545

			for i2 = p548, 1, -1 do
				t79[i2] = t79[i2 + 1] + (t79[i2] - t79[i2 + 1]).Unit * p547
			end

			t79[1] = p544

			for i2 = 2, p548 + 1 do
				t79[i2] = t79[i2 - 1] + (t79[i2] - t79[i2 - 1]).Unit * p547
			end
		end

		return t79
	end
end

SpiderLegsFoothold = function(p549, p550, p551, p552, p553, p554, p555)
	local v2003 = p549 + p550
	local Magnitude = p550.Magnitude

	if p555 and Magnitude > 0.1 then
		local hit_ = W:Raycast(p549, p550.Unit * (Magnitude + 2), p554)

		if hit_ then
			return hit_.Position, hit_.Normal
		end
	end

	local hit_ = W:Raycast(v2003 + p551 * 5, -p551 * (5 + p552 + p553), p554)

	if hit_ then
		return hit_.Position, hit_.Normal
	end

	if p555 and Magnitude > 0.1 then
		for _, v in ipairs({
			0.5,
			2.5
		}) do
			local hit_2 = W:Raycast(v2003 - p551 * (p552 + v), -p550.Unit * (Magnitude + 2), p554)

			if hit_2 then
				return hit_2.Position, hit_2.Normal
			end
		end
	end

	return nil
end

do
	local u2010

	SpiderLegsMoveInput = function(p556)
		if u2010 == nil then
			local PlayerModule = LocalPlayer:FindFirstChild("PlayerScripts") and LocalPlayer.PlayerScripts:FindFirstChild("PlayerModule")

			if PlayerModule then
				local ok, result2 = pcall(function()
					return require(PlayerModule):GetControls()
				end)

				u2010 = ok and result2 or false
			end
		end

		if u2010 and W.CurrentCamera then
			local ok, result2 = pcall(u2010.GetMoveVector, u2010)

			if ok and typeof(result2) == "Vector3" then
				if result2.Magnitude < 0.01 then
					local MoveDirection = p556 and p556.MoveDirection or Vector3.zero

					return MoveDirection
				end

				local _, v2018 = W.CurrentCamera.CFrame:ToEulerAnglesYXZ()
				local v2019 = CFrame.Angles(0, v2018, 0):VectorToWorldSpace(Vector3.new(result2.X, 0, result2.Z))
				local Unit = v2019.Magnitude > 1 and v2019.Unit or v2019

				return Unit
			end
		end

		local MoveDirection = p556 and p556.MoveDirection or Vector3.zero

		return MoveDirection
	end
end

SpiderLegsWallAbove = function(p557, p558, p559, p560, p561)
	local v2022 = Vector3.yAxis - p558 * p558.Y
	local v2023 = (v2022.Magnitude > 0.01 and v2022.Unit or Vector3.yAxis) * (p561 or 1)

	for i = 2, 12, 2 do
		local hit_ = W:Raycast(p557 + v2023 * i, -p558 * p559, p560)

		if hit_ and math.abs(hit_.Normal.Y) < 0.7 then
			return true
		end
	end

	return false
end
SpiderLegsFindWallTop = function(p562, p563, p564, p565)
	local Position

	for _, v in ipairs({
		0.25,
		0.75,
		1.5,
		3
	}) do
		local hit_ = W:Raycast(p562 - p563 * v + Vector3.yAxis * 4, Vector3.new(0, -8, 0), p565)

		if hit_ and hit_.Normal.Y > 0.6 then
			Position = hit_.Position

			break
		end
	end

	if not Position then
		return nil
	end

	local vector3 = Vector3.new(p562.X, Position.Y, p562.Z)
	local hit_ = W:Raycast(vector3 - p563 * p564 + Vector3.yAxis * 4, Vector3.new(0, -8, 0), p565)

	return vector3, hit_ and hit_.Normal.Y > 0.6 and hit_.Position.Y or nil
end

do
	SpiderLegsJumpHeld = function()
		local UserInputService2 = game:GetService("UserInputService")

		if UserInputService2:GetFocusedTextBox() then
			return false
		end

		if SpiderLegs.jumpTouchInput and (SpiderLegs.jumpTouchInput.UserInputState == Enum.UserInputState.End or SpiderLegs.jumpTouchInput.UserInputState == Enum.UserInputState.Cancel) then
			SpiderLegs.jumpTouch = false
			SpiderLegs.jumpTouchInput = nil
		end

		return SpiderLegs.jumpTouch or UserInputService2:IsKeyDown(Enum.KeyCode.Space) or UserInputService2:IsGamepadButtonDown(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonA)
	end
end

SpiderLegsJumpAim = function(p566, p567, p568, p569, p570, p571)
	local vector3 = Vector3.new(p567.Normal.X, 0, p567.Normal.Z)

	if vector3.Magnitude < 0.01 then
		return nil
	end

	local Unit = vector3.Unit
	local Position = p567.Position
	local v2036 = p566.Y + p568 + 2

	if v2036 <= Position.Y then
		return nil
	end

	local Y
	local v2038, v2039, v2040 = ipairs({
		1,
		2.5
	})
	local v2041 = geniter(v2038, v2039, v2040)

	while true do
		local v2042 = table.pack(v2041())

		if not v2042[1] then
			break
		end

		local v2043 = Position - Unit * v2042[3]
		local hit_ = W:Raycast(Vector3.new(v2043.X, v2036, v2043.Z), Vector3.new(0, Position.Y - v2036, 0), p571)

		if hit_ and hit_.Normal.Y > 0.6 and Position.Y < hit_.Position.Y then
			Y = hit_.Position.Y

			break
		end
	end

	if not Y or p568 < Y + p569 + 2 - p566.Y then
		return nil
	end

	local vector32 = Vector3.new(Position.X - p566.X, 0, Position.Z - p566.Z)

	if vector32.Magnitude > 0.01 then
		if W:Raycast(Vector3.new(p566.X, Y + 1.5, p566.Z), vector32.Unit * (vector32.Magnitude + 3), p571) then
			return nil
		end
	end

	local v2046, v2047, v2048 = ipairs({
		p570,
		4,
		2
	})

	for _, v in v2046, v2047, v2048 do
		local v2051 = Position - Unit * v
		local hit_ = W:Raycast(Vector3.new(v2051.X, Y + 3, v2051.Z), Vector3.new(0, -6, 0), p571)

		if hit_ and hit_.Normal.Y > 0.6 and math.abs(hit_.Position.Y - Y) < 2 then
			return {
				face = Position,
				n = Unit,
				edgeY = Y + 4,
				landY = hit_.Position.Y + p569,
				land = hit_.Position
			}
		end
	end

	return nil
end
SpiderLegsCreateJumpButton = function()
	if not game:GetService("UserInputService").TouchEnabled or SpiderLegs.jumpGui and SpiderLegs.jumpGui.Parent then
		return
	end

	local ScreenGui = Instance.new("ScreenGui")

	ScreenGui.Name = "SpiderLegsJump"
	ScreenGui.ResetOnSpawn = false
	ScreenGui.DisplayOrder = 10

	local ViewportSize = W.CurrentCamera and W.CurrentCamera.ViewportSize or Vector2.new(1000, 1000)
	local v2055 = math.min(ViewportSize.X, ViewportSize.Y) <= 500
	local v2056 = v2055 and 70 or 120
	local TextButton = Instance.new("TextButton")

	TextButton.Name = "JumpButton"
	TextButton.Size = UDim2.fromOffset(v2056, v2056)
	TextButton.Position = v2055 and UDim2.new(1, -(v2056 * 1.5 - 10), 1, -v2056 - 20) or UDim2.new(1, -(v2056 * 1.5 - 10), 1, -v2056 * 1.75)
	TextButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	TextButton.BackgroundTransparency = 0.45
	TextButton.AutoButtonColor = false
	TextButton.Text = ""
	TextButton.Parent = ScreenGui
	Instance.new("UICorner", TextButton).CornerRadius = UDim.new(1, 0)

	local UIStroke = Instance.new("UIStroke")

	UIStroke.Color = Color3.fromRGB(255, 255, 255)
	UIStroke.Transparency = 0.3
	UIStroke.Thickness = 2
	UIStroke.Parent = TextButton

	local Frame = Instance.new("Frame")

	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.Position = UDim2.fromScale(0.5, 0.5)
	Frame.Size = UDim2.fromScale(0, 0)
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 0.55
	Frame.BorderSizePixel = 0
	Frame.Parent = TextButton
	Instance.new("UICorner", Frame).CornerRadius = UDim.new(1, 0)

	local TextLabel = Instance.new("TextLabel")

	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.Position = UDim2.fromScale(0.5, 0.5)
	TextLabel.Size = UDim2.fromScale(0.7, 0.35)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text = "JUMP"
	TextLabel.TextScaled = true
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.Parent = TextButton
	TextButton.InputBegan:Connect(function(input)
		if input.UserInputType ~= Enum.UserInputType.Touch and input.UserInputType ~= Enum.UserInputType.MouseButton1 then
			return
		end

		if input.UserInputState ~= Enum.UserInputState.Begin then
			return
		end

		SpiderLegs.jumpTouch = true
		SpiderLegs.jumpTouchInput = input

		local connection

		connection = input:GetPropertyChangedSignal("UserInputState"):Connect(function()
			local UserInputState = input.UserInputState

			if UserInputState == Enum.UserInputState.End or UserInputState == Enum.UserInputState.Cancel then
				connection:Disconnect()

				if SpiderLegs.jumpTouchInput == input then
					SpiderLegs.jumpTouch = false
					SpiderLegs.jumpTouchInput = nil
				end
			end
		end)
	end)
	ScreenGui.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
	SpiderLegs.jumpGui = ScreenGui
	SpiderLegs.jumpFill = Frame
end
SpiderLegsCreate = function()
	if SpiderLegs.folder and SpiderLegs.folder.Parent then
		return
	end

	local Folder = Instance.new("Folder")

	Folder.Name = "SpiderLegsRig"
	Folder.Parent = W
	SpiderLegs.folder = Folder
	table.clear(SpiderLegs.parts)
	table.clear(SpiderLegs.legs)
	SpiderLegs.activeSegCount = SpiderLegs.segCount
	SpiderLegsCreateJumpButton()

	local v2064 = SpiderLegs.legCount == 4 and {
		{
			side = 1,
			front = 1,
			group = 1
		},
		{
			side = -1,
			front = 1,
			group = 2
		},
		{
			side = 1,
			front = -1,
			group = 2
		},
		{
			side = -1,
			front = -1,
			group = 1
		}
	} or {
		{
			side = 1,
			front = 0,
			group = 1
		},
		{
			side = -1,
			front = 0,
			group = 2
		}
	}

	for i, v in ipairs(v2064) do
		SpiderLegs.legs[i] = {
			side = v.side,
			front = v.front,
			group = v.group,
			planted = nil,
			foot = nil,
			stepping = false
		}

		for i2 = 1, SpiderLegs.segCount do
			local Part_ = Instance.new("Part")

			Part_.Size = Vector3.new(1, 1, 1)
			Part_.Anchored = false
			Part_.CanCollide = false
			Part_.CanQuery = false
			Part_.CanTouch = false
			Part_.Massless = true
			Part_.Transparency = 1

			local Attachment = Instance.new("Attachment", Part_)

			Attachment.Name = "Attachment"
			Attachment.CFrame = SpiderLegs.rotation

			local BodyVelocity = Instance.new("BodyVelocity", Part_)

			BodyVelocity.Velocity = Vector3.zero
			BodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
			BodyVelocity.P = 1250
			Part_.Parent = Folder
			table.insert(SpiderLegs.parts, {
				part = Part_,
				leg = i,
				seg = i2
			})
		end
	end

	local raycastParams = RaycastParams.new()

	raycastParams.FilterType = Enum.RaycastFilterType.Exclude
	raycastParams.IgnoreWater = false
	SpiderLegs.conn = R.Heartbeat:Connect(function(dt)
		if not _G.UniversalPlayerRoot or not _G.UniversalPlayerRoot.Parent then
			return
		end

		local CFrame_ = _G.UniversalPlayerRoot.CFrame
		local Humanoid = _G.UniversalPlayerRoot.Parent:FindFirstChildOfClass("Humanoid")
		local v2074 = SpiderLegsMoveInput(Humanoid)
		local filterDescendantsInstances = {
			Folder,
			_G.UniversalPlayerRoot.Parent
		}
		local v2076 = W:FindFirstChild(LocalPlayer.Name .. "SpawnedInToys")

		if v2076 then
			table.insert(filterDescendantsInstances, v2076)
		end

		local PlotPlayerIsOwner = _G.PlotPlayerIsOwner and W.PlotItems:FindFirstChild(tostring(_G.PlotPlayerIsOwner))

		if PlotPlayerIsOwner then
			table.insert(filterDescendantsInstances, PlotPlayerIsOwner)
		end

		raycastParams.FilterDescendantsInstances = filterDescendantsInstances

		local activeSegCount = SpiderLegs.activeSegCount or SpiderLegs.segCount
		local v2079 = SpiderLegs.segLength * activeSegCount
		local v2080 = math.min(SpiderLegs.height, v2079 * 0.85)
		local v2081 = v2080 * SpiderLegs.climbDistance
		local v2082 = #SpiderLegs.parts > 0
		local v2083, v2084, v2085 = ipairs(SpiderLegs.parts)
		local v2086 = geniter(v2083, v2084, v2085)

		while true do
			local v2087 = table.pack(v2086())

			if not v2087[1] then
				break
			end

			local v2088 = v2087[3]

			if not v2088.toy or not v2088.toy.Parent then
				v2082 = false

				break
			end
		end

		local v2089 = math.max(4, v2080 - v2081)
		local Unit = v2074.Magnitude > 0.1 and v2074.Unit or Vector3.zero

		local function v2091(p572, p573, p574)
			local hit_ = W:Raycast(p572, -p573 * p574, raycastParams)

			return hit_ and math.abs(hit_.Normal.Y) < 0.7 and hit_ or nil
		end
		local function v2093(p575)
			local n39 = 0

			for _, leg in ipairs(SpiderLegs.legs) do
				if leg.planted and not (leg.stepping or leg.noTarget) then
					local v2097 = leg.planted - _G.UniversalPlayerRoot.Position

					if v2097:Dot(p575) < 0 then
						n39 = math.max(n39, v2097.Magnitude / v2079)
					end
				end
			end

			local v2098 = math.clamp((0.8 - n39) / 0.2, 0.3, 1)

			if SpiderLegs.climbTarget and (_G.UniversalPlayerRoot.Position - SpiderLegs.climbTarget).Magnitude > 6 then
				v2098 = math.min(v2098, 0.3)
			end

			return SpiderLegs.climbSpeed * v2098 * dt
		end
		local function v2099()
			local v2100 = -(SpiderLegs.climbNormal or CFrame_.LookVector)
			local vector3 = Vector3.new(v2100.X, 0, v2100.Z)

			SpiderLegs.exitForward = vector3.Magnitude > 0.01 and vector3.Unit or Vector3.new(0, 0, -1)
			SpiderLegs.uprightTime = 0.6
			SpiderLegs.climbState = nil
			SpiderLegs.arc = nil
		end
		local function v2102(p576)
			SpiderLegs.exitForward = p576
			SpiderLegs.uprightTime = 0.1
			SpiderLegs.climbState = nil
			SpiderLegs.arc = nil
		end
		local function v2103(p577, p578, p579, p580)
			local Unit2 = Vector3.new(p579.X, 0, p579.Z).Unit
			local v2105 = Vector3.yAxis:Cross(Unit2)
			local climbTarget = SpiderLegs.climbTarget
			local v2107 = p577 + v2105 * (climbTarget - p577):Dot(v2105)
			local v2108 = climbTarget - v2107
			local v2109 = math.atan2(p580:Dot(Vector3.yAxis), p580:Dot(Unit2))
			local Magnitude = v2108.Magnitude
			local vector3 = Vector3.yAxis
			local v2112 = v2108 - (Unit2 * math.cos(v2109) + vector3 * math.sin(v2109)) * Magnitude

			SpiderLegs.climbState = "over"
			SpiderLegs.arc = {
				edge = v2107,
				nh = Unit2,
				right = v2105,
				a0 = v2109,
				rho0 = Magnitude,
				corr = v2112,
				len = math.max(1, (1.5707963267948966 - v2109) * (Magnitude + v2080) / 2 + v2112.Magnitude),
				q = 0,
				uEnd = p578 and SpiderLegs.frontSpread + 4 or 0,
				roofY = p578 or v2107.Y
			}
			SpiderLegs.climbUp = p580
			SpiderLegs.climbForward = Vector3.yAxis * math.cos(v2109) - Unit2 * math.sin(v2109)
		end

		local v2113 = math.max(2, v2081 * 0.4)

		if v2074.Magnitude < 0.1 then
			SpiderLegs.idleTime = (SpiderLegs.idleTime or 0) + dt

			if SpiderLegs.idleTime > 0.15 then
				SpiderLegs.wallFlip = false
				SpiderLegs.ceilReflect = false
			end
		else
			SpiderLegs.idleTime = 0
		end

		local function v2114(p581)
			local vector3 = Vector3.new(p581.X, 0, p581.Z)

			return vector3.Magnitude > 0.01 and vector3.Unit or nil
		end
		local function v2116(p582, p583, p584)
			local hit_ = W:Raycast(p582, -p583 * p584, raycastParams)

			return hit_ and hit_.Normal.Y < -0.7 and hit_ or nil
		end
		local function v2118(p585, p586, p587, p588, p589)
			if p585 ~= "wall" then
				local v2119 = v2074

				if p588 and p589 then
					v2119 -= p589 * (2 * v2119:Dot(p589))
				end

				return v2119 - p586 * v2119:Dot(p586)
			end

			local v2120 = Vector3.yAxis - p586 * Vector3.yAxis:Dot(p586)
			local Unit2 = v2120.Magnitude > 0.01 and v2120.Unit or Vector3.yAxis
			local v2122 = Unit2:Cross(p586)

			return Unit2 * (v2074:Dot(-p586) * (p587 and -1 or 1)) + v2122 * v2074:Dot(v2122)
		end
		local function v2123(p590, p591, p592)
			local v2124 = p592

			if p590 and p591 then
				v2124 = p592 - p591 * (2 * p592:Dot(p591))
			end

			return v2124:Dot(p592) > 0
		end
		local function v2125(p593, p594, p595, p596, p597)
			local v2126 = p596.Normal - p595 * p596.Normal:Dot(p595)

			if v2126.Magnitude < 0.3 then
				return false
			end

			local Unit2 = v2126.Unit
			local v2128 = p597 - p595 * (p597 - p594):Dot(p595)
			local v2129 = v2128 - Unit2 * (v2128 - p596.Position):Dot(Unit2)
			local v2130 = (p597 - v2129):Dot(Unit2)
			local v2131 = (p597 - v2128):Dot(p595)

			for _, v in ipairs({
				v2113,
				v2113 * 0.5,
				1
			}) do
				local v2134 = math.min(v, v2130 - v2081)

				if v2134 >= 0.99 then
					local v2135 = v2129 + Unit2 * v2081 + p595 * (v2131 + v2134)
					local v2136

					if p593 == "wall" then
						v2136 = v2116(v2135, Unit2, v2081 + 4)
					else
						v2136 = v2091(v2135, Unit2, v2081 + 4)
					end

					if not v2136 then
						continue
					end

					SpiderLegs.climbState = "corner"
					SpiderLegs.arc = {
						aKind = p593,
						base = v2129,
						nA = p595,
						nB = Unit2,
						right = p595:Cross(Unit2),
						h = v2131,
						r = v2134,
						s = -(v2130 - v2081 - v2134),
						lat = 0,
						flip = SpiderLegs.wallFlip,
						reflect = SpiderLegs.ceilReflect,
						axis = SpiderLegs.ceilAxis
					}
					SpiderLegs.climbTarget = p597
					SpiderLegs.climbUp = p595
					SpiderLegs.climbForward = -Unit2

					return true
				end
			end

			return false
		end
		local function v2137(p598, p599, p600, p601, p602, p603, p604)
			local v2138 = p600:Cross(p601)

			if v2138.Magnitude < 0.3 then
				return false
			end

			local Unit2 = v2138.Unit
			local v2140 = p599 + Unit2 * (p604 - p599):Dot(Unit2)
			local v2141 = p604 - v2140
			local v2142 = v2141 - Unit2 * v2141:Dot(Unit2)
			local Magnitude = v2142.Magnitude
			local v2144 = math.acos(math.clamp(p600:Dot(p601), -1, 1))
			local v2145 = v2142 - p600 * Magnitude

			SpiderLegs.climbState = "lip"
			SpiderLegs.arc = {
				aKind = p598,
				edge = v2140,
				u0 = p600,
				u1 = p601,
				phi = v2144,
				right = Unit2,
				pathA = p602,
				bNormal = p603,
				rho0 = Magnitude,
				corr = v2145,
				q = 0,
				len = math.max(1, v2144 * (Magnitude + v2081) / 2 + v2145.Magnitude),
				flip = SpiderLegs.wallFlip,
				reflect = SpiderLegs.ceilReflect,
				axis = SpiderLegs.ceilAxis
			}
			SpiderLegs.climbTarget = p604
			SpiderLegs.climbUp = p600
			SpiderLegs.climbForward = p602

			return true
		end
		local function v2146(p605, p606, p607, p608, p609)
			local hit_ = W:Raycast(p605.Position + p607 * (p609 + 2) - p606 * 0.5, -p607 * (p609 + 3), raycastParams)

			if hit_ and math.abs(hit_.Normal.Y) < 0.7 then
				if hit_.Normal:Dot(p607) > 0.7 then
					local v2148 = hit_.Normal - p606 * hit_.Normal:Dot(p606)

					if v2148.Magnitude < 0.3 then
						return false
					end

					local Unit2 = v2148.Unit

					return v2137("ceil", hit_.Position + p606 * (p605.Position - hit_.Position):Dot(p606), p606, Unit2, Unit2, hit_.Normal, p608)
				end
			end

			return false
		end
		local function v2150(p610, p611, p612, p613, p614)
			local hit_ = W:Raycast(p610 - p612 * (p614 + 2) - p611 * 0.5, p612 * (p614 + 2.5), raycastParams)

			if not hit_ or not (hit_.Normal.Y < -0.7) then
				return false
			end

			local v2152 = hit_.Normal - p611 * hit_.Normal:Dot(p611)
			local v2153 = p612:Dot(hit_.Normal)

			if v2152.Magnitude < 0.3 or math.abs(v2153) < 0.3 then
				return false
			end

			local Unit2 = v2152.Unit

			return v2137("wall", p610 + p612 * ((hit_.Position - p610):Dot(hit_.Normal) / v2153), p611, Unit2, -p612, hit_.Normal, p613)
		end

		local v2155 = SpiderLegsJumpHeld()
		local v2156 = not SpiderLegs.climbState and SpiderLegs.uprightTime <= 0 and v2082 and SpiderLegs.jumpState ~= "air" and SpiderLegs.groundY ~= nil and _G.UniversalPlayerRoot.Position.Y < SpiderLegs.groundY + v2080 + 3

		local function v2157()
			local v2158 = math.max(SpiderLegs.jumpCharge, 0.25)
			local Position = _G.UniversalPlayerRoot.Position
			local v2160 = SpiderLegs.jumpHeight * v2158
			local vector3 = Unit.Magnitude > 0 and Unit or v2114(CFrame_.LookVector) or Vector3.new(0, 0, -1)
			local WalkSpeed = Humanoid and Humanoid.WalkSpeed or 16
			local vector32 = Vector3.yAxis
			local assemblyLinearVelocity = Unit * math.max(WalkSpeed, 16) * (1 + v2158) + vector32 * math.sqrt(2 * W.Gravity * v2160)
			local v2165
			local hit_ = W:Raycast(Position, vector3 * (Unit.Magnitude > 0 and math.max(20, v2160 * 0.6) or 15), raycastParams)

			if hit_ and math.abs(hit_.Normal.Y) < 0.5 and vector3:Dot(-hit_.Normal) > 0.5 then
				v2165 = SpiderLegsJumpAim(Position, hit_, v2160, v2080, SpiderLegs.frontSpread + 4, raycastParams)
			end

			if v2165 then
				local v2167 = v2165.landY - Position.Y
				local v2168 = math.max(v2160, v2167 + 3, v2165.edgeY - Position.Y + 2)
				local v2169 = math.sqrt(2 * W.Gravity * v2168)
				local v2170 = v2169 / W.Gravity + math.sqrt(2 * (v2168 - v2167) / W.Gravity)
				local v2171 = Vector3.yAxis * v2169

				assemblyLinearVelocity = Vector3.new(v2165.land.X - Position.X, 0, v2165.land.Z - Position.Z) / v2170 + v2171
			end

			_G.UniversalPlayerRoot.AssemblyLinearVelocity = assemblyLinearVelocity
			_G.UniversalPlayerRoot.AssemblyAngularVelocity = Vector3.zero
			SpiderLegs.jumpState = "air"
			SpiderLegs.jumpCharge = 0
			SpiderLegs.jump = {
				time = 0,
				aim = v2165,
				forward = vector3
			}
		end

		if SpiderLegs.jumpState == "charge" then
			if SpiderLegs.jumpEnabled and v2156 then
				if v2155 then
					SpiderLegs.jumpCharge = math.min(1, SpiderLegs.jumpCharge + dt / SpiderLegs.jumpChargeTime)
				else
					v2157()
				end
			else
				SpiderLegs.jumpState = nil
				SpiderLegs.jumpCharge = 0
			end
		elseif SpiderLegs.jumpEnabled and v2156 and v2155 and SpiderLegs.jumpArmed then
			SpiderLegs.jumpState = "charge"
			SpiderLegs.jumpCharge = 0
		end

		SpiderLegs.jumpArmed = not v2155

		if not SpiderLegs.climbState and not SpiderLegs.jumpState and SpiderLegs.climbEnabled and v2082 and SpiderLegs.uprightTime <= 0 and v2074.Magnitude > 0.1 then
			local hit_ = W:Raycast(_G.UniversalPlayerRoot.Position, Unit * (v2081 + v2089 + 2), raycastParams)

			if hit_ and math.abs(hit_.Normal.Y) < 0.5 and Unit:Dot(-hit_.Normal) > 0.5 then
				local Unit2 = Vector3.new(hit_.Normal.X, 0, hit_.Normal.Z).Unit
				local v2174 = v2091(_G.UniversalPlayerRoot.Position, Unit2, v2081 + v2089 + 6)
				local hit_2 = W:Raycast(_G.UniversalPlayerRoot.Position, -Vector3.yAxis * (v2080 + 10), raycastParams)
				local v2176 = v2174 and (_G.UniversalPlayerRoot.Position - v2174.Position):Dot(Unit2)
				local v2177 = v2176 and math.clamp(v2176 - v2081, 3, v2089)

				if v2174 then
					local hit_3 = W:Raycast(v2174.Position + Unit2 * v2081, Vector3.yAxis * (v2177 + v2081 + 1), raycastParams)

					if hit_3 then
						v2177 = math.min(v2177, hit_3.Position.Y - v2174.Position.Y - v2081 - 1.5)
					end
				end

				if v2174 and hit_2 and hit_2.Normal.Y > 0.6 and v2177 >= 3 then
					local v2179

					if v2081 + v2177 <= v2176 then
						v2179 = -(v2176 - v2081 - v2177)
					else
						v2179 = math.asin(math.clamp((v2081 + v2177 - v2176) / v2177, 0, 1)) * v2177
					end

					SpiderLegs.climbState = "enter"
					SpiderLegs.climbNormal = v2174.Normal
					SpiderLegs.climbWallPoint = v2174.Position
					SpiderLegs.climbTarget = _G.UniversalPlayerRoot.Position
					SpiderLegs.wallFlip = false
					SpiderLegs.ceilReflect = false
					SpiderLegs.arc = {
						base = Vector3.new(v2174.Position.X, hit_2.Position.Y, v2174.Position.Z),
						nh = Unit2,
						right = Vector3.yAxis:Cross(Unit2),
						h = _G.UniversalPlayerRoot.Position.Y - hit_2.Position.Y,
						r = v2177,
						s = v2179,
						lat = 0
					}
				end
			end
		end

		if SpiderLegs.climbState == "enter" then
			local arc = SpiderLegs.arc
			local nh = arc.nh
			local right = arc.right
			local v2183 = 1.5707963267948966 * arc.r

			local function v2184(p615, p616)
				local h, n40, v2187

				if p615 <= 0 then
					v2187 = v2081 + arc.r - p615
					h = arc.h
					n40 = 0
				elseif p615 < v2183 then
					n40 = p615 / arc.r
					v2187 = v2081 + arc.r - arc.r * math.sin(n40)
					h = arc.h + arc.r - arc.r * math.cos(n40)
				else
					h = arc.h + arc.r + (p615 - v2183)
					n40 = 1.5707963267948966
					v2187 = v2081
				end

				return arc.base + nh * v2187 + Vector3.yAxis * h + right * p616, n40, v2187
			end

			local _, v2189 = v2184(arc.s, arc.lat)
			local v2190 = Vector3.yAxis * math.cos(v2189) + nh * math.sin(v2189)
			local v2191 = Vector3.yAxis * math.sin(v2189) - nh * math.cos(v2189)
			local v2192 = SpiderLegs.wallFlip and -1 or 1
			local v2193 = v2074:Dot(-nh) * v2192
			local v2194 = v2074:Dot(right)
			local v2195 = v2093(v2191 * v2193 + right * v2194)
			local v2196 = v2193 * v2195

			if v2196 > 0 and arc.s + v2196 > 0 and arc.s < arc.r * 0.1 then
				local v2197 = true

				for i = 1, math.min(2, #SpiderLegs.legs) do
					local v2199 = SpiderLegs.legs[i]

					if not v2199.onWall or v2199.stepping then
						v2197 = false
					end
				end

				arc.wait = (arc.wait or 0) + dt

				if not v2197 and arc.wait < 1.2 then
					v2196 = math.max(0, -arc.s)
				end
			end

			local s = arc.s + v2196
			local lat = arc.lat + v2194 * v2195
			local v2202, v2203, v2204 = v2184(s, lat)
			local v2205 = v2091(v2202, nh, v2204 + 4)

			if not (v2205 or lat == arc.lat) then
				lat = arc.lat

				local v2206

				v2202, v2203, v2206 = v2184(s, lat)
				v2205 = v2091(v2202, nh, v2206 + 4)
			end

			if s <= 0 and v2074.Magnitude > 0.1 and Unit:Dot(-nh) * v2192 < 0.3 then
				v2102(nil)

				if v2192 < 0 then
					SpiderLegs.holdUntilRelease = true
					SpiderLegs.holdTime = 0
				end
			elseif v2205 then
				arc.s = s
				arc.lat = lat
				SpiderLegs.climbNormal = v2205.Normal
				SpiderLegs.climbWallPoint = v2205.Position
				SpiderLegs.climbTarget = v2202
				SpiderLegs.climbUp = Vector3.yAxis * math.cos(v2203) + nh * math.sin(v2203)
				SpiderLegs.climbForward = (Vector3.yAxis * math.sin(v2203) - nh * math.cos(v2203)) * (arc.flip and -1 or 1)

				if v2183 <= s then
					SpiderLegs.climbState = "wall"
					SpiderLegs.wallHeading = SpiderLegs.climbForward
					SpiderLegs.arc = nil
				end
			else
				local v2207, v2208 = SpiderLegsFindWallTop(SpiderLegs.climbWallPoint, nh, SpiderLegs.frontSpread + 4, raycastParams)

				if v2207 then
					v2103(v2207, v2208, SpiderLegs.climbNormal, v2190)
				elseif v2189 < math.rad(30) then
					v2102(nil)
				else
					v2099()
				end
			end
		elseif SpiderLegs.climbState == "wall" then
			local climbNormal = SpiderLegs.climbNormal
			local Position
			local v2211 = v2081 + math.max(4, v2081 * 0.5)
			local v2212 = v2091(SpiderLegs.climbTarget, climbNormal, v2211)

			if v2212 then
				climbNormal = v2212.Normal
				Position = v2212.Position
			elseif SpiderLegsWallAbove(SpiderLegs.climbTarget, climbNormal, v2211, raycastParams) then
				Position = SpiderLegs.climbTarget - climbNormal * (SpiderLegs.climbTarget - SpiderLegs.climbWallPoint):Dot(climbNormal)
			end

			if Position then
				SpiderLegs.climbNormal = climbNormal
				SpiderLegs.climbWallPoint = Position

				local v2213 = Vector3.yAxis - climbNormal * Vector3.yAxis:Dot(climbNormal)
				local Unit2 = v2213.Magnitude > 0.01 and v2213.Unit or Vector3.yAxis
				local v2215 = Unit2:Cross(climbNormal)
				local v2216 = v2074:Dot(-climbNormal) * (SpiderLegs.wallFlip and -1 or 1)
				local v2217 = v2074:Dot(v2215)
				local v2218 = Unit2 * v2216 + v2215 * v2217
				local v2219 = v2093(v2218)
				local v2220 = Position + climbNormal * v2081
				local climbTarget = v2220 + v2218 * v2219
				local v2222 = false

				if math.abs(v2217) > 0.01 and not (v2091(climbTarget, climbNormal, v2211) or SpiderLegsWallAbove(climbTarget, climbNormal, v2211, raycastParams)) then
					climbTarget = v2220 + Unit2 * v2216 * v2219
				end

				if v2216 > 0 then
					local hit_ = W:Raycast(v2220, Unit2 * (v2081 + v2113 + 2), raycastParams)

					if hit_ then
						if hit_.Normal.Y < -0.7 and v2125("wall", Position, climbNormal, hit_, v2220) then
							v2222 = true
						elseif (hit_.Position - v2220):Dot(Unit2) < v2081 + 0.5 then
							climbTarget = v2220 + v2215 * v2217 * v2219
						end
					end
				elseif v2216 < 0 then
					local v2224 = v2220 + Unit2 * v2216 * v2219

					if not (v2091(v2224, climbNormal, v2211) or SpiderLegsWallAbove(v2224, climbNormal, v2211, raycastParams, -1)) then
						if v2150(Position, climbNormal, Unit2, v2220, -v2216 * v2219) then
							v2222 = true
						else
							climbTarget = v2220 + v2215 * v2217 * v2219
						end
					end
				end

				local wallHeading = SpiderLegs.wallHeading or Unit2
				local v2226 = wallHeading - climbNormal * wallHeading:Dot(climbNormal)
				local Unit3 = v2226.Magnitude > 0.01 and v2226.Unit or Unit2

				if v2218.Magnitude > 0.1 then
					local Unit4 = v2218.Unit
					local v2229 = math.clamp(math.atan2(Unit3:Cross(Unit4):Dot(climbNormal), Unit3:Dot(Unit4)), -6 * dt, 6 * dt)

					Unit3 = Unit3 * math.cos(v2229) + climbNormal:Cross(Unit3) * math.sin(v2229)
				end

				if not v2222 then
					SpiderLegs.wallHeading = Unit3
					SpiderLegs.climbTarget = climbTarget
					SpiderLegs.climbUp = climbNormal
					SpiderLegs.climbForward = Unit3
				end

				if not v2222 and v2216 < 0 then
					local hit_ = W:Raycast(climbTarget, -Vector3.yAxis * (v2080 + v2089 + 2), raycastParams)

					if hit_ and hit_.Normal.Y > 0.6 and climbTarget.Y - hit_.Position.Y <= v2080 + v2089 then
						local Unit4 = Vector3.new(climbNormal.X, 0, climbNormal.Z).Unit

						SpiderLegs.climbState = "enter"
						SpiderLegs.arc = {
							base = Vector3.new(Position.X, hit_.Position.Y, Position.Z),
							nh = Unit4,
							right = Vector3.yAxis:Cross(Unit4),
							h = v2080,
							r = v2089,
							s = 1.5707963267948966 * v2089,
							lat = 0,
							flip = Unit3:Dot(Unit2) < 0
						}
					end
				end
			else
				local v2232, v2233 = SpiderLegsFindWallTop(SpiderLegs.climbWallPoint, Vector3.new(climbNormal.X, 0, climbNormal.Z).Unit, SpiderLegs.frontSpread + 4, raycastParams)

				if v2232 then
					v2103(v2232, v2233, climbNormal, climbNormal)
				else
					v2099()
				end
			end
		elseif SpiderLegs.climbState == "over" then
			local arc = SpiderLegs.arc
			local nh = arc.nh
			local right = arc.right
			local v2237 = math.min(1, arc.q / arc.len)
			local v2238 = arc.a0 + (1.5707963267948966 - arc.a0) * v2237
			local v2239 = v2237 < 1 and Vector3.yAxis * math.cos(v2238) - nh * math.sin(v2238) or -nh
			local v2240 = v2074:Dot(-nh) * (SpiderLegs.wallFlip and -1 or 1)
			local v2241 = v2074:Dot(right)
			local v2242 = v2093(v2239 * v2240 + right * v2241)

			arc.q = math.max(0, arc.q + v2240 * v2242)
			arc.edge += right * v2241 * v2242

			local v2243 = math.min(1, arc.q / arc.len)
			local v2244 = math.max(0, arc.q - arc.len)
			local v2245 = arc.a0 + (1.5707963267948966 - arc.a0) * v2243
			local climbUp = nh * math.cos(v2245) + Vector3.yAxis * math.sin(v2245)
			local climbTarget = arc.edge + climbUp * (arc.rho0 + (v2080 - arc.rho0) * v2243) + arc.corr * (1 - v2243)

			if v2244 > 0 then
				climbTarget = arc.edge + Vector3.yAxis * (v2080 + (arc.roofY - arc.edge.Y) * (arc.uEnd > 0 and math.min(1, v2244 / arc.uEnd) or 1)) - nh * v2244
			end

			SpiderLegs.climbTarget = climbTarget
			SpiderLegs.climbUp = climbUp
			SpiderLegs.climbForward = Vector3.yAxis * math.cos(v2245) - nh * math.sin(v2245)

			if arc.len + arc.uEnd <= arc.q then
				local wallFlip = SpiderLegs.wallFlip

				v2102(-nh)

				if wallFlip then
					SpiderLegs.holdUntilRelease = true
					SpiderLegs.holdTime = 0
				end
			elseif arc.q <= 0 and v2240 < 0 then
				local climbNormal = SpiderLegs.climbNormal
				local Unit2 = (Vector3.yAxis - climbNormal * Vector3.yAxis:Dot(climbNormal)).Unit

				SpiderLegs.climbState = "wall"
				SpiderLegs.arc = nil
				SpiderLegs.climbTarget = SpiderLegs.climbWallPoint + climbNormal * v2081
				SpiderLegs.climbUp = climbNormal
				SpiderLegs.climbForward = Unit2
				SpiderLegs.wallHeading = Unit2
			end
		elseif SpiderLegs.climbState == "corner" then
			local arc = SpiderLegs.arc
			local nA = arc.nA
			local nB = arc.nB
			local right = arc.right
			local v2255 = arc.aKind == "wall"
			local v2256 = 1.5707963267948966 * arc.r

			local function v2257(p617, p618)
				local h, n41, v2260

				if p617 <= 0 then
					v2260 = v2081 + arc.r - p617
					h = arc.h
					n41 = 0
				elseif p617 < v2256 then
					n41 = p617 / arc.r
					v2260 = v2081 + arc.r - arc.r * math.sin(n41)
					h = arc.h + arc.r - arc.r * math.cos(n41)
				else
					h = arc.h + arc.r + (p617 - v2256)
					n41 = 1.5707963267948966
					v2260 = v2081
				end

				return arc.base + nB * v2260 + nA * h + right * p618, n41, v2260
			end
			local function v2261(p619, p620)
				if v2255 then
					return v2116(p619, nB, p620 + 4)
				end

				return v2091(p619, nB, p620 + 4)
			end

			local v2262 = v2118(arc.aKind, nA, arc.flip, arc.reflect, arc.axis)
			local v2263 = v2262:Dot(-nB)
			local v2264 = v2262:Dot(right)
			local _, v2266 = v2257(arc.s, arc.lat)
			local v2267 = v2093((nA * math.sin(v2266) - nB * math.cos(v2266)) * v2263 + right * v2264)
			local s = arc.s + v2263 * v2267
			local lat = arc.lat + v2264 * v2267
			local v2270, v2271, v2272 = v2257(s, lat)
			local v2273 = v2261(v2270, v2272)

			if not (v2273 or lat == arc.lat) then
				lat = arc.lat

				local v2274

				v2270, v2271, v2274 = v2257(s, lat)
				v2273 = v2261(v2270, v2274)
			end

			if s <= 0 and v2263 < 0 then
				SpiderLegs.arc = nil

				if v2255 then
					SpiderLegs.climbState = "wall"
					SpiderLegs.climbNormal = nA
					SpiderLegs.climbWallPoint = v2270 - nA * arc.h
					SpiderLegs.wallFlip = arc.flip
				else
					SpiderLegs.climbState = "ceil"
					SpiderLegs.ceilNormal = nA
					SpiderLegs.ceilPoint = v2270 - nA * arc.h

					local axis = arc.axis

					SpiderLegs.ceilReflect = arc.reflect
					SpiderLegs.ceilAxis = axis
				end

				SpiderLegs.climbTarget = v2270
				SpiderLegs.climbUp = nA
				SpiderLegs.climbForward = nB
				SpiderLegs.wallHeading = nB
			elseif v2273 then
				arc.s = s
				arc.lat = lat
				SpiderLegs.climbTarget = v2270
				SpiderLegs.climbUp = nA * math.cos(v2271) + nB * math.sin(v2271)
				SpiderLegs.climbForward = nA * math.sin(v2271) - nB * math.cos(v2271)

				if v2256 <= s then
					SpiderLegs.arc = nil
					SpiderLegs.wallHeading = SpiderLegs.climbForward

					if v2255 then
						SpiderLegs.climbState = "ceil"
						SpiderLegs.ceilNormal = v2273.Normal
						SpiderLegs.ceilPoint = v2273.Position
						SpiderLegs.ceilReflect = not arc.flip
						SpiderLegs.ceilAxis = v2114(nA)
					else
						SpiderLegs.climbState = "wall"
						SpiderLegs.climbNormal = v2273.Normal
						SpiderLegs.climbWallPoint = v2273.Position
						SpiderLegs.wallFlip = v2123(arc.reflect, arc.axis, -nB)
					end
				end
			end
		elseif SpiderLegs.climbState == "ceil" then
			local ceilNormal = SpiderLegs.ceilNormal
			local v2277 = v2081 + math.max(4, v2081 * 0.5)
			local v2278 = v2116(SpiderLegs.climbTarget, ceilNormal, v2277)

			if v2278 then
				local Normal = v2278.Normal

				SpiderLegs.ceilNormal = Normal
				SpiderLegs.ceilPoint = v2278.Position

				local v2280 = v2118("ceil", Normal, false, SpiderLegs.ceilReflect, SpiderLegs.ceilAxis)
				local v2281 = v2093(v2280)
				local v2282 = v2278.Position + Normal * v2081
				local climbTarget = v2282 + v2280 * v2281
				local v2284 = false

				if v2280.Magnitude > 0.1 then
					local Unit2 = v2280.Unit
					local hit_ = W:Raycast(v2282, Unit2 * (v2081 + v2113 + 2), raycastParams)

					if hit_ and math.abs(hit_.Normal.Y) < 0.7 then
						if hit_.Normal:Dot(Unit2) < -0.3 then
							if v2125("ceil", v2278.Position, Normal, hit_, v2282) then
								v2284 = true
							else
								local v2287 = v2280:Dot(-hit_.Normal)

								if (v2282 - hit_.Position):Dot(hit_.Normal) - v2287 * v2281 < v2081 + 0.5 then
									climbTarget = v2282 + (v2280 + hit_.Normal * v2287) * v2281
								end
							end
						end
					end

					if not (v2284 or v2116(climbTarget, Normal, v2277)) then
						if v2146(v2278, Normal, Unit2, v2282, v2281) then
							v2284 = true
						else
							local v2288 = SpiderLegs.ceilAxis and SpiderLegs.ceilAxis - Normal * SpiderLegs.ceilAxis:Dot(Normal) or Unit2
							local Unit3 = v2288.Magnitude > 0.01 and v2288.Unit or Unit2
							local Unit4 = Unit3:Cross(Normal).Unit
							local v2291 = v2280:Dot(Unit3)
							local v2292 = v2280:Dot(Unit4)
							local v2293 = Unit3 * v2291
							local v2294 = Unit4 * v2292
							local v2295 = math.abs(v2292)

							if math.abs(v2291) < v2295 then
								local v2296 = v2293

								v2293 = v2294
								v2294 = v2296
							end

							climbTarget = v2282

							local v2297, v2298, v2299 = ipairs({
								v2293,
								v2294
							})

							for _, v in v2297, v2298, v2299 do
								if v.Magnitude > 0.05 and v2116(v2282 + v * v2281, Normal, v2277) then
									climbTarget = v2282 + v * v2281

									break
								end
							end
						end
					end

					if not v2284 then
						local v2302 = climbTarget - v2282

						if v2302.Magnitude > 0.001 then
							if W:Raycast(v2282, v2302.Unit * (v2302.Magnitude + v2081 * 0.6), raycastParams) then
								climbTarget = v2282
							end
						end
					end
				end

				if not v2284 then
					local wallHeading = SpiderLegs.wallHeading or v2280
					local v2304 = wallHeading - Normal * wallHeading:Dot(Normal)

					if v2304.Magnitude < 0.01 then
						v2304 = SpiderLegs.ceilAxis or Normal:Cross(Vector3.xAxis)
					end

					local v2305 = v2304 - Normal * v2304:Dot(Normal)
					local Unit2 = v2305.Magnitude > 0.01 and v2305.Unit or Normal:Cross(Vector3.zAxis).Unit

					if v2280.Magnitude > 0.1 then
						local Unit3 = v2280.Unit
						local v2308 = math.clamp(math.atan2(Unit2:Cross(Unit3):Dot(Normal), Unit2:Dot(Unit3)), -6 * dt, 6 * dt)

						Unit2 = Unit2 * math.cos(v2308) + Normal:Cross(Unit2) * math.sin(v2308)
					end

					SpiderLegs.wallHeading = Unit2
					SpiderLegs.climbTarget = climbTarget
					SpiderLegs.climbUp = Normal
					SpiderLegs.climbForward = Unit2
				end
			else
				v2099()
			end
		elseif SpiderLegs.climbState == "lip" then
			local arc = SpiderLegs.arc
			local v2310 = v2118(arc.aKind, arc.u0, arc.flip, arc.reflect, arc.axis)
			local v2311 = v2310:Dot(arc.pathA)
			local v2312 = v2310:Dot(arc.right)

			local function v2313(p621)
				local v2314 = (arc.u0 * math.sin((1 - p621) * arc.phi) + arc.u1 * math.sin(p621 * arc.phi)) / math.max(math.sin(arc.phi), 0.05)
				local Unit2 = v2314.Magnitude > 0.01 and v2314.Unit or arc.u1
				local v2316 = -arc.u0 * math.cos((1 - p621) * arc.phi) + arc.u1 * math.cos(p621 * arc.phi)
				local v2317 = v2316 - Unit2 * v2316:Dot(Unit2)

				return Unit2, v2317.Magnitude > 0.01 and v2317.Unit or -arc.u0
			end

			local _, v2319 = v2313(math.min(1, arc.q / arc.len))
			local v2320 = v2093(v2319 * v2311 + arc.right * v2312)

			arc.q = math.max(0, arc.q + v2311 * v2320)
			arc.edge += arc.right * v2312 * v2320

			local v2321 = math.min(1, arc.q / arc.len)
			local v2322, v2323 = v2313(v2321)
			local climbTarget = arc.edge + v2322 * (arc.rho0 + (v2081 - arc.rho0) * v2321) + arc.corr * (1 - v2321) - arc.u0 * (0.5 * v2321)

			SpiderLegs.climbTarget = climbTarget
			SpiderLegs.climbUp = v2322
			SpiderLegs.climbForward = v2323

			if v2321 >= 1 then
				SpiderLegs.arc = nil
				SpiderLegs.wallHeading = v2323

				if arc.aKind == "ceil" then
					SpiderLegs.climbState = "wall"
					SpiderLegs.climbNormal = arc.bNormal
					SpiderLegs.climbWallPoint = climbTarget - arc.u1 * v2081
					SpiderLegs.wallFlip = v2123(arc.reflect, arc.axis, arc.pathA)
				else
					SpiderLegs.climbState = "ceil"
					SpiderLegs.ceilNormal = arc.bNormal
					SpiderLegs.ceilPoint = climbTarget - arc.u1 * v2081
					SpiderLegs.ceilReflect = not arc.flip
					SpiderLegs.ceilAxis = v2114(arc.u0)
				end
			elseif arc.q <= 0 and v2311 < 0 then
				SpiderLegs.arc = nil

				if arc.aKind == "ceil" then
					SpiderLegs.climbState = "ceil"
					SpiderLegs.ceilNormal = arc.u0
					SpiderLegs.ceilPoint = climbTarget - arc.u0 * v2081

					local axis = arc.axis

					SpiderLegs.ceilReflect = arc.reflect
					SpiderLegs.ceilAxis = axis
				else
					SpiderLegs.climbState = "wall"
					SpiderLegs.climbNormal = arc.u0
					SpiderLegs.climbWallPoint = climbTarget - arc.u0 * v2081
					SpiderLegs.wallFlip = arc.flip
				end
			end
		end

		if SpiderLegs.climbState and (SpiderLegs.climbState ~= "enter" and v2155 or not v2082 or not SpiderLegs.climbEnabled or (_G.UniversalPlayerRoot.Position - SpiderLegs.climbTarget).Magnitude > 30) then
			v2099()
		end

		local v2326 = SpiderLegs.climbState ~= nil
		local climbUp = v2326 and SpiderLegs.climbUp or Vector3.yAxis
		local surfaceUp = SpiderLegs.surfaceUp or Vector3.yAxis

		if surfaceUp:Dot(climbUp) < -0.5 then
			surfaceUp = CFrame_.UpVector
		end

		local v2329 = surfaceUp:Lerp(climbUp, math.min(1, dt * 10))

		SpiderLegs.surfaceUp = v2329.Magnitude > 0.01 and v2329.Unit or climbUp

		local climbForward

		if v2326 then
			climbForward = SpiderLegs.climbForward
		elseif SpiderLegs.uprightTime > 0 and SpiderLegs.exitForward then
			climbForward = SpiderLegs.exitForward
		else
			local LookVector = CFrame_.LookVector

			climbForward = Vector3.new(LookVector.X, 0, LookVector.Z)
		end

		local v2332 = climbForward - SpiderLegs.surfaceUp * climbForward:Dot(SpiderLegs.surfaceUp)
		local Unit2 = v2332.Magnitude > 0.01 and v2332.Unit or SpiderLegs.surfaceUp:Cross(Vector3.xAxis).Magnitude > 0.01 and SpiderLegs.surfaceUp:Cross(Vector3.xAxis).Unit or Vector3.zAxis
		local v2334 = Unit2:Cross(SpiderLegs.surfaceUp)
		local AssemblyLinearVelocity = _G.UniversalPlayerRoot.AssemblyLinearVelocity
		local v2336 = AssemblyLinearVelocity - SpiderLegs.surfaceUp * AssemblyLinearVelocity:Dot(SpiderLegs.surfaceUp)
		local stepTime = SpiderLegs.stepTime

		if v2336.Magnitude > 0.1 then
			stepTime = math.max(0.08, math.min(SpiderLegs.stepTime, SpiderLegs.stepDistance * 1.5 / v2336.Magnitude))
		end

		local v2338 = v2336 * stepTime * 0.8

		if SpiderLegs.stepDistance < v2338.Magnitude then
			v2338 = v2338.Unit * SpiderLegs.stepDistance
		end

		local v2339 = v2081 + (v2080 - v2081) * math.max(0, SpiderLegs.surfaceUp.Y)
		local v2340 = v2326 and math.max(8, v2081) or v2079 + 10
		local nh

		if SpiderLegs.climbEnabled and v2082 and SpiderLegs.uprightTime <= 0 and not SpiderLegs.jumpState then
			if SpiderLegs.climbState == "enter" and SpiderLegs.arc.s < SpiderLegs.arc.r * 0.35 then
				nh = SpiderLegs.arc.nh
			elseif not SpiderLegs.climbState and v2074.Magnitude > 0.1 then
				local hit_ = W:Raycast(_G.UniversalPlayerRoot.Position, Unit * (v2081 + v2089 + 12), raycastParams)

				if hit_ and math.abs(hit_.Normal.Y) < 0.5 and Unit:Dot(-hit_.Normal) > 0.5 then
					nh = Vector3.new(hit_.Normal.X, 0, hit_.Normal.Z).Unit
				end
			end
		end

		local n42 = 0
		local n43 = 0
		local v2345, v2346, v2347 = ipairs(SpiderLegs.legs)

		for k, v in v2345, v2346, v2347 do
			local v2350 = CFrame_.Position + v2334 * v.side * 1.2 + Unit2 * v.front - SpiderLegs.surfaceUp * 0.5
			local v2351 = v2334 * v.side * SpiderLegs.spread + Unit2 * v.front * SpiderLegs.frontSpread + v2338
			local Position, Normal = SpiderLegsFoothold(CFrame_.Position, v2351, SpiderLegs.surfaceUp, v2339, v2340, raycastParams, v2326)
			local v2354

			if Position and v2079 * 0.97 < (Position - v2350).Magnitude then
				v2354 = Position
				Position = nil
			end

			if not Position then
				local v2355, v2356, v2357 = ipairs({
					0.6,
					0.3
				})
				local v2358 = geniter(v2355, v2356, v2357)

				while true do
					local v2359 = table.pack(v2358())

					if not v2359[1] then
						break
					end

					local v2360, v2361 = SpiderLegsFoothold(CFrame_.Position, v2351 * v2359[3], SpiderLegs.surfaceUp, v2339, v2340, raycastParams, v2326)

					if v2360 and (v2360 - v2350).Magnitude <= v2079 * 0.97 then
						Position = v2360
						Normal = v2361

						break
					end
				end
			end

			local onWall = false

			if nh and k <= 2 and v.front >= 0 then
				local v2363 = SpiderLegs.legs[1]

				if k == 1 or v.onWall or v.reachStep or v2363.onWall and not v2363.stepping then
					local hit_ = W:Raycast(CFrame_.Position + v2334 * v.side * SpiderLegs.spread + Vector3.yAxis * 2, -nh * (v2081 + v2089 + 20), raycastParams)

					if hit_ and math.abs(hit_.Normal.Y) < 0.7 and (hit_.Position - v2350).Magnitude < v2079 * 0.9 then
						Position = hit_.Position
						Normal = hit_.Normal
						onWall = true
					end
				end
			end

			if not onWall then
				v.onWall = false
			end

			v.noTarget = Position == nil

			if Position and Normal.Y > 0.6 and SpiderLegs.surfaceUp:Dot(Vector3.yAxis) > 0.9 then
				n42 += Position.Y
				n43 += 1
			end

			if v.stepping then
				if Position then
					v.to = Position
					v.toNormal = Normal
				end

				v.t += dt / (v.reachStep and math.max(SpiderLegs.stepTime, 0.3) * 1.4 or stepTime)

				local v2365 = math.min(v.t, 1)

				v.foot = v.from:Lerp(v.to, v2365 * v2365 * (3 - 2 * v2365)) + SpiderLegs.surfaceUp * math.sin(math.pi * v2365) * SpiderLegs.stepHeight * (v.reachStep and 2.5 or 1)

				if v2365 >= 1 then
					v.stepping = false
					v.planted = v.to
					v.normal = v.toNormal
					v.foot = v.to
					v.onWall = onWall
					v.reachStep = false
				end
			elseif Position then
				if v.planted then
					local v2366 = (Position - v.planted).Magnitude > SpiderLegs.stepDistance
					local v2367 = (v.planted - v2350).Magnitude > v2079 * (v2326 and 0.85 or 0.98)
					local v2368 = false
					local v2369, v2370, v2371 = ipairs(SpiderLegs.legs)
					local v2372 = geniter(v2369, v2370, v2371)

					while true do
						local v2373 = table.pack(v2372())

						if not v2373[1] then
							break
						end

						local v2374 = v2373[3]

						if v2374.group ~= v.group and v2374.stepping then
							v2368 = true

							break
						end
					end

					local reachStep = onWall and not v.onWall

					if reachStep or v2366 and not v2368 or v2367 then
						v.stepping = true
						v.reachStep = reachStep
						v.from = v.planted
						v.to = Position
						v.toNormal = Normal
						v.t = 0
					end

					v.foot = v.planted
				else
					v.stepping = true
					v.reachStep = onWall
					v.from = v.foot or Position
					v.to = Position
					v.toNormal = Normal
					v.t = 0
					v.foot = v.from
				end
			elseif v2326 and v.planted and (v.planted - v2350).Magnitude < v2079 * 0.8 then
				v.foot = v.planted
			else
				local v2376

				if v2326 then
					v2376 = CFrame_.Position + v2351 - SpiderLegs.surfaceUp * v2339
				elseif SpiderLegs.jumpState == "air" and AssemblyLinearVelocity.Y > 0 then
					v2376 = v2350 + v2334 * v.side * SpiderLegs.spread * 0.8 + Unit2 * v.front * SpiderLegs.frontSpread * 0.8 - SpiderLegs.surfaceUp * v2079 * 0.4
				elseif v2354 then
					v2376 = v2350 + (v2354 - v2350).Unit * v2079 * 0.95
				else
					v2376 = v2350 + v2334 * v.side * SpiderLegs.spread + Unit2 * v.front * SpiderLegs.frontSpread - SpiderLegs.surfaceUp * v2079 * 0.85
				end

				v.foot = v.foot and v.foot:Lerp(v2376, math.min(1, dt * 8)) or v2376
				v.planted = nil
				v.normal = nil
			end

			local normal = v.normal or SpiderLegs.surfaceUp

			if v.stepping then
				normal = normal:Lerp(v.toNormal or SpiderLegs.surfaceUp, math.min(v.t, 1))
			end

			local Unit3 = normal.Magnitude > 0.01 and normal.Unit or SpiderLegs.surfaceUp
			local v2379 = v.front ~= 0 and v.front * 0.5 or 0.3
			local v2380 = SpiderLegs.surfaceUp * 0.4 + Unit3 * 0.4 + v2334 * v.side * 0.6 + (Unit2 - Unit3 * Unit2:Dot(Unit3)) * v2379

			v.joints = SpiderLegsSolve(v2350, v.foot, v2380.Magnitude > 0.01 and v2380.Unit or SpiderLegs.surfaceUp, SpiderLegs.segLength, activeSegCount)
		end

		SpiderLegs.groundY = n43 > 0 and n42 / n43 or nil

		if SpiderLegs.jumpFill then
			local jumpCharge = SpiderLegs.jumpState == "charge" and SpiderLegs.jumpCharge or 0

			SpiderLegs.jumpFill.Size = UDim2.fromScale(jumpCharge, jumpCharge)
		end

		if SpiderLegs.jumpGui then
			SpiderLegs.jumpGui.Enabled = SpiderLegs.jumpEnabled or v2326 or SpiderLegs.uprightTime > 0
		end

		local v2382, v2383, v2384 = ipairs(SpiderLegs.parts)

		for _, v in v2382, v2383, v2384 do
			local v2387 = SpiderLegs.legs[v.leg]
			local joints = v2387 and v2387.joints

			if joints and v.part.Parent then
				local v2389 = joints[v.seg + 1]

				v.part.CFrame = CFrame.lookAt((joints[v.seg] + v2389) / 2, v2389, Unit2)
				v.part.AssemblyLinearVelocity = Vector3.zero
				v.part.AssemblyAngularVelocity = Vector3.zero
			end
		end

		local lift = SpiderLegs.lift

		if not lift or not lift.Parent or lift.Attachment0 == nil or lift.Attachment0.Parent ~= _G.UniversalPlayerRoot then
			if lift then
				if lift.Attachment0 then
					lift.Attachment0:Destroy()
				end

				lift:Destroy()
			end

			if SpiderLegs.orient then
				SpiderLegs.orient:Destroy()
			end

			local Attachment = Instance.new("Attachment")

			Attachment.Name = "SpiderLegsLiftAttachment"
			Attachment.Parent = _G.UniversalPlayerRoot
			lift = Instance.new("AlignPosition")
			lift.Name = "SpiderLegsLift"
			lift.Mode = Enum.PositionAlignmentMode.OneAttachment
			lift.Attachment0 = Attachment
			lift.ForceLimitMode = Enum.ForceLimitMode.PerAxis
			lift.ForceRelativeTo = Enum.ActuatorRelativeTo.World
			lift.Responsiveness = 40
			lift.Parent = _G.UniversalPlayerRoot
			SpiderLegs.lift = lift

			local AlignOrientation = Instance.new("AlignOrientation")

			AlignOrientation.Name = "SpiderLegsOrientation"
			AlignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
			AlignOrientation.Attachment0 = Attachment
			AlignOrientation.MaxTorque = math.huge
			AlignOrientation.Responsiveness = 20
			AlignOrientation.Enabled = false
			AlignOrientation.Parent = _G.UniversalPlayerRoot
			SpiderLegs.orient = AlignOrientation
		end

		lift.MaxVelocity = math.max(60, SpiderLegs.climbSpeed * 2)

		local v2393 = SpiderLegs.jumpState == "air"

		if v2326 or SpiderLegs.uprightTime > 0 or SpiderLegs.jumpState or SpiderLegs.jumpEnabled and v2082 then
			if Humanoid and SpiderLegs.jumpBlocked ~= Humanoid then
				Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
				SpiderLegs.jumpBlocked = Humanoid
			end
		elseif SpiderLegs.jumpBlocked then
			local jumpBlocked = SpiderLegs.jumpBlocked

			SpiderLegs.jumpBlocked = nil
			task.spawn(function()
				local UserInputService2 = game:GetService("UserInputService")
				local now = os.clock()

				while true do
					task.wait(0.1)

					if UserInputService2:IsKeyDown(Enum.KeyCode.Space) then
						if os.clock() - now > 3 then
							break
						end
					else
						break
					end
				end

				if jumpBlocked.Parent and SpiderLegs.jumpBlocked ~= jumpBlocked then
					jumpBlocked:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				end
			end)
		end

		local n44 = 0

		if SpiderLegs.jumpState == "charge" then
			local jumpCharge = SpiderLegs.jumpCharge

			n44 = v2080 * 0.55 * (1 - (1 - jumpCharge) * (1 - jumpCharge))
		end

		if SpiderLegs.landTime > 0 then
			SpiderLegs.landTime = math.max(0, SpiderLegs.landTime - dt)
			n44 = math.max(n44, v2080 * 0.3 * math.sin(math.pi * (1 - SpiderLegs.landTime / 0.35)))
		end

		local v2399 = math.clamp(n44, 0, math.max(0, v2080 - 4))

		if v2326 or SpiderLegs.uprightTime > 0 or v2393 then
			if Humanoid and not Humanoid.PlatformStand then
				Humanoid.PlatformStand = true
				SpiderLegs.platformStandSet = true
			end

			if v2326 then
				lift.MaxAxesForce = Vector3.new(10000000, 10000000, 10000000)
				lift.Enabled = true
				lift.Position = SpiderLegs.climbTarget
				SpiderLegs.orient.CFrame = CFrame.lookAt(Vector3.zero, SpiderLegs.climbForward, SpiderLegs.climbUp)
				SpiderLegs.orient.Responsiveness = 20
				SpiderLegs.orient.Enabled = true
			elseif v2393 then
				local jump = SpiderLegs.jump
				local Position = _G.UniversalPlayerRoot.Position
				local AssemblyLinearVelocity2 = _G.UniversalPlayerRoot.AssemblyLinearVelocity
				local Gravity = W.Gravity
				local v2404 = n43 > 0 and n42 / n43 + v2080
				local u2405 = false

				jump.time += dt
				lift.Enabled = false
				SpiderLegs.orient.CFrame = CFrame.lookAt(Vector3.zero, jump.forward, Vector3.yAxis)
				SpiderLegs.orient.Responsiveness = 20
				SpiderLegs.orient.Enabled = true

				local function v2406(p622)
					local Normal = p622.Normal
					local v2408 = Vector3.yAxis - Normal * Vector3.yAxis:Dot(Normal)
					local Unit3 = v2408.Magnitude > 0.01 and v2408.Unit or Vector3.yAxis

					SpiderLegs.climbState = "wall"
					SpiderLegs.climbNormal = Normal
					SpiderLegs.climbWallPoint = p622.Position
					SpiderLegs.climbTarget = p622.Position + Normal * v2081
					SpiderLegs.climbUp = Normal
					SpiderLegs.climbForward = Unit3
					SpiderLegs.wallHeading = Unit3
					SpiderLegs.wallFlip = false
					SpiderLegs.ceilReflect = false
					SpiderLegs.jumpState = nil
					SpiderLegs.jump = nil
					_G.UniversalPlayerRoot.AssemblyLinearVelocity = Vector3.zero
					u2405 = true
				end

				if SpiderLegs.climbEnabled and v2082 then
					if AssemblyLinearVelocity2.Y > 0 then
						local hit_ = W:Raycast(Position, Vector3.yAxis * (v2081 + AssemblyLinearVelocity2.Y * dt + 1), raycastParams)

						if hit_ and hit_.Normal.Y < -0.7 then
							local vector3 = v2114(jump.forward) or Vector3.new(0, 0, -1)

							SpiderLegs.climbState = "ceil"
							SpiderLegs.ceilNormal = hit_.Normal
							SpiderLegs.ceilPoint = hit_.Position
							SpiderLegs.ceilReflect = false
							SpiderLegs.ceilAxis = nil
							SpiderLegs.wallFlip = false
							SpiderLegs.climbTarget = hit_.Position + hit_.Normal * v2081
							SpiderLegs.climbUp = hit_.Normal
							SpiderLegs.climbForward = vector3
							SpiderLegs.wallHeading = vector3
							SpiderLegs.jumpState = nil
							SpiderLegs.jump = nil
							_G.UniversalPlayerRoot.AssemblyLinearVelocity = Vector3.zero
							u2405 = true
						end
					end

					if not (u2405 or jump.aim) then
						local v2412

						if jump.wallN then
							v2412 = v2091(Position, jump.wallN, v2081 + 4)

							if not v2412 then
								jump.wallN = nil
							end
						else
							local vector3 = Vector3.new(AssemblyLinearVelocity2.X, 0, AssemblyLinearVelocity2.Z)

							if vector3.Magnitude > 1 then
								local Unit3 = vector3.Unit
								local hit_ = W:Raycast(Position, Unit3 * (v2081 + vector3.Magnitude * dt + 1), raycastParams)

								if hit_ and math.abs(hit_.Normal.Y) < 0.5 and Unit3:Dot(-hit_.Normal) > 0.5 then
									v2412 = hit_
								end
							end
						end

						if v2412 then
							if AssemblyLinearVelocity2.Y < 15 then
								v2406(v2412)
							else
								jump.wallN = v2412.Normal

								local v2416 = AssemblyLinearVelocity2:Dot(v2412.Normal)

								if v2416 < 0 then
									AssemblyLinearVelocity2 -= v2412.Normal * v2416
									_G.UniversalPlayerRoot.AssemblyLinearVelocity = AssemblyLinearVelocity2
								end
							end
						end
					end
				end

				if u2405 or not jump.aim then
					if not u2405 and Unit.Magnitude > 0 then
						local vector3 = Vector3.new(AssemblyLinearVelocity2.X, 0, AssemblyLinearVelocity2.Z)
						local v2418 = math.max(vector3.Magnitude, Humanoid and Humanoid.WalkSpeed or 16)
						local v2419 = vector3 + Unit * 30 * dt

						if v2418 < v2419.Magnitude then
							v2419 = v2419.Unit * v2418
						end

						_G.UniversalPlayerRoot.AssemblyLinearVelocity = Vector3.new(v2419.X, _G.UniversalPlayerRoot.AssemblyLinearVelocity.Y, v2419.Z)
					end
				else
					local aim = jump.aim
					local v2421 = AssemblyLinearVelocity2.Y * AssemblyLinearVelocity2.Y + 2 * Gravity * (Position.Y - aim.landY)

					if v2421 < 0 then
						jump.aim = nil
					else
						local v2422 = math.max((AssemblyLinearVelocity2.Y + math.sqrt(v2421)) / Gravity, 0.05)
						local v2423 = Vector3.new(aim.land.X - Position.X, 0, aim.land.Z - Position.Z) / v2422

						if v2423.Magnitude > 120 then
							v2423 = v2423.Unit * 120
						end

						if Position.Y < aim.edgeY then
							local v2424 = (Position - aim.face):Dot(aim.n)
							local v2425 = -v2423:Dot(aim.n)
							local v2426 = math.max(0, (v2424 - 2.5) / dt)

							if v2426 < v2425 then
								v2423 += aim.n * (v2425 - v2426)
							end
						end

						_G.UniversalPlayerRoot.AssemblyLinearVelocity = Vector3.new(v2423.X, AssemblyLinearVelocity2.Y, v2423.Z)
					end
				end

				if not u2405 then
					if v2404 and AssemblyLinearVelocity2.Y <= 0 and Position.Y <= v2404 + math.max(1, -AssemblyLinearVelocity2.Y * dt * 2) then
						lift.MaxAxesForce = Vector3.new(10000000, 10000000, 10000000)
						lift.Enabled = true
						lift.Position = Vector3.new(Position.X, v2404, Position.Z)
						_G.UniversalPlayerRoot.AssemblyLinearVelocity = Vector3.new(AssemblyLinearVelocity2.X * 0.3, 0, AssemblyLinearVelocity2.Z * 0.3)
						SpiderLegs.exitForward = jump.forward
						SpiderLegs.uprightTime = 0.1
						SpiderLegs.landTime = 0.35
						SpiderLegs.jumpState = nil
						SpiderLegs.jump = nil
					elseif jump.time > 8 or not v2082 then
						SpiderLegs.exitForward = jump.forward
						SpiderLegs.uprightTime = 0.1
						SpiderLegs.jumpState = nil
						SpiderLegs.jump = nil
					end
				end
			else
				local Position = _G.UniversalPlayerRoot.Position
				local v2428 = n43 > 0 and n42 / n43 + v2080

				if v2428 and Position.Y < v2428 + 3 then
					lift.MaxAxesForce = Vector3.new(10000000, 10000000, 10000000)
					lift.Enabled = true
					lift.Position = Vector3.new(Position.X, v2428 - v2399, Position.Z)
				else
					lift.Enabled = false

					local AssemblyLinearVelocity2 = _G.UniversalPlayerRoot.AssemblyLinearVelocity

					if AssemblyLinearVelocity2.Y > 0 then
						_G.UniversalPlayerRoot.AssemblyLinearVelocity = Vector3.new(AssemblyLinearVelocity2.X, 0, AssemblyLinearVelocity2.Z)
					end
				end

				SpiderLegs.orient.CFrame = CFrame.lookAt(Vector3.zero, SpiderLegs.exitForward or Unit2, Vector3.yAxis)
				SpiderLegs.orient.Responsiveness = 8
				SpiderLegs.orient.Enabled = true

				local v2430 = false

				if SpiderLegs.holdUntilRelease then
					SpiderLegs.holdTime = (SpiderLegs.holdTime or 0) + dt
					v2430 = v2074.Magnitude > 0.1 and SpiderLegs.holdTime < 2.5

					if not v2430 then
						SpiderLegs.holdUntilRelease = false
					end
				end

				if not v2430 then
					SpiderLegs.uprightTime -= dt * (_G.UniversalPlayerRoot.CFrame.UpVector:Dot(Vector3.yAxis) > 0.95 and 1 or 0.25)
				end
			end
		else
			SpiderLegs.orient.Enabled = false

			if SpiderLegs.platformStandSet and Humanoid then
				local AssemblyLinearVelocity2 = _G.UniversalPlayerRoot.AssemblyLinearVelocity

				_G.UniversalPlayerRoot.AssemblyLinearVelocity = Vector3.new(AssemblyLinearVelocity2.X, math.min(AssemblyLinearVelocity2.Y, 0), AssemblyLinearVelocity2.Z)
				_G.UniversalPlayerRoot.AssemblyAngularVelocity = Vector3.zero
				Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
				Humanoid.PlatformStand = false
				task.delay(1, function()
					if Humanoid.Parent then
						Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
					end
				end)
				SpiderLegs.platformStandSet = false
				SpiderLegs.exitForward = nil
			end

			if n43 > 0 and v2082 then
				lift.MaxAxesForce = Vector3.new(0, 10000000, 0)
				lift.Enabled = true

				local Position = _G.UniversalPlayerRoot.Position

				lift.Position = Vector3.new(Position.X, n42 / n43 + v2080 - v2399, Position.Z)
			else
				lift.Enabled = false
			end
		end
	end)
end

do
	SpiderLegsAlignToy = function(p623, p624, p625, p626)
		local ok, result2, result3 = pcall(function()
			return p624:GetBoundingBox()
		end)

		if not ok then
			return
		end

		local t80 = {
			result2.RightVector * result3.X,
			result2.UpVector * result3.Y,
			result2.LookVector * result3.Z
		}
		local v2437 = t80[1]

		for i = 2, 3 do
			if v2437.Magnitude < t80[i].Magnitude then
				v2437 = t80[i]
			end
		end

		local v2439 = p625.CFrame:VectorToObjectSpace(v2437.Unit)
		local v2440 = p625.CFrame:PointToObjectSpace(result2.Position)

		p626.CFrame = CFrame.lookAt(v2440, v2440 + v2439, math.abs(v2439.Y) > 0.9 and Vector3.xAxis or Vector3.yAxis)
		SpiderLegs.toyLength = v2437.Magnitude

		if SpiderLegs.autoFit then
			SpiderLegs.segLength = v2437.Magnitude * 0.92
		end
	end
end

do
	SpiderLegsDestroy = function()
		if SpiderLegs.conn then
			SpiderLegs.conn:Disconnect()
			SpiderLegs.conn = nil
		end

		if SpiderLegs.lift then
			if SpiderLegs.lift.Attachment0 then
				SpiderLegs.lift.Attachment0:Destroy()
			end

			SpiderLegs.lift:Destroy()
			SpiderLegs.lift = nil
		end

		if SpiderLegs.orient then
			SpiderLegs.orient:Destroy()
			SpiderLegs.orient = nil
		end

		if SpiderLegs.jumpBlocked then
			if SpiderLegs.jumpBlocked.Parent then
				SpiderLegs.jumpBlocked:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
			end

			SpiderLegs.jumpBlocked = nil
		end

		if SpiderLegs.platformStandSet then
			if _G.UniversalPlayerRoot and _G.UniversalPlayerRoot.Parent then
				local Humanoid = _G.UniversalPlayerRoot.Parent:FindFirstChildOfClass("Humanoid")

				if Humanoid then
					Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
					Humanoid.PlatformStand = false
					task.delay(1, function()
						if Humanoid.Parent then
							Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
						end
					end)
				end
			end

			SpiderLegs.platformStandSet = false
		end

		SpiderLegs.climbState = nil
		SpiderLegs.arc = nil
		SpiderLegs.climbTarget = nil
		SpiderLegs.wallFlip = false
		SpiderLegs.ceilReflect = false
		SpiderLegs.holdUntilRelease = false
		SpiderLegs.surfaceUp = nil
		SpiderLegs.uprightTime = 0
		SpiderLegs.exitForward = nil
		SpiderLegs.jumpState = nil
		SpiderLegs.jumpCharge = 0
		SpiderLegs.jump = nil
		SpiderLegs.groundY = nil
		SpiderLegs.landTime = 0
		SpiderLegs.jumpTouch = false
		SpiderLegs.jumpTouchInput = nil

		if SpiderLegs.jumpGui then
			SpiderLegs.jumpGui:Destroy()
			SpiderLegs.jumpGui = nil
		end

		SpiderLegs.jumpFill = nil

		if SpiderLegs.folder then
			SpiderLegs.folder:Destroy()
			SpiderLegs.folder = nil
		end

		table.clear(SpiderLegs.parts)
		table.clear(SpiderLegs.legs)
	end
end

SpiderLegsSection = Auras_Tab:AddSection({
	Name = "Spider Legs"
})
SpiderLegsToggle = SpiderLegsSection:AddToggle({
	Name = "Spider Legs",
	Default = false,
	Callback = function(p627)
		_G.SpiderLegs = p627
		SpiderLegs.session += 1

		local function v2442()
			return _G.SpiderLegs and SpiderLegs.session == SpiderLegs.session
		end

		if p627 then
			SpiderLegsCreate()
			RigConnectToysLoop(SpiderLegs.parts, function()
				return SpiderLegs.toyType
			end, v2442, SpiderLegsAlignToy, function()
				return (SpiderLegs.activeSegCount or SpiderLegs.segCount) > 3
			end)
		else
			RigReleaseToys(SpiderLegs.parts)
			SpiderLegsDestroy()
		end
	end
})
SpiderLegsAutoHeight = function()
	local height = math.floor(SpiderLegs.segLength * SpiderLegs.segCount * 0.85)

	SpiderLegs.height = height

	if SpiderLegsHeightSlider then
		pcall(function()
			SpiderLegsHeightSlider:Set(height)
		end)
	end
end

do
	SpiderLegsRestart = function()
		if not _G.SpiderLegs or not SpiderLegsToggle then
			return
		end

		SpiderLegs.restartToken = (SpiderLegs.restartToken or 0) + 1
		task.spawn(function()
			task.wait(0.5)

			if SpiderLegs.restartToken ~= SpiderLegs.restartToken then
				return
			end

			SpiderLegsToggle:Set(false)
			task.wait(0.3)

			if SpiderLegs.restartToken == SpiderLegs.restartToken then
				SpiderLegsToggle:Set(true)
			end
		end)
	end
end

SpiderLegsSection:AddDropdown({
	Name = "Leg Count",
	Default = "4",
	Options = {
		"4",
		"2"
	},
	Callback = function(p628)
		local legCount = tonumber(p628) or 4
		local v2445 = SpiderLegs.legCount ~= legCount

		SpiderLegs.legCount = legCount

		if v2445 then
			SpiderLegsRestart()
		end
	end,
	Save = true,
	Flag = "spiderlegs_count_dropdown"
})

do
	SpiderLegsSection:AddSlider({
		Name = "Segments per Leg",
		Min = 2,
		Max = 8,
		Default = SpiderLegs.segCount,
		Increment = 1,
		ValueName = "ladders per leg",
		Callback = function(p629)
			local v2446 = SpiderLegs.segCount ~= p629

			SpiderLegs.segCount = p629

			if v2446 then
				SpiderLegsAutoHeight()
				SpiderLegsRestart()
			end
		end,
		Save = true,
		Flag = "spiderlegs_segcount_slider"
	})
end

SpiderLegsSection:AddToggle({
	Name = "Wall Climbing",
	Default = true,
	Callback = function(p630)
		SpiderLegs.climbEnabled = p630
	end,
	Save = true,
	Flag = "spiderlegs_climb_toggle"
})

do
	SpiderLegsSection:AddSlider({
		Name = "Climb Speed",
		Min = 10,
		Max = 150,
		Default = SpiderLegs.climbSpeed,
		Increment = 5,
		ValueName = "studs/s",
		Callback = function(p631)
			SpiderLegs.climbSpeed = p631
		end,
		Save = true,
		Flag = "spiderlegs_climbspeed_slider"
	})
end

SpiderLegsSection:AddToggle({
	Name = "Super Jump (hold Space / Jump button)",
	Default = true,
	Callback = function(p632)
		SpiderLegs.jumpEnabled = p632

		if not (p632 or SpiderLegs.jumpState ~= "charge") then
			SpiderLegs.jumpState = nil
			SpiderLegs.jumpCharge = 0
		end
	end,
	Save = true,
	Flag = "spiderlegs_jump_toggle"
})
SpiderLegsSection:AddSlider({
	Name = "Super Jump Height",
	Min = 10,
	Max = 300,
	Default = SpiderLegs.jumpHeight,
	Increment = 5,
	ValueName = "studs (full charge)",
	Callback = function(p633)
		SpiderLegs.jumpHeight = p633
	end,
	Save = true,
	Flag = "spiderlegs_jumpheight_slider"
})

do
	SpiderLegsSection:AddSlider({
		Name = "Super Jump Charge Time",
		Min = 0.2,
		Max = 3,
		Default = SpiderLegs.jumpChargeTime,
		Increment = 0.1,
		ValueName = "seconds",
		Callback = function(p634)
			SpiderLegs.jumpChargeTime = p634
		end,
		Save = true,
		Flag = "spiderlegs_jumpcharge_slider"
	})
end

do
	SpiderLegsSection:AddToggle({
		Name = "Auto Fit Legs to Ladder",
		Default = true,
		Callback = function(p635)
			SpiderLegs.autoFit = p635

			if p635 and SpiderLegs.toyLength then
				SpiderLegs.segLength = SpiderLegs.toyLength * 0.92
			end
		end,
		Save = true,
		Flag = "spiderlegs_autofit_toggle"
	})
end

SpiderLegsSection:AddSlider({
	Name = "Ladder Twist",
	Min = 0,
	Max = 180,
	Default = 0,
	Increment = 15,
	ValueName = "degrees",
	Callback = function(p636)
		SpiderLegs.rotation = CFrame.Angles(0, 0, math.rad(p636))

		for _, part in ipairs(SpiderLegs.parts) do
			local Attachment = part.part and part.part:FindFirstChild("Attachment")

			if Attachment then
				Attachment.CFrame = SpiderLegs.rotation
			end
		end
	end,
	Save = true,
	Flag = "spiderlegs_twist_slider"
})

do
	local function v2450(p637, p638, p639, p640, p641, p642, p643)
		local _

		return SpiderLegsSection:AddSlider({
			Name = p637,
			Min = p638,
			Max = p639,
			Default = SpiderLegs[p640],
			Increment = p641,
			ValueName = p642,
			Callback = function(p644)
				SpiderLegs[p640] = p644
			end,
			Save = true,
			Flag = p643
		})
	end

	SpiderLegsHeightSlider = v2450("Body Height", 5, 150, "height", 1, "studs (auto: max for leg size)", "spiderlegs_height_slider")
	v2450("Leg Segment Length (Auto Fit off)", 4, 30, "segLength", 0.5, "studs", "spiderlegs_seglen_slider")
	v2450("Leg Spread (Sides)", 1, 15, "spread", 0.5, "studs", "spiderlegs_spread_slider")
	v2450("Leg Spread (Front/Back)", 1, 15, "frontSpread", 0.5, "studs", "spiderlegs_frontspread_slider")
	v2450("Step Distance", 2, 15, "stepDistance", 0.5, "studs", "spiderlegs_stepdist_slider")
	v2450("Step Duration", 0.1, 1, "stepTime", 0.05, "seconds", "spiderlegs_steptime_slider")
	v2450("Step Height", 0, 10, "stepHeight", 0.5, "studs", "spiderlegs_stepheight_slider")
end

BangAura_BoolValue = Instance.new("BoolValue")
MakeBangConnection = function(p645, p646, p647, p648, p649)
	if not p646:FindFirstChild("BangAttachment") then
		SetCollisionObjectOff(p645)

		local Attachment = Instance.new("Attachment", p646)

		Attachment.Name = "BangAttachment"
		Attachment.Orientation = Vector3.new(90, 0, 0)

		local AlignPosition = Instance.new("AlignPosition", p646)

		AlignPosition.Name = "BangPosition"
		AlignPosition.Responsiveness = 200
		AlignPosition.MaxForce = math.huge
		AlignPosition.ApplyAtCenterOfMass = true
		AlignPosition.Attachment0 = Attachment
		AlignPosition.Attachment1 = p648
		AlignPosition.Mode = Enum.PositionAlignmentMode.TwoAttachment

		local AlignOrientation = Instance.new("AlignOrientation", p646)

		AlignOrientation.Name = "BangOrientation"
		AlignOrientation.Attachment0 = Attachment
		AlignOrientation.Attachment1 = p648
		AlignOrientation.Mode = Enum.OrientationAlignmentMode.TwoAttachment
		AlignOrientation.RigidityEnabled = false
		AlignOrientation.Responsiveness = 75
		AlignOrientation.MaxTorque = math.huge
		AlignOrientation.Enabled = true

		local connection
		local connection2

		local function v2458()
			SetCollisionObjectOn(p645)
			AlignPosition:Destroy()
			AlignOrientation:Destroy()
			Attachment:Destroy()
			connection:Disconnect()
			connection2:Disconnect()
		end

		connection = p645.DescendantAdded:Connect(function(descendant)
			if descendant.Name == "PartOwner" and descendant.Value ~= LocalPlayer.Name then
				while true do
					if descendant.Parent then
						if Getdistancefromcharacter(p646.Position) > 30 and not CheckNetworkOwnerShipOnPlayer(p647) then
							v2458()

							break
						elseif not SNOWshipPlayer(p647) then
							task.wait()

							continue
						end

						break
					end

					break
				end
			end
		end)
		connection2 = p649.Changed:Connect(function(p650)
			if not p650 then
				v2458()
			end
		end)
	end
end

do
	BangAura_Section:AddToggle({
		Name = "Bang Aura",
		Default = false,
		Callback = function(p651)
			t58.Bang = p651
			_G.BangAura = p651
			BangAura_BoolValue.Value = p651

			if p651 then
				BangPartAtt = MakeBangPart()
				StartAuraLoop()
			end
		end,
		Save = false,
		Flag = "BangAura_toggle"
	})
end

do
	BangAura_Section:AddSlider({
		Name = "Speed",
		Min = 1,
		Max = 10,
		Default = 1,
		Color = Color3.fromRGB(59, 122, 179),
		Increment = 0.2,
		ValueName = "",
		Callback = function(p652)
			bang_speed = p652
		end,
		Save = true,
		Flag = "bangspeed_slider"
	})
end

BangAura_Section:AddSlider({
	Name = "Distance",
	Min = 2,
	Max = 15,
	Default = 5,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 1,
	ValueName = "",
	Callback = function(p653)
		bang_forwardDistance = p653
	end,
	Save = true,
	Flag = "bangforwardDistance_slider"
})
KickTypesList = {
	"Silent",
	"Float",
	"Sky Anchor"
}
KickAura_Section:AddToggle({
	Name = "Kick Aura" .. ownership_text,
	Default = false,
	Callback = function(p654)
		t58.KickO = p654

		if p654 then
			if GetKey() ~= "Xana" then
				local KickAura_O = result.Flags.KickAura_O

				if KickAura_O then
					KickAura_O:Set(false)
				end

				-- notify disabled

				return
			end

			StartAuraLoop()
		end
	end,
	Save = false,
	Flag = "KickAura_O"
})
KickAura_Section:AddToggle({
	Name = "Kick Aura <font color='#590505'>「</font><font color='#db0909'>BLOBMAN</font><font color='#590505'>」</font>",
	Default = false,
	Callback = function(p655)
		t58.KickB = p655

		if p655 then
			if GetKey() ~= "Xana" then
				local KickAuraBlob_toggle = result.Flags.KickAuraBlob_toggle

				if KickAuraBlob_toggle then
					KickAuraBlob_toggle:Set(false)
				end

				-- notify disabled

				return
			end

			StartAuraLoop()
		end
	end,
	Save = false,
	Flag = "KickAuraBlob_toggle"
})
AurasWhiteList_Section:AddToggle({
	Name = "Whitelist Friends",
	Default = false,
	Callback = function(p656)
		_G.WhitelistFriends = p656
	end,
	Save = true,
	Flag = "whitelistaura_toggle"
})
MainSuperStrengthSection = Main_Tab:AddSection({
	Name = "Strength"
})
RLimbs_Section = Main_Tab:AddSection({
	Name = "Remove Limbs"
})
MainOthers = Main_Tab:AddSection({
	Name = "Others"
})
MainPerpectiveSection = Main_Tab:AddSection({
	Name = "Perspective"
})
CFrame.new(-414.718628, -4.28790283, 234.869476, 0.532077193, 4.52295907e-08, -0.84669584, -9.43028624e-08, 1, -5.84248827e-09, 0.84669584, 8.29544931e-08, 0.532077193)
blackflasheffect = SafeGetObject("rbxassetid://109856451077791")
blackflasheffectBig = SafeGetObject("rbxassetid://119665236378670")
blackflasheffectBig_2 = SafeGetObject("rbxassetid://97823114481345")
blackflasheffectBig_3 = SafeGetObject("rbxassetid://137896691936822")

do
	local t81 = {}

	EffectsExecution = function(p657, ...)
		if not p657 then
			return
		end

		local now = tick()
		local Name = p657.Name

		t81[Name] = t81[Name] or {
			LastCall = 0,
			Suspicion = 0,
			BlockedUntil = 0,
			PenaltyLevel = 0,
			LastPenalty = 0
		}

		local v2464 = t81[Name]

		if now < v2464.BlockedUntil then
			return
		end

		if now - v2464.LastPenalty > 300 then
			v2464.PenaltyLevel = math.max(0, v2464.PenaltyLevel - 1)
			v2464.LastPenalty = now
		end

		local v2465 = now - v2464.LastCall

		if v2465 < 0.03 then
			v2464.Suspicion += 4
		elseif v2465 < 0.05 then
			v2464.Suspicion += 2
		elseif v2465 < 0.075 then
			v2464.Suspicion += 1
		else
			v2464.Suspicion = math.max(0, v2464.Suspicion - 1)
		end

		if v2464.Suspicion >= 15 then
			v2464.PenaltyLevel += 1
			v2464.LastPenalty = now

			local v2466 = math.min(5 * v2464.PenaltyLevel, 300)

			v2464.BlockedUntil = now + v2466
			v2464.Suspicion = 0
			warn(Name .. " bloqueado por " .. v2466 .. " segundos")

			return
		end

		v2464.LastCall = now

		local v2467
		local Name2
		local v2469
		local v2470

		for _, v in { ... }, nil, nil do
			if typeof(v) == "table" then
				for k, v2 in v, nil, nil do
					if k == "Command" then
						v2467 = v2
					elseif k == "Target" then
						v2469 = GetInstanceFromPath(v2)
					elseif k == "CFrame" then
						v2470 = v2
					elseif k == "PlayerTarget" then
						playertarget = v2
					elseif k == "Caster" then
						Name2 = p657.Name
					end
				end
			end
		end

		if Name2 == LocalPlayer.Name then
			return
		end

		if v2467 == "BlackFlashV1" then
			BlackFlashVFX(v2469)
		elseif v2467 == "BlackFlashV2" then
			BlackFlashSupremeVFX(v2469, PS[Name2].Character:FindFirstChild("Head"))
		elseif v2467 == "BlackFlashV2_Mahito" then
			BlackFlashSupremeVFXMahito(v2469, PS[Name2].Character:FindFirstChild("Head"))
		elseif v2467 == "BlackFlashV2_Sukuna" then
			BlackFlashSupremeVFXSukuna(v2469, PS[Name2].Character:FindFirstChild("Head"))
		elseif v2467 == "EnderTP" then
			EnderTeleportEffect(v2470, v2469)
		elseif v2467 == "FlashStepTP" then
			flashEffectParticle(v2470, v2469)
		end
	end
end

do
	EnableVisualEffects = function(p658)
		if p658 then
			if typeof(VisualEffectsConnection) == "RBXScriptConnection" then
				print("Visual Effects Disabled!")
				VisualEffectsConnection:Disconnect()
				VisualEffectsConnection = nil
			end
		elseif not VisualEffectsConnection then
			print("Effects enabled!")
			VisualEffectsConnection = RS.GrabEvents.CreateGrabLine.OnClientEvent:Connect(EffectsExecution)
		end
	end
end

do
	local t82 = {}

	RS.GrabEvents.CreateGrabLine.OnClientEvent:Connect(function(p659)
		local now = tick()
		local Name = p659.Name

		if p659 == LocalPlayer then
			return
		end

		t82[Name] = t82[Name] or {
			Count = 0,
			WindowStart = now,
			LastNotification = 0
		}

		local v2478 = t82[Name]

		if now - v2478.WindowStart > 0.2 then
			v2478.WindowStart = now
			v2478.Count = 0
		end

		v2478.Count += 1

		if not (v2478.Count > 75) then
			return
		end

		local antilag_toggle = result.Flags.antilag_toggle

		if antilag_toggle and _G.AutoEnableAntiLag and not antilag_toggle.Value then
			antilag_toggle:Set(true)
		end

		if CABM_Module then
			CABM_Module.SetGrabBlocked(p659.Name, true)
		end

		if now - v2478.LastNotification > 10 and LSNotififyS then
			v2478.LastNotification = now
			result:MakeNotification({
				Name = "Line Spam Detected",
				Content = "<font color='#ff5555'><b>" .. p659.DisplayName .. "</b></font>" .. " (@" .. p659.Name .. ")",
				Image = "rbxassetid://131444449466462",
				Time = 6
			})
		end
	end)
end

do
	if anticreatelinelocalscript then
		anticreatelinelocalscript:GetPropertyChangedSignal("Disabled"):Connect(function()
			if anticreatelinelocalscript.Disabled or v110:FindFirstChild("Look") then
				EnableVisualEffects(anticreatelinelocalscript.Disabled)

				return
			end

			anticreatelinelocalscript.Disabled = true
			Instance.new("RemoteEvent", v110).Name = "Look"
			wait(0.1)
			anticreatelinelocalscript.Disabled = false
		end)
	end
end

EnableVisualEffects(anticreatelinelocalscript.Disabled)
BlackFlashVFX = function(p660)
	local clone = blackflasheffect.Attachment:Clone()

	clone.Parent = p660

	for _, child in pairs(clone:GetChildren()) do
		child:Emit(child.Rate)
	end

	local Sound = Instance.new("Sound")

	Sound.Volume = 0.1
	Sound.SoundId = "rbxassetid://129838212288407"
	Sound.Parent = clone
	Sound:Play()
	DB:AddItem(clone, 2)
end
BlackFlashSupremeVFX = function(p661, p662)
	local clone = blackflasheffectBig.MainHit:Clone()

	clone.Parent = p661

	for _, descendant in pairs(clone:GetDescendants()) do
		if descendant:IsA("ParticleEmitter") then
			if descendant.Name == "Wind" or descendant.Name == "Smoke" then
				descendant.LockedToPart = false
			end

			descendant:Emit(descendant.Rate)
		end
	end

	local Sound = Instance.new("Sound")

	Sound.Volume = 0.15
	Sound.SoundId = "rbxassetid://78659668643363"
	Sound.Parent = clone

	local Sound2 = Instance.new("Sound")

	Sound2.Volume = 0.15
	Sound2.SoundId = "rbxassetid://119862187200315"
	Sound2.Parent = p662
	Sound:Play()
	Sound2:Play()
	DB:AddItem(clone, 2)
end
BlackFlashSupremeVFXMahito = function(p663, p664)
	local clone = blackflasheffectBig_2.MainHit:Clone()

	clone.Parent = p663

	for _, descendant in pairs(clone:GetDescendants()) do
		if descendant:IsA("ParticleEmitter") then
			if descendant.Name == "Wind" or descendant.Name == "Smoke" then
				descendant.LockedToPart = false
			end

			descendant:Emit(descendant.Rate)
		end
	end

	local Sound = Instance.new("Sound")

	Sound.Volume = 0.2
	Sound.SoundId = "rbxassetid://87610143168846"
	Sound.Parent = p664

	local Sound2 = Instance.new("Sound")

	Sound2.SoundId = "rbxassetid://73307094061460"
	Sound2.TimePosition = 0.15
	Sound2.Volume = 0.15
	Sound2.Parent = p664
	Sound:Play()
	Sound2:Play()

	for _, v in pairs({
		Sound2,
		clone,
		Sound
	}) do
		DB:AddItem(v, 2)
	end
end
BlackFlashSupremeVFXSukuna = function(p665, p666)
	local clone = blackflasheffectBig_3.MainHit:Clone()

	for _, child in pairs(clone.Sukuna:GetChildren()) do
		child.Enabled = false
	end

	clone.Parent = p665
	task.spawn(function()
		for _, child in pairs(clone.Sukuna:GetChildren()) do
			if child.Name == "Wind1" then
				child:Emit(5)
			end
		end
	end)
	task.spawn(function()
		for i = 0, 15 do
			local Sound = Instance.new("Sound", p665)

			Sound.Volume = 1
			Sound.SoundId = "rbxassetid://131265054966051"
			Sound:Play()
			DB:AddItem(Sound, 2)

			for _, child in pairs(clone.Sukuna:GetChildren()) do
				if child.Name ~= "Wind1" then
					child:Emit(1)
				end
			end

			task.wait(0.025)
		end
	end)

	local Sound = Instance.new("Sound")

	Sound.Volume = 0.025
	Sound.SoundId = "rbxassetid://127747836286692"
	Sound.Parent = p666

	local Sound2 = Instance.new("Sound")

	Sound2.Volume = 0.07
	Sound2.SoundId = "rbxassetid://120274188770849"
	Sound2.Parent = p666

	local Sound3 = Instance.new("Sound")

	Sound3.SoundId = "rbxassetid://112401600931306"
	Sound3.Volume = 0.1
	Sound3.Parent = p666
	Sound:Play()
	Sound3:Play()
	Sound2:Play()

	for _, v in pairs({
		Sound3,
		clone,
		Sound,
		Sound2
	}) do
		DB:AddItem(v, 2)
	end
end
MainSuperStrengthSection:AddToggle({
	Name = "Super Strength",
	Default = false,
	Callback = function(p667)
		_G.SuperStrength = p667
	end,
	Save = true,
	Flag = "superstrength_toggle"
})
MainSuperStrengthSection:AddSlider({
	Name = "Strength",
	Min = 400,
	Max = 10000,
	Default = 400,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 100,
	ValueName = "",
	Callback = function(p668)
		_G.Strength = p668
	end,
	Save = true,
	Flag = "superstrength_slider"
})
RLimbs_Section:AddToggle({
	Name = "Remove Limb",
	Default = false,
	Callback = function(p669)
		_G.RemoveLimbsGrab = p669
	end,
	Save = true,
	Flag = "removelimb_toggle"
})
RLimbs_Section:AddDropdown({
	Name = "Select Limb",
	Default = "Right Arm",
	Options = {
		"Right Arm",
		"Left Arm",
		"Right Leg",
		"Left Leg"
	},
	Callback = function(p670)
		_G.LimbsToRemove = p670
	end,
	MultipleSelection = true,
	Save = false,
	Flag = "SLimb_dropdown"
})
MainOthers:AddToggle({
	Name = "Burn Grab",
	Default = false,
	Callback = function(p671)
		_G.Burn_Grab = p671
	end,
	Save = true,
	Flag = "burngrab_toggle"
})
MainOthers:AddToggle({
	Name = "Ragdoll Grab",
	Default = false,
	Callback = function(p672)
		_G.Ragdoll_Grab = p672
	end,
	Save = true,
	Flag = "ragdollgrab_toggle"
})
MainOthers:AddToggle({
	Name = "Death Grab",
	Default = false,
	Callback = function(p673)
		_G.Death_Grab = p673
	end,
	Save = true,
	Flag = "deathgrab_toggle"
})

do
	MainOthers:AddToggle({
		Name = "Massless Grab",
		Default = false,
		Callback = function(p674)
			_G.MasslessGrab = p674
		end,
		Save = true,
		Flag = "masslessgrab_toggle"
	})
end

do
	MainOthers:AddToggle({
		Name = "Noclip Grab",
		Default = false,
		Callback = function(p675)
			_G.NoclipGrab = p675
		end,
		Save = true,
		Flag = "noclipgrab_toggle"
	})
end

local connection
local n45 = 50

kickgrabtoggle = nil
MainPerpectiveSection:AddToggle({
	Name = "Perspective Grab",
	Default = false,
	Callback = function(p676)
		_G.PerspectiveGrab = p676
	end,
	Save = true,
	Flag = "perspectivegrab_toggle"
})
MainPerpectiveSection:AddSlider({
	Name = "Speed",
	Min = 50,
	Max = 150,
	Default = 50,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 1,
	ValueName = "",
	Callback = function(p677)
		n45 = p677
	end,
	Save = true,
	Flag = "perspectivespeedvalue_toggle"
})
ControlAllMSection = ApplyServer_Tab:AddSection({
	Name = "Control All"
})
GenericMiscSection = ApplyServer_Tab:AddSection({
	Name = "Anti-Blobman Spam"
})
RagdollAllMiscSection = ApplyServer_Tab:AddSection({
	Name = "Ragdoll All"
})
BurnAllMiscSection = ApplyServer_Tab:AddSection({
	Name = "Burn All"
})
NggerAllMiscSection = ApplyServer_Tab:AddSection({
	Name = "Black All"
})
DeathAllMiscSection = ApplyServer_Tab:AddSection({
	Name = "Death All"
})
KickAllSection = ApplyServer_Tab:AddSection({
	Name = "Kick All"
})
BringAllSection = ApplyServer_Tab:AddSection({
	Name = "Bring All"
})
freezecampart = Instance.new("Part", W)
freezecampart.Anchored = true
freezecampart.CanCollide = false
freezecampart.Transparency = 1
freezecampart.CanQuery = false
freezecampart.Size = Vector3.new()
FreezeCam = function(p678)
	freezecampart.CFrame = p678
	workspace.CurrentCamera.CameraType = Enum.CameraType.Follow
	workspace.CurrentCamera.CameraSubject = freezecampart
end
unFreezeCam = function()
	workspace.CurrentCamera.CameraSubject = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
end
NggerAllMiscSection:AddToggle({
	Name = "Nigger All" .. premium_text,
	Default = false,
	Callback = function(p679)
		_G.BlackAllPlayers = p679

		if p679 then
			while _G.BlackAllPlayers do
				if GetKey() ~= "Xana" then
					local NggerAll_toggle = result.Flags.NggerAll_toggle

					if NggerAll_toggle then
						NggerAll_toggle:Set(false)
					end

					-- notify disabled

					break
				end

				for _, player in pairs(PS:GetPlayers()) do
					if CheckPlayerWF(player, NggerAllWF) then
						local Character = player.Character
						local Head = Character:FindFirstChild("Head")
						local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
						local Humanoid = Character:FindFirstChildOfClass("Humanoid")
						local v2519 = false

						if Head and Humanoid and Humanoid:FindFirstChild("PaintDebounce") and not Humanoid.PaintDebounce.Value then
							local PaintParticleEmitter = Head:FindFirstChild("PaintParticleEmitter")

							if PaintParticleEmitter and tostring(PaintParticleEmitter.Color) ~= "0 0 0 0 0 1 0.333333 0.333333 0.333333 0 " then
								v2519 = true
							elseif not PaintParticleEmitter then
								v2519 = true
							end
						end

						if HumanoidRootPart and v2519 then
							Burn(HumanoidRootPart, true)
							task.wait(0.015)
						end
					end
				end

				task.wait()
			end
		end
	end,
	Save = false,
	Flag = "NggerAll_toggle"
})
NggerAllMiscSection:AddToggle({
	Name = "Whitelist Friends",
	Default = false,
	Callback = function(p680)
		NggerAllWF = p680
	end
})

do
	BurnAllMiscSection:AddToggle({
		Name = "Fire All" .. premium_text,
		Default = false,
		Callback = function(p681)
			_G.FireAllPlayers = p681

			if p681 then
				while _G.FireAllPlayers do
					if GetKey() ~= "Xana" then
						local FireAll_toggle = result.Flags.FireAll_toggle

						if FireAll_toggle then
							FireAll_toggle:Set(false)
						end

						-- notify disabled

						break
					end

					for _, player in pairs(PS:GetPlayers()) do
						if CheckPlayerWF(player, BurnAllWF, true) then
							local v2524 = player
							local HumanoidRootPart = v2524.Character:FindFirstChild("HumanoidRootPart")
							local CanBurn

							if HumanoidRootPart:FindFirstChild("FirePlayerPart") then
								if HumanoidRootPart.FirePlayerPart:FindFirstChild("CanBurn") then
									CanBurn = HumanoidRootPart.FirePlayerPart.CanBurn
								end
							end

							if HumanoidRootPart and v2524 and not (IsPlayerInsideSafeZone(v2524) or CanBurn.Value) then
								for i = 0, 20 do
									if CanBurn.Value then
										break
									end

									Burn(HumanoidRootPart)
									task.wait()
								end
							end
						end
					end

					task.wait()
				end
			end
		end,
		Save = false,
		Flag = "FireAll_toggle"
	})
end

BurnAllMiscSection:AddToggle({
	Name = "Whitelist Friends",
	Default = false,
	Callback = function(p682)
		BurnAllWF = p682
	end
})
RagdollAllMiscSection:AddToggle({
	Name = "Ragdoll All" .. premium_text,
	Default = false,
	Callback = function(p683)
		_G.AnnoyAllPlayers = p683

		if p683 then
			while _G.AnnoyAllPlayers do
				if GetKey() ~= "Xana" then
					local RagdollAll_toggle = result.Flags.RagdollAll_toggle

					if RagdollAll_toggle then
						RagdollAll_toggle:Set(false)
					end

					-- notify disabled

					break
				end

				for _, player in pairs(PS:GetPlayers()) do
					if CheckPlayerWF(player, RagdollAllWF) then
						local Character = player.Character
						local HumanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
						local Humanoid = player.Character:FindFirstChildOfClass("Humanoid")
						local Ragdolled = Character:FindFirstChildOfClass("Humanoid"):FindFirstChild("Ragdolled")

						if HumanoidRootPart and Ragdolled and not (Ragdolled.Value or Humanoid.Sit) then
							for i = 0, 20 do
								if Ragdolled.Value or Humanoid.Sit then
									break
								end

								Ragdoll(HumanoidRootPart)
								task.wait()
							end
						end
					end
				end

				task.wait()
			end
		end
	end,
	Save = false,
	Flag = "RagdollAll_toggle"
})
RagdollAllMiscSection:AddToggle({
	Name = "Whitelist Friends",
	Default = false,
	Callback = function(p684)
		RagdollAllWF = p684
	end
})
GenericMiscSection:AddToggle({
	Name = "Remove All Seat" .. premium_text,
	Default = false,
	Callback = function(p685)
		_G.RAB = p685

		if p685 then
			if GetKey() ~= "Xana" then
				_G.RAB = false

				local RemoveAllSeat_toggle = result.Flags.RemoveAllSeat_toggle

				if RemoveAllSeat_toggle then
					RemoveAllSeat_toggle:Set(false)
				end

				-- notify disabled

				return
			end

			while _G.RAB do
				for _, player in pairs(PS:GetPlayers()) do
					if CheckPlayerWF(player, RemoveAllSeatWF) then
						local Character = player.Character

						if Character then
							local Humanoid = Character:FindFirstChildOfClass("Humanoid")

							if Humanoid then
								local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

								if Humanoid.SeatPart and HumanoidRootPart then
									ExplodeSnowball(HumanoidRootPart, "BallSnowball")
									task.wait(0.0015)
								end
							end
						end
					end
				end

				task.wait()
			end
		end
	end,
	Save = false,
	Flag = "RemoveAllSeat_toggle"
})

do
	GenericMiscSection:AddToggle({
		Name = "Whitelist Friends",
		Default = false,
		Callback = function(p686)
			RemoveAllSeatWF = p686
		end
	})
end

do
	DeathAllMiscSection:AddToggle({
		Name = "Kill All" .. ownership_text .. premium_text,
		Default = false,
		Callback = function(p687)
			_G.KillAll = p687

			if p687 then
				if GetKey() ~= "Xana" then
					_G.KillAll = false

					local KillAllOwnership_toggle = result.Flags.KillAllOwnership_toggle

					if KillAllOwnership_toggle then
						KillAllOwnership_toggle:Set(false)
					end

					-- notify disabled

					return
				end

				while _G.KillAll do
					ipos = GetPlayerCFrame()

					for _, player in pairs(PS:GetPlayers()) do
						if CheckPlayerWF(player, DeathAllWF, true, true) then
							local v2545 = player
							local HumanoidRootPart = v2545.Character:FindFirstChild("HumanoidRootPart")
							local Humanoid = v2545.Character:FindFirstChild("Humanoid")
							local Character = v2545.Character

							if v2545 and HumanoidRootPart and Humanoid and Character then
								for i = 0, 35 do
									noclip()
									SNOWshipPlayer(v2545)

									if IsNetworkOwner(HumanoidRootPart) and CheckNetworkOwnerShipOnPlayer(v2545) then
										SetCollisionObjectOff(Character)
										W.FallenPartsDestroyHeight = -50000
										HumanoidRootPart.CFrame = CFrame.new(0, -49900, 0)
										task.wait(0.1)
										HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, -1000000, 0)
									end

									if not CheckPlayerWF(player, DeathAllWF, true, true) then
										break
									end

									TeleportPlayer(CFrame.new(HumanoidRootPart.Position + (HumanoidRootPart.Position.Y <= -12 and Vector3.new(0, 5, -15) or Vector3.new(0, -10, -10))), 1.2, true, 0.5)
									task.wait()
								end
							end
						end
					end

					task.wait()
				end

				clip()
			end
		end,
		Save = false,
		Flag = "KillAllOwnership_toggle"
	})
end

DeathAllMiscSection:AddToggle({
	Name = "Whitelist Friends",
	Default = false,
	Callback = function(p688)
		DeathAllWF = p688
	end
})
KickAllSection:AddToggle({
	Name = "Kick All" .. ownership_text .. premium_text,
	Default = false,
	Callback = function(p689)
		_G.KickAll = p689

		if p689 then
			if GetKey() ~= "Xana" then
				_G.KickAll = false

				local KickAllO_toggle = result.Flags.KickAllO_toggle

				if KickAllO_toggle then
					KickAllO_toggle:Set(false)
				end

				-- notify disabled

				return
			end

			while _G.KickAll do
				for _, player in pairs(PS:GetPlayers()) do
					if CheckPlayerWF(player, KickAllWF, true, true) then
						local v2553 = player
						local HumanoidRootPart = v2553.Character:FindFirstChild("HumanoidRootPart")

						if v2553 and HumanoidRootPart then
							for i = 0, 35 do
								noclip()
								SNOWship(HumanoidRootPart)

								if CheckNetworkOwnerShipOnPlayer(v2553) then
									CreateSkyVelocity(HumanoidRootPart)
									v118:FireServer(HumanoidRootPart)

									break
								end

								TeleportPlayer(CFrame.new(HumanoidRootPart.Position + (HumanoidRootPart.Position.Y <= -12 and Vector3.new(0, 5, -15) or Vector3.new(0, -10, -10))), 1.2, true, 0.5)
								task.wait()
							end
						end
					end
				end

				task.wait()
			end

			clip()
		end
	end,
	Save = false,
	Flag = "KickAllO_toggle"
})

do
	KickAllSection:AddToggle({
		Name = "Whitelist Friends",
		Default = false,
		Callback = function(p690)
			KickAllWF = p690
		end
	})
end

BringAllSection:AddToggle({
	Name = "Bring All" .. ownership_text .. premium_text,
	Default = false,
	Callback = function(p691)
		_G.BringAll = p691

		if p691 then
			if GetKey() ~= "Xana" then
				_G.BringAll = false

				local BringAll_toggle = result.Flags.BringAll_toggle

				if BringAll_toggle then
					BringAll_toggle:Set(false)
				end

				-- notify disabled

				return
			end

			local v2557 = GetPlayerCFrame()
			local cFrame = CFrame.lookAt(W.CurrentCamera.CFrame.Position + Vector3.new(-15, 15, 0), v2557.Position)

			workspace.CurrentCamera.CFrame = cFrame

			while _G.BringAll do
				FreezeCam(cFrame)

				for _, player in pairs(PS:GetPlayers()) do
					if CheckPlayerWF(player, BringAllWF, true, false) then
						local v2561 = player
						local HumanoidRootPart = v2561.Character:FindFirstChild("HumanoidRootPart")
						local Humanoid = v2561.Character:FindFirstChildOfClass("Humanoid")
						local Ragdolled

						if Humanoid and Humanoid:FindFirstChild("Ragdolled") then
							Ragdolled = Humanoid.Ragdolled
						end

						if v2561 and HumanoidRootPart and Humanoid and Ragdolled then
							for i = 0, 50 do
								if not _G.BringAll then
									break
								end

								noclip()
								SNOWshipOnce(HumanoidRootPart)

								if CheckNetworkOwnerShipOnPlayer(v2561) then
									if not Ragdolled.Value and v2561:DistanceFromCharacter(v2557.Position) > 10 then
										HumanoidRootPart.CFrame = v2557
									end

									CreateBringBody(HumanoidRootPart, v2557)

									break
								end

								if HumanoidRootPart.Position.Y <= -12 then
									TeleportPlayer(CFrame.new(HumanoidRootPart.Position + Vector3.new(0, 5, -15)))
								else
									TeleportPlayer(CFrame.new(HumanoidRootPart.Position + Vector3.new(0, -10, -10)))
								end

								task.wait()
							end
						end
					end
				end

				TeleportPlayer(CFrame.new(527, 123, -376))
				task.wait()
			end

			unFreezeCam()
			clip()
			TeleportPlayer(v2557)
		end
	end,
	Save = false,
	Flag = "BringAll_toggle"
})
BringAllSection:AddToggle({
	Name = "Whitelist Friends",
	Default = false,
	Callback = function(p692)
		BringAllWF = p692
	end
})
controlAll_config = {
	WS = 0,
	LK = false,
	LPrison = false,
	ControlAllC = {}
}
ControlAllMSection:AddToggle({
	Name = "Control All <font color='#3f1c70'>「</font><font color='#8c66c2'>PERM OWNERSHIP</font><font color='#3f1c70'>」</font>",
	Default = false,
	Callback = function(p693)
		_G.ControlAll = p693

		if p693 then
			local controlAll_config_ = controlAll_config
			local v2567
			local ControlAllC = controlAll_config_.ControlAllC

			DisconnectAll(ControlAllC)

			local function v2569(character)
				local connection2

				connection2 = character:GetPropertyChangedSignal("Parent"):Connect(function()
					if character.Parent == nil then
						local v2571 = table.find(ControlAllC, connection2)

						if v2571 then
							table.remove(ControlAllC, v2571)
						end
					else
						task.wait(0.025)

						for _, child in pairs(character:GetChildren()) do
							if child:IsA("BasePart") then
								child.CollisionGroup = "a"
							end
						end
					end
				end)
				ControlAllC[#ControlAllC + 1] = connection2
				WaitForChildrenAddedOnce(character, 0.1, function()
					for _, child in pairs(character:GetChildren()) do
						if child:IsA("BasePart") then
							child.CollisionGroup = "a"
						end
					end
				end)
			end
			local function v2576(player)
				if player == LocalPlayer then
					return
				end

				if player.Character then
					v2569(player.Character)
				end

				ControlAllC[#ControlAllC + 1] = player.CharacterAdded:Connect(v2569)
			end

			ControlAllC[#ControlAllC + 1] = PS.PlayerAdded:Connect(v2576)

			for _, player in ipairs(PS:GetPlayers()) do
				v2576(player)
			end

			while _G.ControlAll do
				for _, player in pairs(PS:GetPlayers()) do
					if CheckPlayerWF(player, ControlAllWF) then
						local Character = player.Character

						if Character then
							local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
							local Humanoid = Character:FindFirstChildOfClass("Humanoid")

							v2567 = v2567 or GetPlayerCFrame()

							local exitTo

							for i = 0, 5 do
								if BlobPOwner(player) or Humanoid.Health <= 0 or not _G.ControlAll then
									exitTo = 1

									break
								end

								task.wait(0.025)
							end

							if exitTo == 1 then
								Humanoid.WalkSpeed = controlAll_config_.WS

								if HumanoidRootPart.AssemblyLinearVelocity.Magnitude > 500 then
									HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
								end

								if controlAll_config_.LK then
									Humanoid.BreakJointsOnDeath = false
									Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
								elseif controlAll_config_.LPrison and (not player.InPlot.Value or not IsNetworkOwner(HumanoidRootPart)) then
									for i = 0, 5 do
										if BlobPOwner(player) or Humanoid.Health <= 0 or not _G.ControlAll then
											HumanoidRootPart.CFrame = CFrame.new(265, -7, 450)
											HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)

											break
										end
									end
								end
							end
						end
					end
				end

				if v2567 then
					TeleportPlayer(v2567)
					v2567 = nil
				end

				task.wait(0.025)
			end
		else
			DisconnectAll(controlAll_config.ControlAllC)
		end
	end,
	Save = false,
	Flag = "ControlAll"
})

do
	ControlAllMSection:AddToggle({
		Name = "Whitelist Friends",
		Default = false,
		Callback = function(p694)
			ControlAllWF = p694
		end,
		Save = false,
		Flag = "ControlALL_WF"
	})
end

ControlAllMSection:AddSlider({
	Name = "Walkspeed",
	Min = 0,
	Max = 700,
	Default = 16,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 1,
	ValueName = "Player Speed:",
	Callback = function(p695)
		controlAll_config.WS = p695
	end
})
ControlAllMSection:AddToggle({
	Name = "Loop Kill",
	Default = false,
	Callback = function(p696)
		controlAll_config.LK = p696

		if p696 then
			for _, v in pairs({
				"ControlALL_LDance",
				"ControlALL_LPrison"
			}) do
				result.Flags[v]:Set(false)
			end
		end
	end,
	Save = false,
	Flag = "ControlALL_LK"
})

do
	ControlAllMSection:AddToggle({
		Name = "Loop House Prison",
		Default = false,
		Callback = function(p697)
			controlAll_config.LPrison = p697

			if p697 then
				for _, v in pairs({
					"ControlALL_LDance",
					"ControlALL_LK"
				}) do
					result.Flags[v]:Set(false)
				end
			end
		end,
		Save = false,
		Flag = "ControlALL_LPrison"
	})
end

do
	ControlAllMSection:AddToggle({
		Name = "Loop Dance",
		Default = false,
		Callback = function(p698)
			controlAll_config.LDance = p698

			if p698 then
				local ControlAll = result.Flags.ControlAll

				if ControlAll then
					ControlAll:Set(false)
				end

				for _, v in pairs({
					"ControlALL_LPrison",
					"ControlALL_LK"
				}) do
					result.Flags[v]:Set(false)
				end

				local t83 = {}
				local t84 = {}

				for _, player in pairs(PS:GetPlayers()) do
					if player ~= LocalPlayer then
						table.insert(t83, player)
					end
				end

				t84[#t84 + 1] = PS.PlayerAdded:Connect(function(player)
					table.insert(t83, player)
				end)
				t84[#t84 + 1] = PS.PlayerRemoving:Connect(function(player)
					table.remove(t83, table.find(t83, player))
				end)
				ControlALL_LDancePos = GetPlayerCFrame()

				local n46 = 0
				local Position = ControlALL_LDancePos.Position
				local cFrame = CFrame.lookAt(W.CurrentCamera.CFrame.Position + Vector3.new(-20, 20, 0), Position)
				local connection2

				connection2 = R.Heartbeat:Connect(function(dt)
					if not controlAll_config.LDance then
						for _, v in pairs(t83) do
							local Character = v.Character

							if Character then
								SetCollisionObjectOn(Character)

								local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

								if HumanoidRootPart then
									local DanceAlign = HumanoidRootPart:FindFirstChild("DanceAlign")

									if DanceAlign then
										DanceAlign.Enabled = false
									end
								end
							end
						end

						connection2:Disconnect()
						DisconnectAll(t84)
						table.clear(t83)
						connection2 = nil
						unFreezeCam()

						return
					end

					FreezeCam(cFrame)
					n46 += 1 * dt

					local v2607 = t83
					local v2608 = #v2607

					if v2608 == 0 then
						return
					end

					for k, v in pairs(v2607) do
						local Character = v.Character

						if Character then
							SetCollisionObjectOff(Character)

							local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

							if HumanoidRootPart then
								local DanceAlign = HumanoidRootPart:FindFirstChild("DanceAlign")

								if DanceAlign then
									DanceAlign.Enabled = controlAll_config.LDance
								else
									local Attachment = Instance.new("Attachment", HumanoidRootPart)

									DanceAlign = Instance.new("AlignPosition", HumanoidRootPart)
									DanceAlign.Attachment0 = Attachment
									DanceAlign.Responsiveness = 50
									DanceAlign.Mode = Enum.PositionAlignmentMode.OneAttachment
									DanceAlign.ForceLimitMode = Enum.ForceLimitMode.PerAxis
									DanceAlign.MaxAxesForce = Vector3.new(math.huge, 0, math.huge)
									DanceAlign.Name = "DanceAlign"
								end

								local v2615 = k / v2608 * math.pi * 2 + n46

								DanceAlign.Position = Position + Vector3.new(math.cos(v2615) * 32, 0, math.sin(v2615) * 32)
							end
						end
					end
				end)
			end
		end,
		Save = false,
		Flag = "ControlALL_LDance"
	})
end

ControlAllMSection:AddButton({
	Name = "Bring",
	Callback = function()
		local Position = GetPlayerCFrame().Position
		local players = PS_:GetPlayers()
		local v2618 = #players

		if v2618 == 0 then
			return
		end

		for i, player in ipairs(players) do
			if CheckPlayer(player) then
				local Character = player.Character

				if Character then
					local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

					if HumanoidRootPart and IsNetworkOwner(HumanoidRootPart) then
						local v2623 = i / v2618 * math.pi * 2

						HumanoidRootPart.CFrame = CFrame.new(Position + Vector3.new(math.cos(v2623) * 20, 0, math.sin(v2623) * 20))
					end
				end
			end
		end
	end
})
ControlAllMSection:AddButton({
	Name = "Kill",
	Callback = function()
		for _, player in pairs(PS:GetPlayers()) do
			if CheckPlayer(player) then
				local Character = player.Character

				if Character then
					local Humanoid = Character:FindFirstChildOfClass("Humanoid")
					local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

					if Humanoid and HumanoidRootPart and IsNetworkOwner(HumanoidRootPart) then
						Humanoid.BreakJointsOnDeath = false
						Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
					end
				end
			end
		end
	end
})

do
	ControlAllMSection:AddButton({
		Name = "Jump",
		Callback = function()
			for _, player in pairs(PS:GetPlayers()) do
				if CheckPlayer(player) then
					local Character = player.Character

					if Character then
						local Humanoid = Character:FindFirstChildOfClass("Humanoid")
						local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

						if Humanoid and HumanoidRootPart and IsNetworkOwner(HumanoidRootPart) then
							Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
						end
					end
				end
			end
		end
	})
end

InvAGSection = Invincibility_Tab:AddSection({
	Name = "Invulnerability (Anti-Grab)"
})
InvincibilitySection = Invincibility_Tab:AddSection({
	Name = "Invulnerability"
})
AG_Gucci_Section = Invincibility_Tab:AddSection({
	Name = "Anti-Grab (Gucci)"
})
InvAKV2Section = Invincibility_Tab:AddSection({
	Name = "Invulnerability (Anti-Kick V2)"
})
InvALSection = Invincibility_Tab:AddSection({
	Name = "Invulnerability (Anti-Lag)"
})
InvARSection = Invincibility_Tab:AddSection({
	Name = "Invulnerability (Auto Respawn)"
})
InvAIPSection = Invincibility_Tab:AddSection({
	Name = "Invulnerability (Anti-Input)"
})
InvAKSection = Invincibility_Tab:AddSection({
	Name = "Invulnerability (Anti-Kick)"
})
CounterSection = Invincibility_Tab:AddSection({
	Name = "Counter-Attack"
})
ProtectionSection = Invincibility_Tab:AddSection({
	Name = "Third-Party Defense"
})
_G.PlayerToRemoveGrab = {}

do
	PlayersThirdPartyProtection = ProtectionSection:AddPlayersDropdown({
		Name = "Select Player",
		Default = "",
		SearchBar = true,
		MultipleSelection = true,
		Callback = function(p699)
			_G.PlayerToRemoveGrab = p699
		end
	})
end

MakeSearchBar(PlayersThirdPartyProtection, ProtectionSection)
AGP_connections = {}
AntiGrabQueue = {}

do
	ProtectionSection:AddToggle({
		Name = "Anti-Grab",
		Default = false,
		Callback = function(p700)
			_G.AntiGrabT_P = p700

			if p700 then
				while _G.AntiGrabT_P do
					for _, v in ipairs(_G.PlayerToRemoveGrab) do
						if typeof(v) == "string" then
							local v2636 = PS:FindFirstChild(v)

							if v2636 and v2636.Character then
								local Character = v2636.Character
								local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
								local Head = Character:FindFirstChild("Head")
								local PartOwner

								if Head then
									PartOwner = Head:FindFirstChild("PartOwner")
								end

								if PartOwner and PartOwner.Parent and PartOwner.Value and tostring(PartOwner.Value) ~= LocalPlayer.Name then
									RegisterGrabSpam(tostring(PartOwner.Value), "Protect")

									for i = 0, 50 do
										local PartOwner2 = Head:FindFirstChild("PartOwner")

										if PartOwner2 and PartOwner2.Value and tostring(PartOwner2.Value) ~= LocalPlayer.Name then
											if Getdistancefromcharacter(HumanoidRootPart.Position) > 30 then
												TeleportPlayer(CFrame.new(HumanoidRootPart.Position + Vector3.new(0, 5, 0)), 0, true, 1)
											else
												SNOWshipOnce(Head)
											end

											task.wait()
										else
											if PartOwner2 and PartOwner2.Value and tostring(PartOwner2.Value) == LocalPlayer.Name then
												v118:FireServer(HumanoidRootPart)
												HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
												print("Removed Ownership!")

												break
											end

											task.wait()
										end
									end
								end
							end
						end
					end

					task.wait()
				end
			end
		end,
		Save = true,
		Flag = "antigrabT_toggle"
	})
end

protectpunishdropdown = nil

do
	protectpunishdropdown = ProtectionSection:AddDropdown({
		Name = "Punish A-G Spam (Counter Mode)",
		Default = "None",
		Options = {
			"None",
			"Repulsion",
			"Freeze",
			"Death",
			"Kick"
		},
		Callback = function(p701)
			if p701 == "Kick" and GetKey() ~= "Xana" then
				protectpunishdropdown:Set("Repulsion")
				-- notify disabled

				return
			end

			_G.ProtectPunishGrabSpam = p701 ~= "None"
			_G.ProtectPunishMode = p701
		end,
		Save = true,
		Flag = "protectpunishmode_dropdown"
	})
end

do
	ProtectionSection:AddSlider({
		Name = "Grabs to Punish",
		Min = 1,
		Max = 10,
		Default = 2,
		Increment = 1,
		Callback = function(p702)
			_G.ProtectPunishGrabs = p702
		end
	})
end

do
	local t85 = {}

	ProtectionSection:AddToggle({
		Name = "Anti-Kick",
		Default = false,
		Callback = function(p703)
			_G.AntiKickT = p703

			if p703 then
				local function v2644(p704, p705, p706)
					if p704.Name == "NinjaKunai" and p704.Parent then
						local StickyPart = p704:WaitForChild("StickyPart", 5)

						if not StickyPart then
							return
						end

						local v2646 = CKIsHolding(p704)
						local v2647 = CheckIfKunaiIsOnPlayer(p704)

						StickyPart.CanTouch = false

						if v2647 == "Using" then
							SNOWship(StickyPart)
						elseif v2647 == "No use!" and (SNOWshipOnce(StickyPart) or IsNetworkOwner(StickyPart)) then
							SetStickyPart(p704, p706, CFrame.new(-0.5, -0.5, 0) * CFrame.Angles(math.rad(90), math.rad(30), math.rad(0)))
						elseif not IsNetworkOwner(StickyPart) and Getdistancefromcharacter(StickyPart.Position) > 30 and (not v2646 or not v2646:IsDescendantOf(p705)) then
							DeleteToyRE:FireServer(p704)
						end
					end
				end
				local function v2648()
					for _, v in ipairs(_G.PlayerToRemoveGrab) do
						local v2651 = PS:FindFirstChild(v)

						if v2651 then
							local v2652 = t85[v]

							if v2652 and v2652.Parent then
								local Character = v2651.Character

								if Character then
									local FirePlayerPart = Character:FindFirstChild("HumanoidRootPart") and Character.HumanoidRootPart:FindFirstChild("FirePlayerPart")

									if FirePlayerPart then
										v2644(v2652, Character, FirePlayerPart)
									end
								end
							elseif v2652 and not v2652.Parent then
								t85[v] = nil
							else
								local v2655 = GetAllPlayerToys(LocalPlayer.Name)
								local v2656

								for _, v2 in ipairs(v2655) do
									if v2.Name == "NinjaKunai" then
										local v2659 = false

										for _, v3 in pairs(t85) do
											if v3 == v2 then
												v2659 = true
											end
										end

										if not v2659 then
											t85[v] = v2
											v2656 = v2
										end
									end
								end

								if not v2656 then
									local v2662 = GetPlayerCFrame()

									if v2662 then
										SpawnToy({
											"NinjaKunai",
											v2662 * CFrame.new(0, 20, 20),
											(Vector3.new(0, 97.69000244140625, 0))
										}, true)
									end
								end
							end
						elseif t85[v] then
							DeleteToyRE:FireServer(t85[v])
							t85[v] = nil
						end
					end
				end

				while _G.AntiKickT do
					v2648()
					task.wait(0.1)
				end
			end
		end,
		Save = true,
		Flag = "antikickT_toggle"
	})
end

do
	InvAGSection:AddToggle({
		Name = "Anti-Grab",
		Default = false,
		Callback = function(p707)
			_G.AntiGrab = p707

			if p707 and not verifyDev(PlayerWhoIsHolding) then
				StruggleEvent:FireServer(LocalPlayer)
			end
		end,
		Save = true,
		Flag = "antigrab_toggle"
	})
end

InvAGSection:AddToggle({
	Name = "Whitelist Friends",
	Default = false,
	Callback = function(p708)
		_G.AntiGrabWF = p708

		if not (p708 or IsNetworkOwner(_G.UniversalPlayerRoot)) then
			StruggleEvent:FireServer(LocalPlayer)
			v134:FireServer(_G.UniversalPlayerRoot, 0)
		end
	end,
	Save = true,
	Flag = "AGWlF_toggle"
})
AntiFling_BoolValue = Instance.new("BoolValue")
AO_SecT = 0
InvincibilitySection:AddToggle({
	Name = "Anti-Ownership Spam",
	Default = true,
	Callback = function(p709)
		_G.AntiOwnershipSpam = p709

		if p709 then
			if AO_SecT > 1 then
				AO_SecT = 0
			end
		else
			local antispamowner_toggle = result.Flags.antispamowner_toggle

			if antispamowner_toggle then
				if tonumber(AOToggleCD) and os.clock() - AOToggleCD > 2 then
					AO_SecT = 0
				end

				AOToggleCD = os.clock()

				if AO_SecT == 0 then
					result:MakeNotification({
						Name = "Warning!",
						Content = "Are you sure?!",
						Image = "rbxassetid://119020096067894",
						Time = 3
					})
					antispamowner_toggle:Set(true)
				elseif AO_SecT == 1 then
					result:MakeNotification({
						Name = "Warning!",
						Content = "Are you sure you really want to disable this toggle? It's really important, dude!",
						Image = "rbxassetid://119020096067894",
						Time = 3
					})
					antispamowner_toggle:Set(true)
				end

				AO_SecT += 1
			end
		end
	end,
	Save = false,
	Flag = "antispamowner_toggle"
})
InvincibilitySection:AddToggle({
	Name = "Anti-Fling (Players) and (Toys)",
	Default = false,
	Callback = function(p710)
		_G.AntiFlingPlayers = p710

		if p710 then
			local connection2 = LocalPlayer.CharacterAdded:Connect(function()
				NoClipPlayerToLocalPlayer(LocalPlayer)
			end)

			NoClipPlayerToLocalPlayer(LocalPlayer)
			table.insert(AntiFlingPlrC, connection2)
		else
			DisconnectAll(t)
			nocol(LocalPlayer.Character, false)
		end
	end,
	Save = true,
	Flag = "antiflingPlayers_toggle"
})
GucciToy = ""
gucci_toy = nil
antiGrabThread = nil
activeGucciConnections = {}
ClearGucciConnections = function()
	for _, v in ipairs(activeGucciConnections) do
		if typeof(v) == "RBXScriptConnection" and v.Connected then
			v:Disconnect()
		end
	end

	table.clear(activeGucciConnections)
end

do
	StartAntiGrabGucci = function()
		if antiGrabThread then
			return
		end

		_G.AntiGrabGucci = true

		local u2667 = false

		antiGrabThread = task.spawn(function()
			local u2668
			local v2669
			local n47 = 0

			while _G.AntiGrabGucci do
				task.wait(0.1)

				local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
				local UniversalPlayerHumanoid = _G.UniversalPlayerHumanoid

				if _G.UniversalPlayerRoot and UniversalPlayerHumanoid and Character and UniversalPlayerHumanoid.Health > 0 and not _blobmanRunning then
					if not gucci_toy or not gucci_toy.Parent then
						repeat
							for _, child in pairs(u112:GetChildren()) do
								if child.Name == GucciToy and child ~= BlobmanV2 then
									gucci_toy = child
								end
							end

							SpawnToy({
								GucciToy,
								CFrame.new(0, 100000000, 0),
								(Vector3.new(0, 0, 0))
							}, true)
							task.wait(0.1)
						until typeof(gucci_toy) == "Instance"
					end

					local VehicleSeat = gucci_toy:FindFirstChild("VehicleSeat")

					if VehicleSeat then
						VehicleSeat:FindFirstChild("ProximityPrompt")

						local RightDetector = gucci_toy:FindFirstChild("RightDetector")

						if RightDetector then
							RightDetector.Name = ""
						end

						local WeldConstraint = VehicleSeat:FindFirstChild("WeldConstraint")

						if WeldConstraint then
							WeldConstraint:Destroy()
						end

						if v2669 ~= UniversalPlayerHumanoid or u2668 ~= VehicleSeat then
							ClearGucciConnections()
							v2669 = UniversalPlayerHumanoid
							u2668 = VehicleSeat
							u2667 = false

							for i = 0, 100 do
								UniversalPlayerHumanoid:ChangeState("Seated")
								task.wait()
							end

							table.insert(activeGucciConnections, VehicleSeat.ChildAdded:Connect(function(child)
								if child.Name == "SeatWeld" then
									child.Enabled = false
									task.wait()
									UniversalPlayerHumanoid.Sit = false
								end
							end))

							local function v2679()
								if not VehicleSeat.Parent or not gucci_toy.Parent then
									ClearGucciConnections()
									gucci_toy = nil
									u2668 = nil
								end
							end

							table.insert(activeGucciConnections, VehicleSeat:GetPropertyChangedSignal("Parent"):Connect(v2679))
							table.insert(activeGucciConnections, gucci_toy:GetPropertyChangedSignal("Parent"):Connect(v2679))
							table.insert(activeGucciConnections, VehicleSeat:GetPropertyChangedSignal("Occupant"):Connect(function()
								local Occupant = VehicleSeat.Occupant

								if Occupant and Occupant ~= _G.UniversalPlayerHumanoid then
									local playerFromCharacter = PS:GetPlayerFromCharacter(Occupant.Parent)

									if playerFromCharacter and GucciNotififyEN then
										result:MakeNotification({
											Name = "Anti-Grab (Gucci)",
											Content = playerFromCharacter.Name .. " has sat on your Blobman",
											Image = "rbxassetid://136249099949073",
											Time = 5
										})
									end
								end
							end))
						end

						local u2682 = false
						local connection2 = UniversalPlayerHumanoid.StateChanged:Connect(function(old, new)
							if old.Value == 13 or new.Value == 13 then
								u2682 = true
							end
						end)

						if replicatesignal then
							for i = 1, 20 do
								if not _G.AntiGrabGucci then
									break
								end

								if not _G.IsGodModeOn then
									v134:FireServer(_G.UniversalPlayerRoot, 0)
								end

								if gucci_toy then
									task.wait()
									replicatesignal(VehicleSeat.RemoteCreateSeatWeld, _G.UniversalPlayerHumanoid)

									continue
								end

								break
							end
						else
							for i = 1, 20 do
								if _G.AntiGrabGucci then
									if not _G.IsGodModeOn then
										v134:FireServer(_G.UniversalPlayerRoot, 0)
									end

									if gucci_toy then
										task.wait()
										VehicleSeat:Sit(_G.UniversalPlayerHumanoid)

										continue
									end
								end

								break
							end
						end

						UniversalPlayerHumanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
						task.wait(ping() / 1000)

						if u2682 then
							n47 = 0
							_G.IsGodModeOn = false
						else
							n47 += 1

							if n47 >= 10 then
								if not u2667 then
									u2667 = true
									result:MakeNotification({
										Name = "Anti-Grab (Gucci)",
										Content = "Gucci is working!",
										Image = "rbxassetid://131444449466462",
										Time = 2
									})
								end

								n47 = 0
								_G.IsGodModeOn = true
							end
						end

						connection2:Disconnect()
					end
				end
			end

			if gucci_toy then
				DeleteToyRE:FireServer(gucci_toy)
			end
		end)
	end
end

do
	StopAntiGrabGucci = function()
		_G.AntiGrabGucci = false
		_G.IsGodModeOn = false

		if antiGrabThread then
			task.cancel(antiGrabThread)
			antiGrabThread = nil
		end

		ClearGucciConnections()

		if gucci_toy then
			DeleteToyRE:FireServer(gucci_toy)
			gucci_toy = nil
		end

		if _G.UniversalPlayerHumanoid then
			for i = 0, 100 do
				_G.UniversalPlayerHumanoid:ChangeState("Seated")
				task.wait()
			end
		end
	end
end

AG_Gucci_Section:AddToggle({
	Name = "Anti-Grab (Gucci)",
	Default = false,
	Callback = function(p711)
		if p711 then
			StartAntiGrabGucci()
		else
			StopAntiGrabGucci()
		end
	end,
	Save = true,
	Flag = "antigrabgucci_toggle"
})
AG_Gucci_Section:AddDropdown({
	Name = "Gucci Type",
	Default = "CreatureBlobman",
	Options = {
		{
			FakeName = "Blobman",
			Name = "CreatureBlobman",
			Image = "rbxassetid://71634501782424",
			ImageRectOffset = Vector2.new(270, 360),
			ImageRectSize = Vector2.new(90, 90)
		},
		{
			FakeName = "Tractor (Invisibility)" .. premium_text,
			Name = "TractorGreen",
			Image = "rbxassetid://104169552239223",
			ImageRectOffset = Vector2.new(90, 720),
			ImageRectSize = Vector2.new(90, 90)
		}
	},
	Callback = function(p712)
		if p712 == "TractorGreen" and GetKey() ~= "Xana" then
			local guccitoy_type = result.Flags.guccitoy_type

			if guccitoy_type then
				guccitoy_type:Set("CreatureBlobman")
			end

			-- notify disabled
			GucciToy = "CreatureBlobman"

			return
		end

		GucciToy = p712
		StopAntiGrabGucci()

		if GucciToy == "CreatureBlobman" then
			RemoveToyFromQueueList("TractorGreen")
		else
			RemoveToyFromQueueList("CreatureBlobman")
		end

		local antigrabgucci_toggle = result.Flags.antigrabgucci_toggle

		if antigrabgucci_toggle and antigrabgucci_toggle.Value then
			StartAntiGrabGucci()
		end
	end,
	Flag = "guccitoy_type"
})

do
	InvincibilitySection:AddToggle({
		Name = "Anti-Burn",
		Default = false,
		Callback = function(p713)
			_G.AntiBurn = p713
		end,
		Save = true,
		Flag = "antiburn_toggle"
	})
end

AntiBlobmanConnections = {}
DeleteRootAttachment = function(p714)
	if typeof(p714) == "Instance" and p714:IsA("Attachment") and p714.Name == "RootAttachment" and _G.AntiBlobman then
		if typeof(rootattachmentT) == "thread" then
			task.cancel(rootattachmentT)
			rootattachmentT = nil
		end

		rootattachmentT = task.spawn(function()
			repeat
				task.wait(0.1)
			until os.clock() - grabbingScript_oc >= 1

			print("Deletei o RootAttach!")
			p714:Destroy()
		end)
	end
end
AB_SecT = 0

do
	InvincibilitySection:AddToggle({
		Name = "Anti-Blobman",
		Default = true,
		Callback = function(p715)
			_G.AntiBlobman = p715

			if p715 then
				if AB_SecT > 1 then
					AB_SecT = 0
				end

				local UniversalPlayerRoot = _G.UniversalPlayerRoot
				local RootAttachment = typeof(UniversalPlayerRoot) == "Instance" and UniversalPlayerRoot:FindFirstChild("RootAttachment")

				if RootAttachment then
					DeleteRootAttachment(RootAttachment)
				end

				ConnectPlayersTF("AntiBlobman", "Add", function(p716)
					if p716.Name == "CreatureBlobman" then
						local v2691 = p716

						WaitForChildrenAddedOnce(v2691, 0.1, function()
							local RightDetector = v2691:FindFirstChild("RightDetector")
							local LeftDetector = v2691:FindFirstChild("LeftDetector")
							local VehicleSeat = v2691:FindFirstChildOfClass("VehicleSeat")
							local AlignPosition = RightDetector and RightDetector:FindFirstChildOfClass("AlignPosition")
							local AlignOrientation = RightDetector and RightDetector:FindFirstChildOfClass("AlignOrientation")
							local t86 = {
								AlignPosition,
								AlignOrientation,
								LeftDetector and LeftDetector:FindFirstChildOfClass("AlignPosition"),
								LeftDetector and LeftDetector:FindFirstChildOfClass("AlignOrientation")
							}

							local function v2698(p717)
								for _, v in pairs(t86) do
									v.Enabled = p717
								end
							end

							local ok = not VehicleSeat.Occupant

							if not ok then
								ok = not VehicleSeat.Occupant:IsDescendantOf(_G.UniverChar)
							end

							if ok then
								v2698(false)
							else
								v2698(true)
							end

							local connection2 = VehicleSeat:GetPropertyChangedSignal("Occupant"):Connect(function()
								if VehicleSeat.Occupant then
									if VehicleSeat.Occupant:IsDescendantOf(_G.UniverChar) then
										v2698(true)
									else
										v2698(false)
									end
								else
									v2698(false)

									return
								end
							end)

							for _, v in pairs(t86) do
								local connection3 = v:GetPropertyChangedSignal("Attachment0"):Connect(function()
									local Attachment0 = v.Attachment0

									if Attachment0 and Attachment0:IsDescendantOf(_G.UniverChar) then
										v.Enabled = false
									elseif Attachment0 then
										v.Enabled = true
									else
										v.Enabled = false
									end
								end)

								table.insert(AntiBlobmanConnections, connection3)
							end

							table.insert(AntiBlobmanConnections, connection2)
						end)
					end
				end)
			else
				local UniversalPlayerRoot = _G.UniversalPlayerRoot

				if not (typeof(UniversalPlayerRoot) == "Instance" and UniversalPlayerRoot:FindFirstChild("RootAttachment")) then
					Instance.new("Attachment", _G.UniversalPlayerRoot).Name = "RootAttachment"
				end

				ConnectPlayersTF("AntiBlobmanD", "Add", function(p718)
					if p718.Name == "CreatureBlobman" then
						local RightDetector = p718:FindFirstChild("RightDetector")
						local LeftDetector = p718:FindFirstChild("LeftDetector")
						local t87 = {
							RightDetector and RightDetector:FindFirstChildOfClass("AlignPosition"),
							RightDetector and RightDetector:FindFirstChildOfClass("AlignOrientation"),
							LeftDetector and LeftDetector:FindFirstChildOfClass("AlignPosition"),
							LeftDetector and LeftDetector:FindFirstChildOfClass("AlignOrientation")
						}

						for _, v in pairs(t87) do
							v.Enabled = true
						end

						table.clear(t87)
					end
				end)
				ConnectPlayersTF("AntiBlobmanD")
				ConnectPlayersTF("AntiBlobman")
				DisconnectAll(AntiBlobmanConnections)

				local antiblobman_toggle = result.Flags.antiblobman_toggle

				if antiblobman_toggle then
					if tonumber(ABToggleCD) and os.clock() - ABToggleCD > 2 then
						AB_SecT = 0
					end

					ABToggleCD = os.clock()

					if AB_SecT == 0 then
						result:MakeNotification({
							Name = "Warning!",
							Content = "Are you sure?!",
							Image = "rbxassetid://119020096067894",
							Time = 3
						})
						antiblobman_toggle:Set(true)
					elseif AB_SecT == 1 then
						result:MakeNotification({
							Name = "Warning!",
							Content = "Are you sure you really want to disable this toggle? It's really important, dude!",
							Image = "rbxassetid://119020096067894",
							Time = 3
						})
						antiblobman_toggle:Set(true)
					end

					AB_SecT += 1
				end
			end
		end,
		Save = false,
		Flag = "antiblobman_toggle"
	})
end

InvincibilitySection:AddToggle({
	Name = "Anti-Explosion",
	Default = false,
	Callback = function(p719)
		_G.AntiExplosion = p719
	end,
	Save = true,
	Flag = "antiexplosion_toggle"
})
h_hConnection = nil
CheckIfCharHasLegs = function(p720)
	if p720:FindFirstChildOfClass("Humanoid") and p720:IsA("Model") then
		local LeftLeg = p720:FindFirstChild("Left Leg")
		local RightLeg = p720:FindFirstChild("Right Leg")

		if LeftLeg and RightLeg then
			return true
		end

		return false
	end
end
RemoveLegsForAntiRagdoll = function()
	local v2716 = GetPlayerCFrame()
	local v2717 = GetPlayerCFrame()

	while _G.AntiRagdoll do
		if _G.IsCharacterInRagdoll then
			local v2718 = GetPlayerCharacter()

			if v2718 then
				local LeftLeg = v2718:FindFirstChild("Left Leg")
				local RightLeg = v2718:FindFirstChild("Right Leg")
				local Torso = v2718:FindFirstChild("Torso")
				local Head = v2718:FindFirstChild("Head")
				local HumanoidRootPart = v2718:FindFirstChild("HumanoidRootPart")
				local n48 = -92

				if LeftLeg or RightLeg then
					W.FallenPartsDestroyHeight = -100

					local function v2725()
						Torso.CFrame = CFrame.new() + Vector3.new(10000, n48, 10000)
						LeftLeg.CFrame = CFrame.new() + Vector3.new(10000, -102, 10000)
						Torso.CFrame = CFrame.new() + Vector3.new(10000, n48, 10000)
						RightLeg.CFrame = CFrame.new() + Vector3.new(10000, -102, 10000)
						Torso.CFrame = CFrame.new() + Vector3.new(10000, n48, 10000)
						HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
						Torso.CFrame = CFrame.new() + Vector3.new(10000, n48, 10000)
						Head.Velocity = Vector3.new(0, 0, 0)
						Torso.CFrame = CFrame.new() + Vector3.new(10000, n48, 10000)
						Head.CFrame = v2716
						Torso.CFrame = CFrame.new() + Vector3.new(10000, n48, 10000)
						HumanoidRootPart.CFrame = v2717
						Torso.CFrame = CFrame.new() + Vector3.new(10000, n48, 10000)
					end

					v2725()
					task.wait()
					HumanoidRootPart.CFrame = v2717
					task.wait(1)
					n48 = -100
					v2725()
					task.wait()
					Torso.CFrame = v2717
					wait(0.5)
				else
					v134:FireServer(_G.UniversalPlayerRoot, 0)

					local UniversalPlayerHumanoid = _G.UniversalPlayerHumanoid

					if _G.AntiVoid then
						workspace.FallenPartsDestroyHeight = (0/0)
					end

					if UniversalPlayerHumanoid then
						UniversalPlayerHumanoid.HipHeight = 2

						if not h_hConnection then
							h_hConnection = UniversalPlayerHumanoid.Changed:Connect(function(p721)
								if p721 == "HipHeight" then
									UniversalPlayerHumanoid.HipHeight = 2
								end
							end)
						end
					end

					break
				end
			else
				wait(0.5)
			end
		else
			v134:FireServer(_G.UniversalPlayerRoot, 4)
			wait(0.5)
		end
	end
end

do
	DestroySnowball = function(p722)
		if typeof(p722) == "Instance" and p722.Name == "BallSnowball" then
			local SoundPart = p722:FindFirstChild("SoundPart")

			if SoundPart then
				Burn(SoundPart)
			end
		end
	end
end

do
	MakeEffectsIcons = function()
		local ScreenGui = Instance.new("ScreenGui")
		local Frame = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")
		local ImageLabel_ = Instance.new("ImageLabel")

		ScreenGui.Name = "Effects"
		ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		ScreenGui.ResetOnSpawn = false
		ScreenGui.IgnoreGuiInset = true
		Frame.Name = "Effects List"
		Frame.Parent = ScreenGui
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BackgroundTransparency = 1
		Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame.BorderSizePixel = 0
		Frame.Size = UDim2.new(0.0460185669, 0, 0.99999994, 0)
		Frame.Position = UDim2.new(0.002, 0, -0.004, 0)
		UIListLayout.Parent = Frame
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
		UIListLayout.Padding = UDim.new(0.00999999978, 0)
		ImageLabel_.Name = "Invisibility"
		ImageLabel_.Parent = Frame
		ImageLabel_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel_.BackgroundTransparency = 1
		ImageLabel_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ImageLabel_.BorderSizePixel = 0
		ImageLabel_.Position = UDim2.new(0.0196077749, 0, 0.905244827, 0)
		ImageLabel_.Size = UDim2.new(0.98631978, 0, 0.0953384489, 0)
		ImageLabel_.Image = "rbxassetid://134147042564951"
		ImageLabel_.ScaleType = Enum.ScaleType.Fit
		ImageLabel_.Visible = false

		return ImageLabel_
	end
end

tweenInfoRandom = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, true, 0)
InvisImage = MakeEffectsIcons()
InvisImageTween = TweenService:Create(InvisImage, tweenInfoRandom, {
	ImageTransparency = 0.5
})

do
	InvincibilitySection:AddToggle({
		Name = "Anti-Stun",
		Default = false,
		Callback = function(p723)
			_G.AntiPS = p723

			if p723 then
				while _G.AntiPS do
					SitOnBlobman(true)
					wait()
				end
			end
		end
	})
end

InvincibilitySection:AddToggle({
	Name = "Anti-Snowball",
	Default = false,
	Callback = function(p724)
		_G.AntiSnowball = p724

		if p724 then
			local t88 = {}

			local function v2733(p725)
				if p725.Name == "BallSnowball" then
					table.insert(t88, p725)
				end
			end
			local function v2734(p726)
				local PlayerValue = p726:FindFirstChild("PlayerValue")

				if not PlayerValue or not PlayerValue.Value then
					return
				end

				tostring(PlayerValue.Value)
				DestroySnowball(p726)
			end

			ConnectPlayersTF("AntiSnowball", "Add", v2733)
			task.spawn(function()
				while _G.AntiSnowball do
					for k, v in pairs(t88) do
						if v.Parent then
							while v.Parent and _G.AntiSnowball do
								v2734(v)
								task.wait(0.015)
							end
						else
							table.remove(t88, k)
						end
					end

					task.wait(0.1)
				end
			end)
		else
			ConnectPlayersTF("AntiSnowball")
		end
	end,
	Save = true,
	Flag = "antisnowballragdoll_toggle"
})
antiragdollbanana = InvincibilitySection:AddToggle({
	Name = "Anti-Ragdoll 🍌",
	Default = false,
	Callback = function(p727)
		_G.AntiRagdoll = p727

		if p727 then
			RemoveLegsForAntiRagdoll()
		else
			local v2738 = GetPlayerCharacter()

			if v2738 and not CheckIfCharHasLegs(v2738) then
				local Humanoid = v2738:FindFirstChildOfClass("Humanoid")

				if Humanoid then
					Humanoid.Health = 0
				end
			end
		end
	end,
	Save = true,
	Flag = "antibananaragdoll_toggle"
})

do
	CounterSection:AddToggle({
		Name = "Auto-Attacker",
		Default = false,
		Callback = function(p728)
			_G.AutoAttacker = p728
		end,
		Save = true,
		Flag = "rinnegan_toggle"
	})
end

counterdropdownselection = nil
counterdropdownselection = CounterSection:AddDropdown({
	Name = "Counter Mode",
	Default = "Repulsion",
	Options = {
		"Repulsion",
		"Freeze",
		"Death",
		"Kick",
		"Grab"
	},
	Callback = function(p729)
		if p729 == "Kick" and GetKey() ~= "Xana" then
			counterdropdownselection:Set("Repulsion")
			-- notify disabled

			return
		end

		_G.CounterMode = p729
	end
})
floppadialogo = Instance.new("ScreenGui")
Floppa = Instance.new("ImageLabel")
Bubble_chat = Instance.new("ImageLabel")
BubbleTextchat = Instance.new("TextLabel")
typingsoundeffect = Instance.new("Sound", W)
typingsoundeffect2 = Instance.new("Sound", W)
typingsoundeffect.SoundId = "rbxassetid://9120299506"
typingsoundeffect.Volume = 0.345
typingsoundeffect2.SoundId = "rbxassetid://9118870964"
typingsoundeffect2.Volume = 1
typingsoundeffect2.PlaybackSpeed = 1.5
floppadialogo.IgnoreGuiInset = true
floppadialogo.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
floppadialogo.Name = "floppadialogo"
floppadialogo.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
floppadialogo.Parent = v111
floppadialogo.DisplayOrder = 10
floppadialogo.Enabled = false
floppadialogo.ResetOnSpawn = false
Floppa.ZIndex = 0
Floppa.BorderSizePixel = 0
Floppa.BackgroundColor3 = Color3.new(1, 1, 1)
Floppa.Image = "rbxassetid://15668608167"
Floppa.Size = UDim2.new(0.195372716, 0, 0.305668026, 0)
Floppa.BorderColor3 = Color3.new(0, 0, 0)
Floppa.Position = UDim2.new(0.0185752641, 0, 0.661330521, 0)
Floppa.Name = "Floppa"
Floppa.Parent = floppadialogo
Bubble_chat.BorderSizePixel = 0
Bubble_chat.Transparency = 1
Bubble_chatBackgroundColor3 = Color3.new(1, 1, 1)
Bubble_chat.Image = "rbxassetid://1395860348"
Bubble_chat.Size = UDim2.new(1.03356743, 0, 0.79455024, 0)
Bubble_chat.BorderColor3 = Color3.new(0, 0, 0)
Bubble_chat.BackgroundTransparency = 1
Bubble_chat.Position = UDim2.new(0.678329766, 0, -0.292054504, 0)
Bubble_chat.Name = "Bubble chat"
Bubble_chat.Parent = Floppa
BubbleTextchat.TextWrapped = true
BubbleTextchat.BorderSizePixel = 0
BubbleTextchat.Transparency = 1
BubbleTextchat.TextScaled = true
BubbleTextchat.BackgroundColor3 = Color3.new(1, 1, 1)
BubbleTextchat.TextSize = 14
BubbleTextchat.Size = UDim2.new(0.634431362, 0, 0.268763244, 0)
BubbleTextchat.TextColor3 = Color3.new(0, 0, 0)
BubbleTextchat.BorderColor3 = Color3.new(0, 0, 0)
BubbleTextchat.Text = "I saved you from falling on the void, my son!"
BubbleTextchat.Font = Enum.Font.SourceSans
BubbleTextchat.Position = UDim2.new(0.18163082, 0, 0.365639389, 0)
BubbleTextchat.BackgroundTransparency = 1
BubbleTextchat.TextTransparency = 0
BubbleTextchat.Parent = Bubble_chat
floppatweeninfo1 = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
floppatween = Tween:Create(Floppa, floppatweeninfo1, {
	Position = UDim2.new(0.0185752641, 0, 0.661330521, 0)
})
floppamessageoncooldown = false
antivoidmesssage = function()
	if not floppamessageoncooldown then
		Floppa.Position = UDim2.new(0.0185752641, 0, 2, 0)
		floppadialogo.Enabled = true
		Floppa.Visible = true
		Bubble_chat.Visible = false
		BubbleTextchat.Visible = false
		floppamessageoncooldown = true
		floppatween:Play()
		floppatween.Completed:Connect(function(playbackState)
			if playbackState == Enum.PlaybackState.Completed then
				Bubble_chat.Visible = true
				BubbleTextchat.Visible = true
				BubbleTextchat.Text = ""

				for i = 0, 45 do
					BubbleTextchat.Text = string.sub("I saved you from falling on the void, my son!", 1, i)
					typingsoundeffect:Play()
					task.wait(0.05)
				end

				task.wait(1)
				typingsoundeffect2:Play()
				floppadialogo.Enabled = false
				floppamessageoncooldown = false
			end
		end)
	end
end

do
	AntiVoidToggle = InvincibilitySection:AddToggle({
		Name = "Anti-Void",
		Default = false,
		Callback = function(p730)
			_G.AntiVoid = p730

			if p730 then
				workspace.FallenPartsDestroyHeight = (0/0)
			else
				W.FallenPartsDestroyHeight = -100
			end
		end,
		Save = true,
		Flag = "antivoid_toggle"
	})
end

AutoAntiLag_Config = {
	FPS_LIMIT = 30,
	POINTS_TO_LAG = 12,
	CHECK_INTERVAL = 0.05,
	lagPoints = 0,
	TimeToDisable = 10,
	th = 0
}
AntiLagInfoNotif = nil
antilagtoggle = InvALSection:AddToggle({
	Name = "Anti-Lag",
	Default = false,
	Callback = function(p731)
		_G.AntiLagToggle = p731

		if anticreatelinelocalscript then
			anticreatelinelocalscript.Disabled = p731
		end

		if CABM_Module then
			CABM_Module.BlockAllGrab = p731
		end

		if AntiLagInfoNotif then
			task.cancel(AntiLagInfoNotif)
			AntiLagInfoNotif = nil
		end

		if p731 then
			AntiLagInfoNotif = task.spawn(function()
				while true do
					result:MakeNotification({
						Name = "Anti-Lag Enabled",
						Content = "Anti-Lag is enabled. You will not be able to see other people's lines.",
						Image = "rbxassetid://4483345998",
						Time = 6
					})
					task.wait(480)
				end
			end)
		end
	end,
	Save = false,
	Flag = "antilag_toggle"
})

do
	local thread

	InvALSection:AddToggle({
		Name = "Auto Enable",
		Default = true,
		Callback = function(p732)
			_G.AutoEnableAntiLag = p732
			AutoAntiLag_Config.lagPoints = 0

			if thread then
				task.cancel(thread)
				thread = nil
			end

			if not p732 then
				return
			end

			thread = task.spawn(function()
				while _G.AutoEnableAntiLag do
					local AutoAntiLag_Config_ = AutoAntiLag_Config
					local v2743 = 1 / RunService2.Heartbeat:Wait()

					if v2743 < 5 then
						AutoAntiLag_Config_.lagPoints += AutoAntiLag_Config_.FPS_LIMIT / v2743
					elseif v2743 < AutoAntiLag_Config_.FPS_LIMIT then
						AutoAntiLag_Config_.lagPoints += 1
					else
						AutoAntiLag_Config_.lagPoints = math.max(AutoAntiLag_Config_.lagPoints - 0.5, 0)
					end

					AutoAntiLag_Config_.lagPoints = math.clamp(AutoAntiLag_Config_.lagPoints, 0, AutoAntiLag_Config_.POINTS_TO_LAG)

					if AutoAntiLag_Config_.POINTS_TO_LAG <= AutoAntiLag_Config_.lagPoints then
						local antilag_toggle = result.Flags.antilag_toggle

						if antilag_toggle and not antilag_toggle.Value then
							result:MakeNotification({
								Name = "Note",
								Content = "Lag Line based on FPS Detected!",
								Image = "rbxassetid://4483345998",
								Time = 6
							})
							antilag_toggle:Set(true)

							if CABM_Module then
								CABM_Module.BlockAllGrab = true
							end

							if setfpscap then
								setfpscap(10000)
							end
						end
					end

					task.wait(AutoAntiLag_Config_.CHECK_INTERVAL)
				end
			end)
		end
	})
end

AK_Config = {
	AutoEnable = false,
	AutoReset = false
}
InvAIPSection:AddToggle({
	Name = "Anti-Input",
	Default = false,
	Callback = function(p733)
		_G.AntiInput = p733

		if p733 then
			task.spawn(function()
				while _G.AntiInput do
					if typeof(AntiInputToy) == "Instance" and not AntiInputToy.Parent then
						AntiInputToy = nil
					end

					if AntiInputToy then
						local HoldPart = AntiInputToy:FindFirstChild("HoldPart")
						local HoldItemRemoteFunction
						local DropItemRemoteFunction

						if HoldPart then
							HoldItemRemoteFunction = HoldPart:FindFirstChild("HoldItemRemoteFunction")
							DropItemRemoteFunction = HoldPart:FindFirstChild("DropItemRemoteFunction")
						end

						if HoldPart and HoldItemRemoteFunction and DropItemRemoteFunction then
							local v2748 = CheckIfPlayerIsHoldingFood(AntiInputToy)

							if v2748 == "Useless" or v2748 == "Used" then
								DeleteToyRE:FireServer(AntiInputToy)
							elseif v2748 == "No use!" then
								if not AntiInputVerifyC then
									AntiInputVerifyC = task.spawn(function()
										local n49 = 0

										while _G.AntiInput and AntiInputToy and AntiInputToy.Parent do
											local v2750 = CheckIfPlayerIsHoldingFood(AntiInputToy)

											if v2750 == "No use!" then
												n49 += 1
											elseif v2750 == "Using" then
												n49 = 0
											end

											if not (n49 >= 200) then
												task.wait(0.002)

												continue
											end

											break
										end

										AntiInputVerifyC = nil
									end)
								end

								if not InputLagC1 then
									InputLagC1 = task.spawn(function()
										while _G.AntiInput and AntiInputToy and AntiInputToy.Parent do
											task.spawn(function()
												DropItemRemoteFunction:InvokeServer(AntiInputToy, CFrame.new(_G.UniversalPlayerHead.Position + Vector3.new(0, 1000, 0)), Vector3.new(0, 0, 0))
											end)
											HoldItemRemoteFunction:InvokeServer(AntiInputToy, _G.UniverChar)
											task.wait(0.05)
										end

										InputLagC1 = nil
									end)
								end
							end
						end
					else
						local UniversalPlayerRoot = _G.UniversalPlayerRoot

						if UniversalPlayerRoot then
							SpawnToy({
								"FoodMayonnaise",
								UniversalPlayerRoot.CFrame * CFrame.new(0, 20, 20),
								(Vector3.new(0, -145.14599609375, 0))
							}, true)
						end

						for _, child in pairs(u112:GetChildren()) do
							if child.Name == "FoodMayonnaise" and not AntiInputToy then
								AntiInputToy = child
							end
						end
					end

					wait()
				end
			end)
		else
			DeleteToyRE:FireServer(AntiInputToy)
		end
	end,
	Save = true,
	Flag = "antiinput_toggle"
})

do
	InvARSection:AddToggle({
		Name = "Auto-Respawn",
		Default = false,
		Callback = function(p734)
			_G.AutoRS = p734

			if p734 then
				AutoRSConn = LocalPlayer.CharacterAdded:Connect(function(character)
					character:WaitForChild("HumanoidRootPart", 5).CFrame = AutoRespawnLocationCF or CFrame.new(0, 0, 0)
				end)
			elseif typeof(AutoRSConn) == "RBXScriptConnection" then
				AutoRSConn:Disconnect()
				AutoRSConn = nil
			end
		end,
		Save = true,
		Flag = "autors_toggle"
	})
end

InvARSection:AddDropdown({
	Name = "Location",
	Default = GameLocationLists[1],
	Options = GameLocationLists,
	Callback = function(p735)
		AutoRespawnLocationCF = placeLocations[p735]
	end,
	Save = true,
	MaxElements = 3,
	Flag = "autors_dropdown"
})

do
	InvAKV2Section:AddToggle({
		Name = "Anti Kick (PCLD Break)",
		Default = true,
		Callback = function(p736)
			_G.AntiKickV2 = p736

			if p736 then
				if typeof(HookedPCLDBreak) == "function" then
					HookedPCLDBreak()
				end
			else
				if typeof(bkPCLDstep2) == "RBXScriptConnection" and bkPCLDstep2.Connected then
					bkPCLDstep2:Disconnect()
					result:MakeNotification({
						Name = "Anti-Kick V2",
						Content = "PCLD Breaking <font color='#fa9911'> cancelled!</font>",
						Image = "rbxassetid://110786993356448",
						Time = 2
					})
				end

				if typeof(BKPCLDPlrs) == "table" and BKPCLDPlrs[LocalPlayer] then
					local UniversalPlayerHumanoid = _G.UniversalPlayerHumanoid

					if UniversalPlayerHumanoid and UniversalPlayerHumanoid.Health > 0 and _G.UniverChar then
						result:MakeNotification({
							Name = "Anti-Kick V2",
							Content = "PCLD Break <font color='#c7363b'> removed!</font>",
							Image = "rbxassetid://110786993356448",
							Time = 2
						})
						UniversalPlayerHumanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
					end
				end
			end
		end,
		Save = true,
		Flag = "antikickpcld"
	})
end

do
	antikicktoggle = InvAKSection:AddToggle({
		Name = "Anti-Kick",
		Default = false,
		Callback = function(p737)
			_G.AntiKick = p737

			if p737 then
				while _G.AntiKick do
					if AntiKickToy and not AntiKickToy.Parent then
						AntiKickToy = nil
						AK_message = nil
					end

					if AntiKickToy then
						local StickyPart = AntiKickToy:FindFirstChild("StickyPart")
						local UniversalPlayerRoot = _G.UniversalPlayerRoot

						if StickyPart and UniversalPlayerRoot then
							local v2757 = CheckIfKunaiIsOnPlayer(AntiKickToy)
							local Magnitude = (UniversalPlayerRoot.Position - StickyPart.Position).Magnitude
							local v2759 = CKIsHolding(AntiKickToy)

							if v2757 == "Useless" then
								DeleteToyRE:FireServer(AntiKickToy)
							elseif v2757 == "No use!" and (SNOWshipOnce(StickyPart) or IsNetworkOwner(StickyPart)) then
								RS.PlayerEvents.StickyPartEvent:FireServer(StickyPart, UniversalPlayerRoot.FirePlayerPart, CFrame.Angles(math.rad(90), 0, 0))
							elseif v2757 == "Used" and Magnitude < 30 then
								SNOWshipOnce(StickyPart)
							elseif v2757 == "Using" and v2759 and v2759.Name ~= "FirePlayerPart" then
								if SNOWshipOnce(StickyPart) then
									RS.PlayerEvents.StickyPartEvent:FireServer(StickyPart, UniversalPlayerRoot.FirePlayerPart, CFrame.Angles(math.rad(90), 0, 0))
								end
							elseif (v2757 == "Used" or v2757 == "No use!") and Magnitude > 30 and not IsNetworkOwner(StickyPart) then
								DeleteToyRE:FireServer(AntiKickToy)
							elseif v2757 == "Using" and Magnitude > 2 then
								DeleteToyRE:FireServer(AntiKickToy)
							elseif not _G.FirstFloppaMessage then
								AK_message("Don't worry my buddy, you won't get kicked", 3)
								_G.FirstFloppaMessage = true
							end
						end
					else
						local UniversalPlayerRoot = _G.UniversalPlayerRoot

						if UniversalPlayerRoot then
							SpawnToy({
								"NinjaShuriken",
								UniversalPlayerRoot.CFrame * CFrame.new(0, 0, 20),
								(Vector3.new(0, -145.14599609375, 0))
							}, true)
						end

						for _, child in pairs(u112:GetChildren()) do
							if child.Name == "NinjaShuriken" and not AntiKickToy then
								local v2763 = false

								for _, v in pairs(BreakPlotAreaToy) do
									if child == v then
										v2763 = true
									end
								end

								if not v2763 then
									AntiKickToy = child
									AK_message = SetKunaiToyAntiKick(AntiKickToy)
									AntiKickToy:SetAttribute("Connected2", true)
									RemoveToyFromQueueList("NinjaShuriken")
								end
							end
						end
					end

					task.wait(0.1)
				end
			else
				DeleteToyRE:FireServer(AntiKickToy)
			end
		end,
		Save = true,
		Flag = "antikick_toggle"
	})
end

InvAKSection:AddToggle({
	Name = "Auto Enable",
	Default = true,
	Callback = function(p738)
		AK_Config.AutoEnable = p738
	end
})
InvAKSection:AddToggle({
	Name = "Auto Reset",
	Default = true,
	Callback = function(p739)
		AK_Config.AutoReset = p739
	end
})

if RS:FindFirstChild("ResetBEvent") then
	saferesetb = RS:FindFirstChild("ResetBEvent")
else
	saferesetb = Instance.new("BindableEvent", RS)
	saferesetb.Name = "ResetBEvent"
	saferesetb.Event:Connect(function()
		if alreadysafereset or _G.UniversalPlayerHumanoid and _G.UniversalPlayerHumanoid.Health <= 0 then
			return
		end

		alreadysafereset = true

		local u2766 = false
		local n50 = 0
		local connection2 = _G.UniversalPlayerHumanoid.Died:Once(function()
			u2766 = true
		end)
		local connection3 = LocalPlayer.CharacterAdded:Once(function()
			u2766 = true
		end)

		if replicatesignal then
			pcall(replicatesignal, LocalPlayer.Kill)
		else
			repeat
				StruggleEvent:FireServer()

				if _G.UniversalPlayerHumanoid then
					_G.UniversalPlayerHumanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
				end

				n50 += 1
				task.wait()
			until u2766 or n50 >= 600
		end

		alreadysafereset = false
		connection2:Disconnect()
		connection3:Disconnect()
	end)
end

SafeReset = function()
	if saferesetb then
		if saferesetb:IsA("BindableEvent") then
			saferesetb:Fire()
		end
	end
end
SG:SetCore("ResetButtonCallback", saferesetb)
HookedPCLDBreak = function()
	killedAfterRespawn = false
	task.wait(0)
	SafeReset()
	result:MakeNotification({
		Name = "Anti-Kick V2",
		Content = "Break PCLD <font color='#6ec493'> running!</font>",
		Image = "rbxassetid://94212016861936",
		Time = 2
	})
	bkPCLDstep2 = LocalPlayer.CharacterAdded:Once(function(character)
		newHrp = character:WaitForChild("HumanoidRootPart", 5)
		newHum = character:WaitForChild("Humanoid", 5)

		if newHrp and newHum and not killedAfterRespawn then
			killedAfterRespawn = true
			task.wait(0)
			newHum.Health = 0
			LocalPlayer.CharacterAdded:Once(function(character2)
				newHrp2 = character2:WaitForChild("HumanoidRootPart", 5)
				newHum2 = character2:WaitForChild("Humanoid", 5)

				if not _G.AntiKickV2 then
					task.wait(0)
					SafeReset()
					result:MakeNotification({
						Name = "Anti-Kick V2",
						Content = "PCLD Break <font color='#c7363b'> removed!</font>",
						Image = "rbxassetid://110786993356448",
						Time = 2
					})
				end

				newHum2.Died:Once(function()
					if _G.AntiKickV2 then
						result:MakeNotification({
							Name = "Anti-Kick V2",
							Content = "<font color='#690e1b'>Death Detected</font>, breaking PCLD again! ",
							Image = "rbxassetid://110786993356448",
							Time = 2
						})
						HookedPCLDBreak()
					end
				end)
			end)
		end
	end)
end
RS.GameCorrectionEvents.GameCorrectionsNotify.OnClientEvent:Connect(function(p740)
	if p740 == "Flying" and AK_Config.AutoEnable and not _G.AutoBreakHouseBarrier then
		antikicktoggle:Set(true)
	end
end)
kickMsg = 0
kMsgReset_T = nil

do
	RS.GameCorrectionEvents.GameCorrectionsNotify.OnClientEvent:Connect(function(p741)
		if p741 == "Flying" then
			if kMsgReset_T then
				task.cancel(kMsgReset_T)
				kMsgReset_T = nil
			end

			if ping() >= 1250 then
				LocalPlayer3:Kick("You have been removed, due to high ping")
			end

			kickMsg += 1

			if kickMsg >= 2 and AK_Config.AutoReset then
				if _G.UniversalPlayerHumanoid then
					_G.UniversalPlayerHumanoid.Health = 0
				end

				SafeReset()
			end

			kMsgReset_T = task.delay(30, function()
				kickMsg = 0
			end)
		end
	end)
end

playercreategrablineevent = {}
playersCharFolder = Instance.new("Model", W)
playersCharFolder.Name = "Characters"
highlightesp = Instance.new("Highlight")
highlightesp.Enabled = true
ESP_Section1 = Esp_Tab:AddSection({
	Name = "ESP Highlight"
})
ESP_Section2 = Esp_Tab:AddSection({
	Name = "ESP Billboard"
})
ESP_Section3 = Esp_Tab:AddSection({
	Name = "ESP PCLD (PlayerCharacterLocationDetector)"
})
PCLDslboxs = {}
PCLDvalues = {
	Color3 = Color3.fromRGB(114, 185, 234),
	SurfaceColor3 = Color3.fromRGB(41, 59, 136),
	LineThickness = 0.005,
	SurfaceTransparency = 0.8,
	Transparency = 0
}

do
	updatePCLDbox = function(p742)
		for k, v in pairs(PCLDvalues) do
			p742[k] = v
		end
	end
end

espPCLDconnection = nil

do
	ESP_Section3:AddToggle({
		Name = "Enable",
		Default = false,
		Callback = function(p743)
			_G.ESP_Hightlight = p743

			if p743 then
				local function v2772(child)
					if child.Name ~= "PlayerCharacterLocationDetector" then
						return
					end

					local SelectionBox = Instance.new("SelectionBox", child)

					SelectionBox.Adornee = child
					updatePCLDbox(SelectionBox)
					table.insert(PCLDslboxs, SelectionBox)
				end

				for _, child in pairs(W:GetChildren()) do
					v2772(child)
				end

				espPCLDconnection = workspace.ChildAdded:Connect(v2772)
				table.insert(PCLDslboxs, c)
			else
				for _, v in pairs(PCLDslboxs) do
					if typeof(v) == "Instance" then
						v:Destroy()
					end
				end

				if typeof(espPCLDconnection) == "RBXScriptConnection" then
					espPCLDconnection:Disconnect()
					espPCLDconnection = nil
				end

				table.clear(PCLDslboxs)
			end
		end,
		Flag = "Esp_PCLD",
		Save = true
	})
end

PCLDOwnerESP = {}
PCLDOwnerAtts = {}
PCLDOwnerColors = {
	Player = Color3.fromRGB(255, 255, 255),
	Unknown = Color3.fromRGB(160, 160, 160),
	Suspect = Color3.fromRGB(240, 160, 60),
	Broken = Color3.fromRGB(235, 80, 80)
}

do
	CreatePCLDOwnerESP = function(p744)
		local BillboardGui = Instance.new("BillboardGui")

		BillboardGui.Size = UDim2.new(0, 200, 0, 18)
		BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
		BillboardGui.AlwaysOnTop = true
		BillboardGui.LightInfluence = 0

		local TextLabel = Instance.new("TextLabel", BillboardGui)

		TextLabel.Name = "Owner"
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Font = Enum.Font.GothamMedium
		TextLabel.TextSize = 18
		TextLabel.TextStrokeTransparency = 0.6
		BillboardGui.Parent = p744

		local Attachment = Instance.new("Attachment")

		Attachment.Name = "PCLDBeamAtt"
		Attachment.Orientation = Vector3.new(0, 0, 90)
		Attachment.Parent = p744

		local Beam = Instance.new("Beam")

		Beam.Name = "PCLDOwnerBeam"
		Beam.Attachment0 = Attachment
		Beam.FaceCamera = true
		Beam.LightEmission = 1
		Beam.LightInfluence = 0
		Beam.Segments = 20
		Beam.Width0 = 0.12
		Beam.Width1 = 0.12
		Beam.Color = ColorSequence.new(PCLDvalues.Color3, Color3.fromRGB(255, 255, 255))
		Beam.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(0.5, 0.45),
			NumberSequenceKeypoint.new(1, 0)
		})
		Beam.Enabled = false
		Beam.Parent = p744

		local tween = Tween:Create(Beam, TweenInfo.new(0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
			Width0 = 0.28,
			Width1 = 0.28
		})

		tween:Play()
		Beam.Destroying:Connect(function()
			tween:Cancel()
		end)

		local t89 = {
			Billboard = BillboardGui,
			Beam = Beam,
			Attachment = Attachment
		}

		PCLDOwnerESP[p744] = t89

		return t89
	end
end

DestroyPCLDOwnerESP = function(p745)
	local v2784 = PCLDOwnerESP[p745]

	if not v2784 then
		return
	end

	v2784.Billboard:Destroy()
	v2784.Beam:Destroy()
	v2784.Attachment:Destroy()
	PCLDOwnerESP[p745] = nil
end

do
	ClearPCLDOwnerESP = function()
		for k in pairs(PCLDOwnerESP) do
			DestroyPCLDOwnerESP(k)
		end

		for _, v in pairs(PCLDOwnerAtts) do
			v:Destroy()
		end

		table.clear(PCLDOwnerAtts)
	end
end

do
	UpdatePCLDOwnerLabel = function(p746, p747)
		if not p747 then
			p746.Text = "?"
			p746.TextColor3 = PCLDOwnerColors.Unknown

			return
		end

		local Name = p747 == LocalPlayer and "You" or p747.Name

		if GetPCLDBrokenTime(p747) >= 1 then
			local v2789 = DoesPlayerBkPCLD(p747)

			p746.Text = Name .. (v2789 and " (broken)" or " (broken?)")
			p746.TextColor3 = v2789 and PCLDOwnerColors.Broken or PCLDOwnerColors.Suspect
		else
			p746.Text = Name
			p746.TextColor3 = p747 == LocalPlayer and PCLDvalues.Color3 or PCLDOwnerColors.Player
		end
	end
end

do
	UpdatePCLDOwnerBeam = function(p748, p749, p750)
		local v2790 = p750 and PCLDGetRoot(p750)

		if not v2790 then
			p748.Beam.Enabled = false

			return
		end

		local PCLDOwnerAtt = v2790:FindFirstChild("PCLDOwnerAtt")

		if not PCLDOwnerAtt then
			PCLDOwnerAtt = Instance.new("Attachment")
			PCLDOwnerAtt.Name = "PCLDOwnerAtt"
			PCLDOwnerAtt.Orientation = Vector3.new(0, 0, 90)
			PCLDOwnerAtt.Parent = v2790
			table.insert(PCLDOwnerAtts, PCLDOwnerAtt)
		end

		local curveSize0 = (p749.Position - v2790.Position).Magnitude * 0.3

		p748.Beam.Attachment1 = PCLDOwnerAtt
		p748.Beam.CurveSize0 = curveSize0
		p748.Beam.CurveSize1 = -curveSize0
		p748.Beam.Enabled = true
	end
end

ESP_Section3:AddToggle({
	Name = "Show Owner",
	Default = false,
	Callback = function(p751)
		_G.ESP_PCLDOwner = p751

		if p751 then
			while _G.ESP_PCLDOwner do
				for _, v in ipairs(PCLDParts) do
					local v2795 = PCLDOwnerESP[v] or CreatePCLDOwnerESP(v)
					local v2796 = GetPCLDOwner(v)

					UpdatePCLDOwnerLabel(v2795.Billboard.Owner, v2796)
					UpdatePCLDOwnerBeam(v2795, v, v2796)
				end

				for k in pairs(PCLDOwnerESP) do
					if not k.Parent then
						DestroyPCLDOwnerESP(k)
					end
				end

				task.wait(0.2)
			end

			ClearPCLDOwnerESP()
		end
	end,
	Save = false,
	Flag = "Esp_PCLDOwner"
})
ESP_Section1:AddToggle({
	Name = "ESP (Highlight)",
	Default = false,
	Callback = function(p752)
		_G.ESP_Hightlight = p752

		if p752 then
			highlightesp.Parent = playersCharFolder

			local function v2798(p753)
				if p753 ~= LocalPlayer then
					local Character = p753.Character

					if Character then
						Character.Parent = playersCharFolder
					end
				end
			end
			local function v2800()
				for _, player in pairs(PS:GetPlayers()) do
					v2798(player)
				end
			end

			v2800()

			while _G.ESP_Hightlight do
				v2800()
				wait(2)
			end

			highlightesp.Parent = nil
		end
	end
})
ESP_Section1:AddColorpicker({
	Name = "Fill Color",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(p754)
		highlightesp.FillColor = p754
	end,
	Save = true,
	Flag = "espHighlightFillcolor_picker"
})

do
	ESP_Section1:AddSlider({
		Name = "Fill Transparency",
		Min = 0,
		Max = 1,
		Default = 0.5,
		Color = Color3.fromRGB(59, 122, 179),
		Increment = 0.1,
		ValueName = "Fill color transparency:",
		Callback = function(p755)
			highlightesp.FillTransparency = p755
		end,
		Save = true,
		Flag = "espHighlightFillTransparency_slider"
	})
end

ESP_Section1:AddColorpicker({
	Name = "Outline Color",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(p756)
		highlightesp.OutlineColor = p756
	end,
	Save = true,
	Flag = "espHighlightOutlinecolor_picker"
})

do
	ESP_Section1:AddSlider({
		Name = "Outline Transparency",
		Min = 0,
		Max = 1,
		Default = 0.5,
		Color = Color3.fromRGB(59, 122, 179),
		Increment = 0.1,
		ValueName = "Outline color transparency:",
		Callback = function(p757)
			highlightesp.OutlineTransparency = p757
		end,
		Save = true,
		Flag = "espHighlightOutlineTransparency_slider"
	})
end

ESP_Section1:AddDropdown({
	Name = "Highlight Mode",
	Default = "AlwaysOnTop",
	Options = {
		"AlwaysOnTop",
		"Occluded"
	},
	Callback = function(p758)
		highlightesp.DepthMode = Enum.HighlightDepthMode[p758]
	end,
	Save = true,
	Flag = "espHighlightMode_dropdown"
})
ESPIconCreation = function()
	local BillboardGui = Instance.new("BillboardGui")
	local ImageButton = Instance.new("ImageButton")
	local UICorner = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

	BillboardGui.Name = "ESP"
	BillboardGui.Parent = nil
	BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	BillboardGui.Active = true
	BillboardGui.Adornee = nil
	BillboardGui.AlwaysOnTop = true
	BillboardGui.ExtentsOffset = Vector3.new(0, 10, 0)
	BillboardGui.Size = UDim2.new(3, 50, 3, 45)
	ImageButton.Name = "UserImage"
	ImageButton.Parent = BillboardGui
	ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton.BackgroundTransparency = 1
	ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageButton.BorderSizePixel = 0
	ImageButton.Position = UDim2.new(0.5, 0, 0.300000012, 0)
	ImageButton.Size = UDim2.new(0.5, 5, 0.5, 5)
	ImageButton.Image = ""
	UICorner.CornerRadius = UDim.new(2, 0)
	UICorner.Parent = ImageButton
	TextLabel.Name = "Username"
	TextLabel.Parent = BillboardGui
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.5, 0, 0.75999999, 0)
	TextLabel.Size = UDim2.new(1, 5, 0.340000004, 5)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = ""
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 35
	TextLabel.TextStrokeTransparency = 0
	TextLabel.TextWrapped = true
	UITextSizeConstraint.Parent = TextLabel
	UITextSizeConstraint.MaxTextSize = 35
	UITextSizeConstraint.MinTextSize = 15
	UIAspectRatioConstraint.Parent = BillboardGui
	UIAspectRatioConstraint.AspectRatio = 1.043

	return BillboardGui
end
ESPIconCreation = ESPIconCreation()

do
	CreateIconOnPlayer = function(p759)
		if p759.Character then
			local Character = p759.Character
			local Head = Character:WaitForChild("Head", 1)

			if not Character:FindFirstChild("ESP") and Head then
				local clone = ESPIconCreation:Clone()

				clone.Parent = Character
				clone.Adornee = Head
				clone.Username.Text = p759.Name
				clone.UserImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. p759.UserId .. "&width=420&height=420&format=png"
				task.spawn(function()
					while Character.Parent and _G.ESP_Icon do
						task.wait(0.25)
					end

					clone:Destroy()
				end)
			end
		end
	end
end

do
	ESP_Section2:AddToggle({
		Name = "ESP (Icon)",
		Default = false,
		Callback = function(p760)
			_G.ESP_Icon = p760

			if p760 then
				local t90 = {}

				local function v2813()
					for _, v in pairs(t90) do
						if typeof(v) == "RBXScriptConnection" then
							v:Disconnect()
							print("Desconectado!")
						end
					end

					table.clear(t90)
				end
				local function v2816(p761)
					if p761 ~= LocalPlayer then
						if p761.Character or p761.CharacterAdded:Wait() then
							CreateIconOnPlayer(p761)
							t90[#t90 + 1] = p761.CharacterAdded:Connect(function()
								CreateIconOnPlayer(p761)
							end)
						end
					end
				end
				local function v2817()
					for _, player in pairs(PS:GetPlayers()) do
						v2816(player)
					end
				end

				local connection2 = PS.PlayerAdded:Connect(function(player)
					v2816(player)
				end)

				v2817()

				while _G.ESP_Icon do
					wait(0.1)
				end

				connection2:Disconnect()
				v2813()
			end
		end,
		Flag = "Esp_Icon",
		Save = true
	})
end

MapTeleport_Section = Teleport_Tab:AddSection({
	Name = "Place TP"
})
PlayerTeleport_Section = Teleport_Tab:AddSection({
	Name = "Player TP"
})
MapTeleport_Section:AddDropdown({
	Name = "Place to Teleport",
	Default = GameLocationLists[1],
	Options = GameLocationLists,
	MaxElements = 3,
	Callback = function(p762)
		_G.PlaceToTeleport = p762
	end
})

do
	MapTeleport_Section:AddButton({
		Name = "Teleport",
		Callback = function()
			TeleportPlayer(placeLocations[_G.PlaceToTeleport])
		end
	})
end

do
	PlayerToTeleport = PlayerTeleport_Section:AddPlayersDropdown({
		Name = "Select Player",
		Default = "",
		SearchBar = true,
		MultipleSelection = false,
		Callback = function(p763)
			_G.PlayerToTeleport = p763
		end
	})
end

MakeSearchBar(PlayerToTeleport, PlayerTeleport_Section)
teleportplayerfunctionoffset = function(p764, p765, p766, p767)
	local cFrame

	if _G.PlayerToTeleportDirection == "Behind" then
		cFrame = CFrame.new(p764.Position - p764.lookVector * (TeleportPlayerOffset + 1))
	elseif _G.PlayerToTeleportDirection == "Front" then
		cFrame = CFrame.new(p764.Position + p764.lookVector * (TeleportPlayerOffset + 1))
	elseif _G.PlayerToTeleportDirection == "Right" then
		cFrame = CFrame.new(p764.Position + p764.rightVector * (TeleportPlayerOffset + 1))
	elseif _G.PlayerToTeleportDirection == "Left" then
		cFrame = CFrame.new(p764.Position - p764.rightVector * (TeleportPlayerOffset + 1))
	elseif _G.PlayerToTeleportDirection == "Rotate" then
		local n51 = 0
		local v2823 = p765
		local v2824 = p766

		if v2823 and p766 then
			while _G.PlayerToTeleportDirection == "Rotate" and _G.LoopPlayerTP and v2824:IsDescendantOf(W) and p767 == _G.PlayerToTeleport do
				n51 += 0.1
				cFrame = CFrame.new(v2823.Position + Vector3.new(math.clamp(math.cos(n51), -1, 1), 0, math.clamp(math.sin(n51), -1, 1)) * (TeleportPlayerOffset + 1), v2823.Position)
				TeleportPlayer(cFrame)
				task.wait()
			end
		end
	end

	if _G.PlayerToTeleportDirection ~= "Rotate" then
		TeleportPlayer(cFrame)
	end
end
PlayerTeleport_Section:AddButton({
	Name = "Teleport",
	Callback = function()
		local _GPlayerToTeleport = PS:FindFirstChild(_G.PlayerToTeleport)
		local v2826 = GetPlayerRoot()

		if _GPlayerToTeleport and _GPlayerToTeleport.Character and v2826 then
			local HumanoidRootPart = _GPlayerToTeleport.Character:FindFirstChild("HumanoidRootPart")

			if HumanoidRootPart then
				teleportplayerfunctionoffset(HumanoidRootPart.CFrame, v2826)
			end
		end
	end
})

do
	PlayerLoopTeleport = PlayerTeleport_Section:AddToggle({
		Name = "Loop Teleport",
		Default = false,
		Callback = function(p768)
			_G.LoopPlayerTP = p768

			if p768 then
				while _G.LoopPlayerTP do
					local _GPlayerToTeleport = PS:FindFirstChild(_G.PlayerToTeleport)

					if _GPlayerToTeleport and _GPlayerToTeleport.Character then
						local Character = _GPlayerToTeleport.Character
						local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

						if HumanoidRootPart then
							teleportplayerfunctionoffset(HumanoidRootPart.CFrame, HumanoidRootPart, Character, _GPlayerToTeleport.Name)
						end
					elseif not _GPlayerToTeleport then
						if PlayerLoopTeleport then
							PlayerLoopTeleport:Set(false)
						end

						_G.LoopPlayerTP = false
					end

					task.wait()
				end
			end
		end
	})
end

PlayerLockCamera = PlayerTeleport_Section:AddToggle({
	Name = "Lock Camera",
	Default = false,
	Callback = function(p769)
		_G.LockCameraOnPlayer = p769

		if p769 then
			local _GPlayerToTeleport
			local HumanoidRootPart
			local Character
			local CurrentCamera
			local connection2

			connection2 = R.RenderStepped:Connect(function()
				_GPlayerToTeleport = PS:FindFirstChild(_G.PlayerToTeleport)
				CurrentCamera = W.CurrentCamera

				if not _G.LockCameraOnPlayer then
					connection2:Disconnect()
				end

				if _GPlayerToTeleport and _GPlayerToTeleport.Character and CurrentCamera then
					Character = _GPlayerToTeleport.Character
					HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

					if HumanoidRootPart then
						CurrentCamera.CFrame = CFrame.lookAt(CurrentCamera.CFrame.Position, HumanoidRootPart.CFrame.Position + Vector3.new(0, 1, 0))
					end
				elseif not _GPlayerToTeleport then
					if PlayerLockCamera then
						PlayerLockCamera:Set(false)
					end

					_G.LockCameraOnPlayer = false
				end

				task.wait()
			end)
		end
	end
})

do
	PlayerViewCamera = PlayerTeleport_Section:AddToggle({
		Name = "View",
		Default = false,
		Callback = function(p770)
			_G.ViewCameraOnPlayer = p770

			if p770 then
				local CurrentCamera = W.CurrentCamera
				local CameraSubject = CurrentCamera.CameraSubject

				while _G.ViewCameraOnPlayer do
					local _GPlayerToTeleport = PS:FindFirstChild(_G.PlayerToTeleport)

					if _GPlayerToTeleport and _GPlayerToTeleport.Character and CurrentCamera then
						local Humanoid = _GPlayerToTeleport.Character:FindFirstChildOfClass("Humanoid")

						if Humanoid then
							CurrentCamera.CameraSubject = Humanoid
						end
					elseif not _GPlayerToTeleport then
						if PlayerViewCamera then
							PlayerViewCamera:Set(false)
						end

						_G.ViewCameraOnPlayer = false
					end

					wait()
				end

				CurrentCamera.CameraSubject = CameraSubject
			end
		end
	})
end

PlayerTeleport_Section:AddSlider({
	Name = "Offset",
	Min = 1,
	Max = 20,
	Default = 1,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 1,
	ValueName = "Teleport Offset",
	Callback = function(p771)
		TeleportPlayerOffset = p771
	end,
	Save = true,
	Flag = "speed_slider"
})

do
	PlayerTeleport_Section:AddDropdown({
		Name = "Behavior",
		Default = "Behind",
		Options = {
			"Behind",
			"Left",
			"Right",
			"Front",
			"Rotate"
		},
		Callback = function(p772)
			_G.PlayerToTeleportDirection = p772
		end
	})
end

WS_Section = Toggle_Tab:AddSection({
	Name = "Walkspeed"
})
JP_Section = Toggle_Tab:AddSection({
	Name = "Infinite Power Jump"
})
NC_Section = Toggle_Tab:AddSection({
	Name = "Noclip"
})
FPp_Section = Toggle_Tab:AddSection({
	Name = "Realistic First Person"
})
THp_Section = Toggle_Tab:AddSection({
	Name = "Third Person"
})
PhysicalInteraction_Section = Toggle_Tab:AddSection({
	Name = "Physical Interaction"
})
RejoinToggle_Section = Toggle_Tab:AddSection({
	Name = "Rejoin"
})

do
	PhysicalInteraction_Section:AddToggle({
		Name = "Water Walk",
		Default = false,
		Callback = function(p773)
			local ObjectModel = W.Map.AlwaysHereTweenedObjects.Ocean.Object:FindFirstChild("ObjectModel")

			if not ObjectModel then
				return
			end

			for _, child in pairs(ObjectModel:GetChildren()) do
				if child.Name == "Ocean" then
					child.CanCollide = p773
				end
			end
		end,
		Save = true,
		Flag = "WaterWalk_toggle"
	})
end

FPpConns = {}
FPp_Section:AddToggle({
	Name = "Realistic First Person",
	Default = false,
	Callback = function(p774)
		_G.RFP = p774

		if not _G.UniverChar then
			return
		end

		if p774 then
			local function v2843(p775)
				if p775 and p775:IsA("BasePart") and (p775.Name == "Left Arm" or p775.Name == "Right Arm") then
					p775.LocalTransparencyModifier = p775.Transparency
					FPpConns[#FPpConns + 1] = p775.Changed:Connect(function()
						p775.Transparency = 0
						p775.LocalTransparencyModifier = p775.Transparency
					end)
				end
			end

			FPpConns[#FPpConns + 1] = W.ChildAdded:Connect(function(child)
				if child.Name == "GrabParts" then
					local BeamPart = child:FindFirstChild("BeamPart")

					if BeamPart then
						local GrabBeam = BeamPart:FindFirstChild("GrabBeam")

						if GrabBeam then
							GrabBeam.Attachment0 = _G.UniverChar["Right Arm"].RightGripAttachment

							local R_ = R
							local LocalPlayer4 = PS.LocalPlayer
							local CurrentCamera = workspace.CurrentCamera
							local Character = LocalPlayer4.Character or LocalPlayer4.CharacterAdded:Wait()
							local Torso = Character:WaitForChild("Torso")
							local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
							local RightShoulder = Torso:WaitForChild("Right Shoulder")
							local cFrame = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
							local X = cFrame.X
							local Y = cFrame.Y
							local Z = cFrame.Z
							local connection2

							connection2 = R_.RenderStepped:Connect(function()
								if not child.Parent then
									local t91 = {
										C0 = cFrame
									}

									TweenService:Create(RightShoulder, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), t91):Play()
									connection2:Disconnect()

									return
								end

								if not Torso or not HumanoidRootPart or not RightShoulder then
									return
								end

								local LookVector = HumanoidRootPart.CFrame:ToObjectSpace(CurrentCamera.CFrame).LookVector
								local v2860 = CFrame.new(X, Y, Z) * CFrame.Angles(0, math.rad(90), math.rad(90))
								local v2861 = math.asin(LookVector.Y)
								local v2862 = math.clamp(math.atan2(-LookVector.X, -LookVector.Z), -math.rad(75), math.rad(75))

								RightShoulder.C0 = v2860 * CFrame.Angles(0, 0, v2861) * CFrame.Angles(v2862, 0, 0)
							end)
						end
					end
				end
			end)
			FPpConns[#FPpConns + 1] = LocalPlayer.CharacterAdded:Connect(function(character)
				local LeftArm = character:WaitForChild("Left Arm")
				local RightArm = character:WaitForChild("Right Arm")

				for _, v in pairs({
					LeftArm,
					RightArm
				}) do
					v2843(v)
				end
			end)

			for _, child in pairs(_G.UniverChar:GetChildren()) do
				v2843(child)
			end

			setTransparency(0)
		else
			DisconnectAll(FPpConns)

			for _, child in pairs(_G.UniverChar:GetChildren()) do
				if child and child:IsA("BasePart") and (child.Name == "Left Arm" or child.Name == "Right Arm") then
					child.LocalTransparencyModifier = 1
					child.Transparency = 0
				end
			end
		end
	end,
	Save = true,
	Flag = "FPp_toggle"
})
RJBttn_SecT = 0
RJBttnAuto_SecT = 0
RejoinToggle_Section:AddButton({
	Name = "Rejoin",
	Callback = function()
		if tonumber(RJBttnCD) and os.clock() - RJBttnCD > 2 then
			RJBttn_SecT = 0
		end

		RJBttnCD = os.clock()

		if RJBttn_SecT == 0 then
			result:MakeNotification({
				Name = "Warning!",
				Content = "Are you sure?!",
				Image = "rbxassetid://119020096067894",
				Time = 3
			})
		elseif RJBttn_SecT == 1 then
			result:MakeNotification({
				Name = "Warning!",
				Content = "Are you really sure?",
				Image = "rbxassetid://119020096067894",
				Time = 3
			})
		elseif RJBttn_SecT == 2 then
			LocalPlayer:Destroy()
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
			task.wait(1)
			game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
		end

		RJBttn_SecT += 1
	end
})

do
	RejoinToggle_Section:AddButton({
		Name = "Rejoin + Auto EXE script!",
		Callback = function()
			if tonumber(RJBttnEXECD) and os.clock() - RJBttnEXECD > 2 then
				RJBttnAuto_SecT = 0
			end

			RJBttnEXECD = os.clock()

			if RJBttnAuto_SecT == 0 then
				result:MakeNotification({
					Name = "Warning!",
					Content = "Are you sure?!",
					Image = "rbxassetid://119020096067894",
					Time = 3
				})
			elseif RJBttnAuto_SecT == 1 then
				result:MakeNotification({
					Name = "Warning!",
					Content = "Are you really sure?",
					Image = "rbxassetid://119020096067894",
					Time = 3
				})
			elseif RJBttnAuto_SecT == 2 then
				if script_key then
					queue_on_teleport(([[					script_key = %q
					loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/9d19ef6e93fae5568d83f7e335380fce.lua"))()
				]]):format(script_key))
				else
					queue_on_teleport("\t\t\t\t\tloadstring(game:HttpGet(\"https://raw.githubusercontent.com/BlizTBr/scripts/refs/heads/main/FTAP.lua\"))()\n\t\t\t\t")
				end

				LocalPlayer:Destroy()
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
				task.wait(1)
				game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
			end

			RJBttnAuto_SecT += 1
		end
	})
end

setTransparency = function(p776)
	if not _G.UniverChar then
		return
	end

	local t92 = {
		Torso = true,
		["Left Arm"] = true,
		["Right Arm"] = true,
		["Left Leg"] = true,
		["Right Leg"] = true,
		Head = true
	}

	for _, descendant in ipairs(_G.UniverChar:GetDescendants()) do
		if descendant:IsA("BasePart") and t92[descendant.Name] then
			descendant.Transparency = p776

			if descendant.Name == "Head" then
				local Decal = descendant:FindFirstChildOfClass("Decal")

				if Decal then
					Decal.Transparency = p776
				end
			end
		elseif descendant:IsA("Accessory") and descendant.Name ~= "TypingKeyboardMyWorld" then
			local Handle = descendant:FindFirstChild("Handle")

			if Handle and Handle:IsA("BasePart") then
				Handle.Transparency = p776

				for _, descendant2 in ipairs(Handle:GetDescendants()) do
					if descendant2:IsA("Decal") or descendant2:IsA("Texture") then
						descendant2.Transparency = p776
					end
				end
			end
		end
	end
end
thirdp_c1 = nil
THpCharAddedC = nil
THpConns = {}

do
	THp_Section:AddToggle({
		Name = "Third Person",
		Default = false,
		Callback = function(p777)
			_G.IsOnThirdPerson = p777

			if p777 then
				local function v2878()
					if not _G.UniverChar then
						return
					end

					for _, child in ipairs(_G.UniverChar:GetChildren()) do
						if child:IsA("BasePart") and (child.Name == "Torso" or child.Name == "Left Arm" or child.Name == "Right Arm" or child.Name == "Head" or child.Name == "Left Leg" or child.Name == "Right Leg") then
							child.Transparency = 0
							THpConns[#THpConns + 1] = child:GetPropertyChangedSignal("Transparency"):Connect(function()
								child.Transparency = 0
							end)

							if child.Name == "Head" then
								local Decal = child:FindFirstChildOfClass("Decal")

								if Decal then
									Decal.Transparency = 0
									THpConns[#THpConns + 1] = Decal:GetPropertyChangedSignal("Transparency"):Connect(function()
										Decal.Transparency = 0
									end)
								end
							end
						elseif child:IsA("Accessory") and child.Name ~= "TypingKeyboardMyWorld" then
							local Handle = child:FindFirstChild("Handle")

							if Handle and Handle:IsA("BasePart") then
								Handle.Transparency = 0
								THpConns[#THpConns + 1] = Handle:GetPropertyChangedSignal("Transparency"):Connect(function()
									Handle.Transparency = 0
								end)

								for _, descendant in ipairs(Handle:GetDescendants()) do
									if descendant:IsA("Decal") or descendant:IsA("Texture") then
										descendant.Transparency = 0
										THpConns[#THpConns + 1] = descendant:GetPropertyChangedSignal("Transparency"):Connect(function()
											descendant.Transparency = 0
										end)
									end
								end
							end
						end
					end
				end

				THpCharAddedC = LocalPlayer.CharacterAdded:Connect(function(character)
					WaitForChildrenAddedOnce(character, 0.1, function()
						character:FindFirstChildOfClass("Humanoid").Died:Connect(function()
							DisconnectAll(THpConns)
						end)
						v2878()
					end)
				end)

				local Character = LocalPlayer.Character

				if Character then
					local Humanoid = Character:WaitForChild("Humanoid", 5)

					if Humanoid then
						Humanoid.Died:Connect(function()
							DisconnectAll(THpConns)
						end)
					end

					v2878()
				end

				LocalPlayer.CameraMode = "Classic"
				LocalPlayer.CameraMaxZoomDistance = 2e12
				LocalPlayer.CameraMinZoomDistance = 25
				LocalPlayer.CameraMinZoomDistance = 0.5
				setTransparency(0)
			else
				DisconnectAll(THpConns)

				if typeof(THpCharAddedC) == "RBXScriptConnection" then
					THpCharAddedC:Disconnect()
					THpCharAddedC = nil
				end

				LocalPlayer.CameraMaxZoomDistance = 0.5
				LocalPlayer.CameraMode = "LockFirstPerson"
				UseFakeCam("thirdp", false)
			end
		end,
		Save = true,
		Flag = "THp_toggle"
	})
end

WS_Section:AddToggle({
	Name = "Walkspeed",
	Default = false,
	Callback = function(p778)
		_G.SuperSpeed = p778
	end,
	Save = true,
	Flag = "walkspeed_toggle"
})

do
	WS_Section:AddSlider({
		Name = "Speed",
		Min = 0.1,
		Max = 5,
		Default = 0.1,
		Color = Color3.fromRGB(59, 122, 179),
		Increment = 0.01,
		ValueName = "",
		Callback = function(p779)
			Multiplier = p779
		end,
		Save = true,
		Flag = "speed_slider"
	})
end

JP_Section:AddToggle({
	Name = "Infinite Jump",
	Default = false,
	Callback = function(p780)
		_G.InfiniteJump = p780
	end,
	Save = true,
	Flag = "infinitejump_toggle"
})
JP_Section:AddSlider({
	Name = "Jump Power",
	Min = 24,
	Max = 1000,
	Default = 24,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 10,
	ValueName = "",
	Callback = function(p781)
		_G.InfiniteJumpPower = p781
		LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = p781
	end,
	Save = true,
	Flag = "jumppower_slider"
})
NC_Section:AddToggle({
	Name = "Noclip",
	Default = false,
	Callback = function(p782)
		_G.NoclipToggle = p782

		if p782 then
			noclip()
		else
			clip()
		end
	end,
	Save = true,
	Flag = "noclip_toggle"
})

local t93 = {
	Color3.new(1, 0, 0),
	Color3.new(1, 0, 0),
	Color3.new(1, 0, 0),
	Color3.new(1, 0, 0),
	Color3.new(1, 0, 0),
	Color3.new(1, 0, 0),
	Color3.new(1, 0, 0),
	Color3.new(1, 0, 0),
	Color3.new(1, 0, 0),
	(Color3.new(1, 0, 0))
}

RandomLineColors = {
	Color3.fromRGB(248, 247, 248),
	Color3.fromRGB(248, 246, 248),
	Color3.fromRGB(245, 245, 242),
	Color3.fromRGB(245, 244, 242),
	Color3.fromRGB(245, 243, 242),
	Color3.fromRGB(245, 242, 242),
	Color3.fromRGB(245, 241, 242),
	Color3.fromRGB(245, 240, 242)
}
OtherLineEffects = PlayerLine_Tab:AddSection({
	Name = "Line Effects"
})
LaggyServer = PlayerLine_Tab:AddSection({
	Name = "Stress Server" .. premium_text
})
LaggyServerV3 = PlayerLine_Tab:AddSection({
	Name = "Stress Server V3 " .. s_premium_text
})
LaggyV2Server = PlayerLine_Tab:AddSection({
	Name = "Stress Server V2"
})
ChangeLineColor = PlayerLine_Tab:AddSection({
	Name = "Line Color Presets"
})
LagServerToggle = nil
LagServerToggle = LaggyServer:AddToggle({
	Name = "Lag Server",
	Default = false,
	Callback = function(p783)
		laggg = p783

		while laggg do
			if GetKey() == "Xana" then
				for i = 0, Lag_Intensity do
					for i2 = 0, 5 do
						v117:FireServer(W.SpawnLocation, CFrame.new(0, 900000000, 0))
					end
				end

				task.wait(5)
			else
				LagServerToggle:Set(false)
				-- notify disabled

				break
			end
		end
	end,
	Flag = "lagserver_toggle"
})
LaggyServer:AddSlider({
	Name = "Lag Intensity",
	Min = 200,
	Max = 700,
	Default = 400,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 1,
	ValueName = "This can have you kicked or kick someone in the server!",
	Save = true,
	Flag = "Lag-Intensity",
	Callback = function(p784)
		Lag_Intensity = p784
	end
})
pingT = false
packetsV = 100
packetStringV2 = "Bliz_T HUB"
packetsenderRS = nil
packetsenders = {}
DPFs = {}

do
	DPFs.summarizeTable = function(p785)
		local t94 = {}
		local n52 = 0

		for _, v in pairs(p785) do
			n52 += 1

			if n52 <= 5 then
				table.insert(t94, tostring(v))
			end
		end

		return "table[" .. n52 .. "] { " .. table.concat(t94, ", ") .. " ... }"
	end
end

do
	DPFs.shortenString = function(p786)
		if #p786 <= 80 then
			return p786
		end

		return p786:sub(1, 80) .. "... (+" .. #p786 - 80 .. " chars)"
	end
end

DPFs.compressArgs = function(p787)
	local t95 = {}
	local t96 = {}

	for _, v in ipairs(p787) do
		local v2898

		if typeof(v) == "string" then
			v2898 = "str:" .. DPFs.shortenString(v)
		elseif typeof(v) == "Instance" then
			v2898 = "inst:" .. v.ClassName .. "(" .. v.Name .. ")"
		elseif typeof(v) == "table" then
			v2898 = "tbl:" .. DPFs.summarizeTable(v)
		else
			v2898 = typeof(v) .. ":" .. tostring(v)
		end

		t95[v2898] = (t95[v2898] or 0) + 1
	end

	for k, v in pairs(t95) do
		if v > 1 then
			table.insert(t96, k .. " x" .. v)
		else
			table.insert(t96, k)
		end
	end

	return t96
end
stickyPart_laggy = stickyPart_laggy or nil
laggyv3_cd = 0.25
canLaggyV3 = false

do
	LaggyServerV3:AddToggle({
		Name = "Lag Server" .. laggyv3_text .. s_premium_text,
		Default = false,
		Callback = function(p788)
			lagggv3 = p788

			while lagggv3 do
				local lagserverv3_toggle = result.Flags.lagserverv3_toggle

				if GetKey() ~= "Xana" then
					lagserverv3_toggle:Set(false)
					notify("Only for super premium users! Buy super premium in my discord server!")

					break
				end

				if GetKey() == "Xana" and GetKeyType() ~= "superpremium" then
					lagserverv3_toggle:Set(false)
					notify("You are a premium user, but unfortunately, you do not have Super Premium. Purchase a premium plan worth more than $30 to get it!")

					break
				end

				if (not stickyPart_laggy or stickyPart_laggy and not stickyPart_laggy.Parent) and W.Terrain then
					for i = 0, 100 do
						local v2903, v2904 = PutShuriken(W.Terrain, CFrame.new(math.random(-5, 5), 9e9, math.random(-5, 5)), true, "ToolPencil")

						if v2903 then
							stickyPart_laggy = v2904

							break
						end

						task.wait()
					end
				end

				v117:FireServer(W.Terrain, CFrame.new(0, 900000000, 0))
				task.wait(laggyv3_cd)
			end
		end,
		Flag = "lagserverv3_toggle"
	})
end

LaggyServerV3:AddSlider({
	Name = "Lag Delay",
	Min = 0.05,
	Max = 1,
	Default = 0.25,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 0.01,
	ValueName = "Best value is 0.25",
	Save = false,
	Flag = "Lag-Intensity",
	Callback = function(p789)
		laggyv3_cd = p789
	end
})

do
	LaggyV2Server:AddToggle({
		Name = "Packet Sender",
		Default = false,
		Callback = function(p790)
			if p790 then
				packetsenderRS = R.RenderStepped:Connect(function()
					if game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() > 1000 then
						return
					end

					v120:FireServer(string.rep(packetStringV2, packetsV))
				end)
			else
				if not packetsenderRS then
					return
				end

				packetsenderRS:Disconnect()
			end
		end,
		Flag = "PacketSender_toggle"
	})
end

do
	LaggyV2Server:AddSlider({
		Name = "Packet Ammount",
		Min = 1,
		Max = 50,
		Default = 10,
		Color = Color3.fromRGB(59, 122, 179),
		Increment = 1,
		ValueName = "High ammounts can have you kicked or kick someone in the server!",
		Save = true,
		Flag = "PacketAmountData_slider",
		Callback = function(p791)
			packetsV = p791
		end
	})
end

task.spawn(function()
	packetStringV2 = loadstring(game:HttpGet("https://pastefy.app/a12XYTVL/raw"))()
end)
LineConfigFile = result.Folder .. "/LineColorConfig.json"
LineConfig = {
	AutoLoad = false,
	LastPreset = nil
}
TableToColorSequence = function(p792)
	local t97 = {}
	local v2906 = #p792

	if v2906 == 0 then
		return ColorSequence.new(Color3.new(1, 1, 1))
	end

	if v2906 == 1 then
		return ColorSequence.new({
			ColorSequenceKeypoint.new(0, p792[1]),
			ColorSequenceKeypoint.new(1, p792[1])
		})
	end

	for i, v in ipairs(p792) do
		t97[i] = ColorSequenceKeypoint.new((i - 1) / (v2906 - 1), v)
	end

	return ColorSequence.new(t97)
end
ColorsChangePallet = {}

for i = 1, 9 do
	ColorsChangePallet[i] = Color3.fromRGB(255, 0, 0)
end

do
	GetColorsFromColorSequence = function(p793)
		local t98 = {}
		local Keypoints = p793.Keypoints
		local v2912 = #Keypoints

		for i = 1, 9 do
			local v2914 = (i - 1) / 8
			local v2915 = Keypoints[1]
			local v2916 = Keypoints[v2912]

			for _, Keypoint in ipairs(Keypoints) do
				if Keypoint.Time <= v2914 and v2915.Time <= Keypoint.Time then
					v2915 = Keypoint
				end

				if v2914 <= Keypoint.Time and Keypoint.Time <= v2916.Time then
					v2916 = Keypoint
				end
			end

			if v2915.Time == v2916.Time then
				t98[i] = v2915.Value
			else
				t98[i] = v2915.Value:Lerp(v2916.Value, (v2914 - v2915.Time) / (v2916.Time - v2915.Time))
			end
		end

		return t98
	end
end

PresetFolderLineColor = result.Folder .. "/LineColorPresets"

if not isfolder(PresetFolderLineColor) then
	makefolder(PresetFolderLineColor)
end

do
	RefreshPresetDropdown = function()
		if result.Flags.linepreset_dropdown then
			result.Flags.linepreset_dropdown:Refresh(GetLineClrPresetList(), true)
		end
	end
end

SavePresetLineColor = function(p794)
	if p794 == "" or typeof(p794) ~= "string" then
		return
	end

	local t99 = {}

	for i, v in ipairs(ColorsChangePallet) do
		t99[i] = {
			v.R,
			v.G,
			v.B
		}
	end

	writefile(PresetFolderLineColor .. "/" .. p794 .. ".json", HttpService:JSONEncode(t99))
	RefreshPresetDropdown()
	SelectedPreset = p794
end

do
	LoadLineConfig = function()
		if isfile(LineConfigFile) then
			local ok, result2 = pcall(function()
				return HttpService:JSONDecode(readfile(LineConfigFile))
			end)

			if ok and type(result2) == "table" then
				LineConfig.AutoLoad = result2.AutoLoad == true
				LineConfig.LastPreset = result2.LastPreset
			end
		end
	end
end

do
	SaveLineConfig = function()
		writefile(LineConfigFile, HttpService:JSONEncode(LineConfig))
	end
end

do
	LoadLineClrPreset = function(p795)
		local v2924 = PresetFolderLineColor .. "/" .. p795 .. ".json"

		if not isfile(v2924) then
			return
		end

		local data = HttpService:JSONDecode(readfile(v2924))

		for i, v in ipairs(data) do
			ColorsChangePallet[i] = Color3.new(v[1], v[2], v[3])
		end

		local changelinecolor_picker = result.Flags.changelinecolor_picker

		if changelinecolor_picker then
			for i, v in ipairs(ColorsChangePallet) do
				pcall(function()
					changelinecolor_picker:Set(i, v)
				end)
			end
		end

		DataEventsFolder_:FireServer(TableToColorSequence(ColorsChangePallet), unpack(ColorsChangePallet))
	end
end

do
	DeleteLinePreset = function(p796)
		if not p796 then
			return
		end

		local v2931 = PresetFolderLineColor .. "/" .. p796 .. ".json"

		if isfile(v2931) then
			delfile(v2931)
		end

		SelectedPreset = nil
		RefreshPresetDropdown()
	end
end

GetLineClrPresetList = function()
	local t100 = {}

	for _, v in ipairs(listfiles(PresetFolderLineColor)) do
		local match = v:match("([^/\\]+)%.json$")

		if match then
			table.insert(t100, match)
		end
	end

	table.sort(t100)

	if #t100 == 0 then
		table.insert(t100, "No Presets")
	end

	return t100
end

do
	ChangeLineColor:AddColorpicker({
		Name = "Line Colors",
		Default = ColorsChangePallet,
		Callback = function(p797)
			ColorsChangePallet = p797
			DataEventsFolder_:FireServer(TableToColorSequence(p797), unpack(p797))
		end,
		Save = false,
		Flag = "changelinecolor_picker"
	})
end

ChangeLineColor:AddTextbox({
	Name = "Preset Name",
	Default = "",
	TextDisappear = false,
	Callback = function(p798)
		PresetName = p798
	end,
	Flag = "linepreset_name",
	Save = false
})
ChangeLineColor:AddButton({
	Name = "Save Current",
	Callback = function()
		if PresetName == "" or typeof(PresetName) ~= "string" then
			result:MakeNotification({
				Name = "Error",
				Content = "Type a name for the preset",
				Time = 3
			})

			return
		end

		SavePresetLineColor(PresetName)
	end
})
LoadLineConfig()

do
	ChangeLineColor:AddDropdown({
		Name = "Preset",
		Default = "",
		Options = GetLineClrPresetList(),
		Flag = "linepreset_dropdown",
		Save = false,
		Callback = function(p799)
			if p799 == "No Presets" or p799 == "" then
				return
			end

			SelectedPreset = p799
			LineConfig.LastPreset = p799
			SaveLineConfig()
			LoadLineClrPreset(p799)
		end
	})
end

ChangeLineColor:AddToggle({
	Name = "Auto Load Preset",
	Default = LineConfig.AutoLoad,
	Save = false,
	Flag = "autoloadlinepreset",
	Callback = function(p800)
		LineConfig.AutoLoad = p800
		SaveLineConfig()
	end
})

if result.Flags.autoloadlinepreset then
	result.Flags.autoloadlinepreset:Set(LineConfig.AutoLoad)
end

DelColorBttn_SecT = 0

do
	ChangeLineColor:AddButton({
		Name = "Delete Selected",
		Callback = function()
			if tonumber(DelColorBttnCD) and os.clock() - DelColorBttnCD > 2 then
				DelColorBttn_SecT = 0
			end

			DelColorBttnCD = os.clock()

			if DelColorBttn_SecT == 0 then
				result:MakeNotification({
					Name = "Warning!",
					Content = "Are you sure?!",
					Image = "rbxassetid://119020096067894",
					Time = 3
				})
			elseif DelColorBttn_SecT == 1 then
				result:MakeNotification({
					Name = "Warning!",
					Content = "Are you really sure?",
					Image = "rbxassetid://119020096067894",
					Time = 3
				})
			elseif DelColorBttn_SecT == 2 and SelectedPreset then
				DeleteLinePreset(SelectedPreset)
			end

			DelColorBttn_SecT += 1
		end
	})
end

do
	if LineConfig.AutoLoad and LineConfig.LastPreset then
		task.spawn(function()
			task.wait(1)

			local linepreset_dropdown = result.Flags.linepreset_dropdown

			if linepreset_dropdown then
				linepreset_dropdown:Set(LineConfig.LastPreset)
			else
				LoadLineClrPreset(LineConfig.LastPreset)
			end
		end)
	end
end

OtherLineEffects:AddToggle({
	Name = "Crazy Line (Soft Lag)",
	Default = false,
	Callback = function(p801)
		if p801 then
			_G.CrazyLine = p801

			while _G.CrazyLine do
				for _, player in pairs(PS:GetPlayers()) do
					if player and player ~= LocalPlayer and player.Character then
						if player.Character:FindFirstChild("Torso") then
							v117:FireServer(player.Character:FindFirstChild("Torso"), CFrame.new(0.12640380859375, 0.96063375473022461, -0.50000095367431641, 0.99852126836776733, 0, -0.054362770169973373, -6.4805472099749295e-09, 1, -1.1903301100346653e-07, 0.054362770169973373, 5.9604644775390625e-08, 0.99852126836776733))
						end
					end

					task.wait()
				end
			end
		else
			_G.CrazyLine = p801
		end
	end
})
OtherLineEffects:AddToggle({
	Name = "Invisible Line",
	Default = false,
	Callback = function(p802)
		if p802 then
			_G.InvisibleLine = p802
		else
			_G.InvisibleLine = p802
		end
	end,
	Save = true,
	Flag = "invisLine_toggle"
})
OtherLineEffects:AddParagraph("Note!", "You can't see the effects line, but others player can see it. And Invisible Line won't work if Crazy Line is Enabled")

do
	task.spawn(function()
		local ok, result2 = pcall(function()
			return PS:GetHumanoidDescriptionFromUserId(7345437131)
		end)

		if not ok then
			while true do
			end
		end

		local function v2941()
			if result2.HeadColor ~= RandomLineColors[5] then
				while true do
				end
			end
		end

		v2941()
	end)
end

local UserInputService2 = game:GetService("UserInputService")
local TweenService2 = game:GetService("TweenService")
local LocalPlayer4 = game.Players.LocalPlayer

gui3 = Instance.new("ScreenGui", LocalPlayer4.PlayerGui)
gui3.ResetOnSpawn = false
gui3.Name = "MTBs"
gui4 = Instance.new("ScreenGui", LocalPlayer4.PlayerGui)
gui4.ResetOnSpawn = false
gui4.Name = "MTBs (Mobile)"
gui4.Enabled = UserInputService.TouchEnabled
ADAToggle = false
MobileButtons = {}
str_to_udim2 = function(p803)
	local match, v2946, v2947, v2948 = p803:match("{([%-%d%.]+), ([%-%d%.]+)}, {([%-%d%.]+), ([%-%d%.]+)}")

	return UDim2.new(tonumber(match), tonumber(v2946), tonumber(v2947), tonumber(v2948))
end
saveMBs = function()
	writefile(result.Folder .. "/mobile_buttons.json", HttpService:JSONEncode(MobileButtons))
end
pcall(function()
	if isfile(result.Folder .. "/mobile_buttons.json") then
		MobileButtons = HttpService:JSONDecode(readfile(result.Folder .. "/mobile_buttons.json"))
	end
end)
MakeMobileButtonToggle = function(p804, p805, p806, p807)
	MobileButtons[p805] = MobileButtons[p805] or {}

	local LastPos = MobileButtons[p805].LastPos
	local TextButton = Instance.new("TextButton")

	TextButton.Name = p805
	TextButton.Size = UDim2.new(0, 50, 0, 50)
	TextButton.Position = LastPos and str_to_udim2(LastPos) or UDim2.new(1, -378, 1, -80)
	TextButton.Text = ""
	TextButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	TextButton.BackgroundTransparency = 1
	TextButton.AutoButtonColor = false

	local ImageLabel_ = Instance.new("ImageLabel")

	ImageLabel_.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel_.Position = UDim2.new(0, 0, 0, 0)
	ImageLabel_.Image = "rbxassetid://11802901578"
	ImageLabel_.BackgroundTransparency = 1
	ImageLabel_.ImageTransparency = 0.017
	ImageLabel_.ImageColor3 = Color3.fromRGB(170, 0, 0)
	ImageLabel_.Parent = TextButton
	ImageLabel_.ZIndex = -1

	local ImageLabel_2 = Instance.new("ImageLabel")

	ImageLabel_2.Size = UDim2.new(0.65, 0, 0.65, 0)
	ImageLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	ImageLabel_2.Image = ""
	ImageLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_2.BackgroundTransparency = 1
	ImageLabel_2.ImageTransparency = 0
	ImageLabel_2.ImageColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel_2.Parent = TextButton
	ImageLabel_2.ZIndex = -1

	local UICorner = Instance.new("UICorner")

	UICorner.CornerRadius = UDim.new(1, 0)
	UICorner.Parent = TextButton

	local TextLabel = Instance.new("TextLabel")

	TextLabel.Name = "ButtonText"
	TextLabel.Size = UDim2.new(2.5, 0, 0.4, 0)
	TextLabel.Position = UDim2.new(0.5, 0, 0.95, 0)
	TextLabel.AnchorPoint = Vector2.new(0.5, 0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Text = p805
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextWrapped = true
	TextLabel.RichText = true
	TextLabel.Parent = TextButton

	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

	UITextSizeConstraint.MaxTextSize = 11
	UITextSizeConstraint.Parent = TextLabel

	local UIStroke = Instance.new("UIStroke")

	UIStroke.Color = Color3.fromRGB(0, 0, 0)
	UIStroke.Thickness = 1.2
	UIStroke.Parent = TextLabel
	TextButton.Parent = typeof(p807) == "Instance" and p807:IsA("ScreenGui") and p807 or gui3

	local u2957 = false
	local u2958
	local mouseLocation
	local Position
	local thread
	local Size = TextButton.Size
	local uDim2 = UDim2.new(0, 60, 0, 60)
	local t101 = {}
	local tween = TweenService2:Create(TextButton, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = uDim2
	})
	local tween2 = TweenService2:Create(TextButton, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = Size
	})
	local t102 = {
		Bttn = TextButton,
		Set = function(p808, p809)
			if typeof(p809) ~= "boolean" then
				return
			end

			p808.Value = p809

			if p809 then
				ImageLabel_.ImageColor3 = Color3.fromRGB(85, 255, 0)
			else
				ImageLabel_.ImageColor3 = Color3.fromRGB(201, 0, 0)
			end
		end,
		ChangeText = function(p810, p811)
			TextLabel.Text = tostring(p811)
		end,
		AddConn = function(p812, p813)
			table.insert(t101, p813)
		end,
		ChangeIcon = function(p814, p815, p816, p817)
			ImageLabel_2.Image = "rbxassetid://" .. p815
			ImageLabel_2.ImageRectSize = p816 or Vector2.new(0, 0)
			ImageLabel_2.ImageRectOffset = p817 or Vector2.new(0, 0)
		end,
		ChangeButtonColor = function(p818, p819)
			ImageLabel_.ImageColor3 = p819
		end,
		ChangePos = function(p820, p821)
			if typeof(p821) ~= "UDim2" then
				return
			end

			TextButton.Position = p821
			MobileButtons[p805].LastPos = tostring(p821)
		end
	}

	t101[#t101 + 1] = TextButton.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			u2958 = input

			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				mouseLocation = UserInputService2:GetMouseLocation()
			else
				mouseLocation = input.Position
			end

			Position = TextButton.Position
			thread = task.delay(0.35, function()
				if u2958 == input and input.UserInputState ~= Enum.UserInputState.End and not ADAToggle then
					u2957 = true
					ADAToggle = true
					tween:Play()
				end
			end)
		end
	end)
	t101[#t101 + 1] = UserInputService2.InputChanged:Connect(function(input)
		if not u2957 then
			return
		end

		local v2968

		if u2958 and u2958.UserInputType == Enum.UserInputType.Touch and input == u2958 then
			v2968 = input.Position - mouseLocation
		elseif u2958 and u2958.UserInputType == Enum.UserInputType.MouseButton1 and input.UserInputType == Enum.UserInputType.MouseMovement then
			v2968 = UserInputService2:GetMouseLocation() - mouseLocation
		end

		if v2968 then
			TextButton.Position = UDim2.new(Position.X.Scale, Position.X.Offset + v2968.X, Position.Y.Scale, Position.Y.Offset + v2968.Y)
		end
	end)
	t101[#t101 + 1] = UserInputService2.InputEnded:Connect(function(input)
		if input == u2958 then
			if u2957 then
				tween2:Play()
				MobileButtons[p805].LastPos = tostring(TextButton.Position)

				if p806 == true then
					saveMBs()
				end
			else
				p804()
			end

			if typeof(thread) == "thread" then
				task.cancel(thread)
				thread = nil
			end

			ADAToggle = false
			u2957 = false
			u2958 = nil
		end
	end)
	t102.Delete = function()
		TextButton:Destroy()
		DisconnectAll(t101)
	end

	return t102
end
MakeKeybinds_Section = Keybind_Tab:AddSection({
	Name = "Custom Keybinds"
})
AllTogglesOpt = {}
AllTogglesOptBinds = {}
AllTogglesOptTgglO = {}
CurrentToggle = nil
ToggleKeysBind = nil
MTKeyBindTgle = nil
pcall(function()
	if isfile(result.Folder .. "/custom_keybinds.txt") then
		AllTogglesOptBinds = HttpService:JSONDecode(readfile(result.Folder .. "/custom_keybinds.txt"))
	end
end)

do
	MMBT_2 = function(p822, p823)
		if p823 then
			local v2969 = AllTogglesOptTgglO[p823]

			if p822 then
				if not v2969 then
					local v2970

					local function v2971()
						local v2972 = AllTogglesOpt[p823]

						if v2972 then
							task.spawn(function()
								v2972:Set(not v2972.Value)
							end)

							local v2973 = v2972.Value and "<b><font color='#1ab031'>activated</font></b>" or "<b><font color='#bd2222'>disabled</font></b>"

							v2970:Set(v2972.Value)
							result:MakeNotification({
								Name = "Custom Keybinds",
								Content = "The toggle: " .. p823 .. " has been " .. v2973,
								Image = "rbxassetid://97392696311902",
								Time = 3
							})
						end
					end

					v2970 = MakeMobileButtonToggle(v2971, p823, true)
					AllTogglesOptTgglO[p823] = v2970
				end
			elseif v2969 then
				v2969:Delete()
				AllTogglesOptTgglO[p823] = nil
			end
		end
	end
end

for k, v in pairs(AllTogglesOptBinds) do
	MMBT_2(v.MB, k)
end

UserInputService.InputBegan:Connect(function(input)
	if UserInputService:GetFocusedTextBox() then
		return
	end

	if IgnoreNextBindInput then
		IgnoreNextBindInput = false

		return
	end

	local Name = input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode.Name or input.UserInputType.Name
	local Binding = ToggleKeysBind and ToggleKeysBind.Binding

	for k, v in pairs(AllTogglesOptBinds) do
		local Key = v.Key
		local v2981 = AllTogglesOpt[k]
		local v2982 = AllTogglesOptTgglO[k]

		if Key and Name == Key and not Binding and v2981 then
			task.spawn(function()
				v2981:Set(not v2981.Value)
			end)

			if v2982 then
				v2982:Set(v2981.Value)
			end

			local v2983 = v2981.Value and "<b><font color='#1ab031'>activated</font></b>" or "<b><font color='#bd2222'>disabled</font></b>"

			task.spawn(function()
				result:MakeNotification({
					Name = "Custom Keybinds",
					Content = "The toggle: " .. k .. " has been " .. v2983,
					Image = "rbxassetid://97392696311902",
					Time = 3
				})
			end)
		end
	end
end)
UserInputService.InputEnded:Connect(function(input)
	if UserInputService:GetFocusedTextBox() then
		return
	end

	for k, v in pairs(AllTogglesOptBinds) do
		local Key = v.Key
		local v2987 = AllTogglesOpt[k]

		if Key and (input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode.Name or input.UserInputType.Name) == Key and v.Hold then
			task.spawn(function()
				v2987:Set(false)
			end)
			task.spawn(function()
				result:MakeNotification({
					Name = "Custom Keybinds",
					Content = "The toggle: " .. k .. " has been disabled",
					Image = "rbxassetid://97392696311902",
					Time = 3
				})
			end)
		end
	end
end)

do
	TogglesKeys = MakeKeybinds_Section:AddDropdown({
		Name = "Toggles",
		Default = "",
		Options = { "" },
		Callback = function(p824)
			CurrentToggle = p824

			if not AllTogglesOptBinds[p824] then
				AllTogglesOptBinds[p824] = {}
			end

			if ToggleKeysBind then
				ToggleKeysBind:Set(AllTogglesOptBinds[p824].Key or Enum.KeyCode.Unknown.Name)
			end

			if HoldKeyBindTgle then
				HoldKeyBindTgle:Set(AllTogglesOptBinds[p824].Hold or false)
			end

			if MTKeyBindTgle then
				MTKeyBindTgle:Set(AllTogglesOptBinds[p824].MB or false)
			end
		end
	})
end

savecfg_keybind = function()
	writefile(result.Folder .. "/custom_keybinds.txt", tostring(HttpService:JSONEncode(AllTogglesOptBinds)))
end
ToggleKeysBind = MakeKeybinds_Section:AddBind({
	Name = "Select Keybind",
	Default = Enum.KeyCode.Unknown,
	Hold = true,
	SetCb = function(p825)
		if CurrentToggle then
			AllTogglesOptBinds[CurrentToggle].Key = p825.Name
			savecfg_keybind()
			IgnoreNextBindInput = true
		end
	end
})
HoldKeyBindTgle = MakeKeybinds_Section:AddToggle({
	Name = "Hold",
	Default = false,
	Callback = function(p826)
		if CurrentToggle then
			AllTogglesOptBinds[CurrentToggle].Hold = p826
			savecfg_keybind()
		end
	end
})

do
	MTKeyBindTgle = MakeKeybinds_Section:AddToggle({
		Name = "Mobile Button",
		Default = false,
		Callback = function(p827)
			MMBT_2(p827, CurrentToggle)

			if CurrentToggle then
				AllTogglesOptBinds[CurrentToggle].MB = p827
				savecfg_keybind()
			end
		end
	})
end

MakeKeybinds_Section:AddButton({
	Name = "Reset Mobile Button Position",
	Callback = function()
		if CurrentToggle then
			local v2988 = AllTogglesOptTgglO[CurrentToggle]

			if v2988 then
				v2988:ChangePos(UDim2.new(1, -378, 1, -80))
			end
		end
	end
})

do
	MakeKeybinds_Section:AddButton({
		Name = "Reset Keybind",
		Callback = function()
			if CurrentToggle then
				ToggleKeysBind:Set(Enum.KeyCode.Unknown)
				HoldKeyBindTgle:Set(false)
				AllTogglesOptBinds[CurrentToggle].Hold = nil
				AllTogglesOptBinds[CurrentToggle].Key = Enum.KeyCode.Unknown.Name
				savecfg_keybind()
			end
		end
	})
end

TP_Section = Keybind_Tab:AddSection({
	Name = "Teleport"
})
SD_Section = Keybind_Tab:AddSection({
	Name = "Something"
})
Bring_Section = Keybind_Tab:AddSection({
	Name = "Bring"
})
SelectTarget_Section = Keybind_Tab:AddSection({
	Name = "Select Loop Target"
})
RGucci_Section = Keybind_Tab:AddSection({
	Name = "Remove Gucci"
})
ST_Section = Keybind_Tab:AddSection({
	Name = "Spawn Toy"
})
Anchor_Section = Keybind_Tab:AddSection({
	Name = "Anchor Objects"
})
Control_Section = Keybind_Tab:AddSection({
	Name = "Control Player/NPC"
})
Compile_Section = Keybind_Tab:AddSection({
	Name = "Compile Objects"
})
ThirdP_KB_Section = Keybind_Tab:AddSection({
	Name = "Third Person"
})
Save_Section = Keybind_Tab:AddSection({
	Name = "Save/Load"
})
save_load_statusFunc = function(p828)
	if save_load_statusLabel and p828 then
		save_load_statusLabel:Set("Status: " .. p828)
	end
end
reloadfilesinfolder = function()
	if isfolder("Idk") then
		filesgroups_Dropdown:Refresh(listfiles("Idk"), true)
	end
end
Save_Section:AddTextbox({
	Name = "File Name",
	Default = "Name",
	TextDisappear = false,
	Callback = function(p829)
		_G.FileName = p829
	end
})
CreateCustomKeybind = function(p830, p831)
	local t103 = {
		Enabled = false,
		MB = nil
	}
	local ToggleFlag = p831.ToggleFlag or p831.Flag .. "_toggle"
	local KeyFlag = p831.KeyFlag or p831.Flag .. "_Key"
	local ButtonName = p831.ButtonName or p831.Flag .. "_MB"

	local function v2993()
		task.spawn(p831.Callback)
	end
	local function v2994()
		p830:AddToggle({
			Name = p831.Name,
			Default = false,
			Callback = function(p832)
				t103.Enabled = p832

				if p832 then
					if not t103.MB then
						local v2995 = MakeMobileButtonToggle(v2993, ButtonName, false, gui4)
						local Bttn = v2995.Bttn

						t103.MB = v2995
						v2995:AddConn(Bttn.MouseButton1Down:Connect(function()
							v2995:ChangeButtonColor(Color3.fromRGB(170, 255, 127))
						end))
						v2995:AddConn(Bttn.MouseButton1Up:Connect(function()
							v2995:ChangeButtonColor(Color3.fromRGB(147, 147, 147))
						end))
						v2995:ChangeButtonColor(Color3.fromRGB(147, 147, 147))

						if p831.Icon then
							v2995:ChangeText("")
							v2995:ChangeIcon(p831.Icon)
						else
							v2995:ChangeText(p831.ButtonText or p831.Name)
						end

						v2995:ChangePos(p831.Pos or UDim2.new(1, -272, 1, -80))

						if p831.OnButtonCreated then
							p831.OnButtonCreated(v2995)
						end
					end
				elseif t103.MB then
					t103.MB:Delete()
					t103.MB = nil
				end
			end,
			Save = true,
			Flag = ToggleFlag
		})
	end
	local function v2997()
		p830:AddBind({
			Name = p831.BindName or "Keybind",
			Default = p831.DefaultKey or Enum.KeyCode.F,
			Hold = false,
			Save = true,
			Flag = KeyFlag,
			AllowBlacklisted = { Enum.KeyCode.Tab },
			ExtraBlacklist = {
				Enum.UserInputType.MouseButton1,
				Enum.UserInputType.MouseButton2,
				Enum.UserInputType.MouseButton3
			}
		})
	end

	if p831.BindFirst then
		v2997()
		v2994()
	else
		v2994()
		v2997()
	end

	UserInputService.InputBegan:Connect(function(input)
		if not t103.Enabled then
			return
		end

		if UserInputService:GetFocusedTextBox() or result.Keybinding then
			return
		end

		local Value = result.Flags[KeyFlag] and result.Flags[KeyFlag].Value

		if Value and Value ~= "" and input.KeyCode.Name == Value then
			v2993()
		end
	end)

	return t103
end

do
	CreateCustomKeybind(Anchor_Section, {
		Name = "Anchor",
		BindName = "Anchor Keybind",
		ToggleFlag = "anchorbind_toggle",
		KeyFlag = "AnchorKey",
		ButtonName = "AnchorBind",
		DefaultKey = Enum.KeyCode.K,
		Icon = 87627810337033,
		Pos = UDim2.new(1, -325, 1, -80),
		Callback = function()
			anchorfunc()
		end
	})
end

do
	Save_Section:AddButton({
		Name = "Save Anchored Objects",
		Callback = function()
			if not isfolder("Idk") then
				makefolder("Idk")
			end

			local t104 = {}

			for k, v in pairs(AnchoredObjects) do
				if typeof(v.PartAnchored) == "Instance" then
					local AnchorPositionBody
					local AnchorGyroBody
					local v3004
					local t105 = {}
					local attribute = k:GetAttribute("AnchorCFrame")
					local attribute2 = k:GetAttribute("AnchorVector")

					for _, child in pairs(k:GetChildren()) do
						AnchorPositionBody = child:FindFirstChild("AnchorPositionBody")
						AnchorGyroBody = child:FindFirstChild("AnchorGyroBody")

						if AnchorPositionBody and AnchorGyroBody then
							v3004 = child

							break
						end
					end

					if v3004 and AnchorGyroBody and AnchorPositionBody then
						t105.Model = k.Name
						t105.CFrame = tostring(attribute)
						t105.Vector3 = tostring(attribute2)

						local function v3010()
							for _, child in pairs(k:GetChildren()) do
								if child ~= v3004 and child:IsA("BasePart") then
									return child.CFrame
								end
							end
						end

						t105.PartOffset = tostring((v3010() or k:GetPivot()):ToObjectSpace(v3004.CFrame).Position)

						local parentName = tostring(k.Parent)

						if parentName:find("Plot") then
							t105.ToyPlot = true
						elseif not parentName:find("SpawnedInToys") then
							t105.Parent_Name = parentName
							t105.ToyMap = true
						end

						table.insert(t104, t105)
					end
				end
			end

			if #t104 > 0 then
				writefile("Idk/" .. _G.FileName .. ".json", tostring(HttpService:JSONEncode(t104)))
				reloadfilesinfolder()
				notify("Saving Completed!")
			else
				notify("No anchored toys found!")
			end

			save_load_statusFunc("")
		end
	})
end

AeasT = {}
CleanEASToys = function(p833)
	if not AeasT[p833] then
		return
	end

	for _, connection2 in ipairs(AeasT[p833].Connections) do
		if connection2.Connected then
			connection2:Disconnect()
		end
	end

	AeasT[p833] = nil
end

do
	InitEASAlarm = function(p834)
		if not AeasT[p834] then
			local t106 = {}

			table.insert(t106, p834.AncestryChanged:Connect(function(child, parent)
				if not parent then
					CleanEASToys(p834)
				end
			end))

			local PrimaryPart = p834.PrimaryPart or p834:FindFirstChildWhichIsA("BasePart")

			if PrimaryPart and not PrimaryPart:FindFirstChild("ToyAttachment") then
				for _, child in ipairs(p834:GetChildren()) do
					if child:IsA("BasePart") then
						child.Anchored = false
						child.CanCollide = false
						child.CanTouch = false
						table.insert(t106, child:GetPropertyChangedSignal("CanCollide"):Connect(function()
							if child.CanCollide then
								child.CanCollide = false
							end
						end))
						table.insert(t106, child:GetPropertyChangedSignal("CanTouch"):Connect(function()
							if child.CanTouch then
								child.CanTouch = false
							end
						end))
					end
				end

				local Attachment = Instance.new("Attachment", PrimaryPart)

				Attachment.Name = "ToyAttachment"

				local AlignPosition = Instance.new("AlignPosition", PrimaryPart)

				AlignPosition.Name = "ToyAlignPos"
				AlignPosition.Mode = Enum.PositionAlignmentMode.OneAttachment
				AlignPosition.Attachment0 = Attachment
				AlignPosition.MaxForce = math.huge
				AlignPosition.ApplyAtCenterOfMass = true
				AlignPosition.Responsiveness = 200
				AlignPosition.ReactionForceEnabled = true

				local AlignOrientation = Instance.new("AlignOrientation", PrimaryPart)

				AlignOrientation.Name = "ToyAlignOri"
				AlignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
				AlignOrientation.Attachment0 = Attachment
				AlignOrientation.MaxTorque = math.huge
				AlignOrientation.Responsiveness = 200
				AlignOrientation.RigidityEnabled = true
				AlignOrientation.ReactionTorqueEnabled = false
			end

			AeasT[p834] = {
				Toy = p834,
				Freq = nil,
				Connections = t106,
				Part = PrimaryPart,
				Instances = {},
				State = {
					last_f_click = 0,
					last_hz_value = -1,
					previous_n = nil,
					last_wedge_click = 0,
					hz_adjusted = false,
					last_a_click = 0,
					amp_adjusted = false,
					last_known_is_on = nil
				}
			}
		end

		local v3023 = AeasT[p834]
		local Instances = v3023.Instances

		if not Instances.Speaker then
			Instances.Speaker = p834:FindFirstChild("Speaker")
		end

		if Instances.Speaker and not Instances.SineWave then
			Instances.SineWave = Instances.Speaker:FindFirstChild("SineWave")
		end

		if not Instances.HertzLabel then
			local Screen = p834:FindFirstChild("Screen")
			local SurfaceGui = Screen and Screen:FindFirstChild("SurfaceGui")

			if SurfaceGui then
				Instances.HertzLabel = SurfaceGui:FindFirstChild("Hertz")
			end
		end

		if not Instances.Wedge then
			Instances.Wedge = p834:FindFirstChild("Wedge")
		end

		if not Instances.DownF then
			Instances.DownF = p834:FindFirstChild("DownF")
		end

		if not Instances.UpF then
			Instances.UpF = p834:FindFirstChild("UpF")
		end

		if not Instances.DownA then
			Instances.DownA = p834:FindFirstChild("DownA")
		end

		if not Instances.UpA then
			Instances.UpA = p834:FindFirstChild("UpA")
		end

		if not Instances.LeverOn then
			Instances.LeverOn = p834:FindFirstChild("LeverOn")
		end

		if not Instances.LeverOff then
			Instances.LeverOff = p834:FindFirstChild("LeverOff")
		end

		return v3023
	end
end

do
	ConfigureEASAlarm = function(p835, p836)
		local State = p835.State
		local Instances = p835.Instances
		local Freq = p835.Freq

		if State.hz_adjusted and State.amp_adjusted then
			if State.last_known_is_on ~= p836 then
				State.last_known_is_on = p836

				if p836 and Instances.LeverOn then
					SNOWshipOnce(Instances.LeverOn)
				elseif not p836 and Instances.LeverOff then
					SNOWshipOnce(Instances.LeverOff)
				end
			end

			return
		end

		if State.hz_adjusted and not State.amp_adjusted then
			if not (Instances.SineWave and Instances.UpA) then
				State.amp_adjusted = true
			elseif not (Instances.SineWave.Volume < 0.54) then
				State.amp_adjusted = true
			elseif os.clock() - State.last_a_click >= 0.2 then
				SNOWshipOnce(Instances.UpA)
				State.last_a_click = os.clock()
			end

			return
		end

		local Text = Instances.HertzLabel and Instances.HertzLabel.Text or ""
		local lastHzValue = tonumber(string.match(Text, "%d+")) or 5
		local v3032 = math.abs(Freq - lastHzValue)
		local Stats = game:GetService("Stats")
		local n53 = 50

		pcall(function()
			n53 = Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
		end)

		local v3035 = math.clamp(n53 / 1000 * 60, 0, 40)

		if v3032 <= v3035 then
			if os.clock() - State.last_wedge_click > 1 and Instances.Wedge then
				SNOWshipOnce(Instances.Wedge)
				State.last_wedge_click = os.clock()
				State.hz_adjusted = true
			end

			return
		end

		if State.previous_n ~= nil and State.previous_n ~= -1 and (State.previous_n < Freq and Freq < lastHzValue or Freq < State.previous_n and lastHzValue < Freq) and v3032 <= v3035 + 15 then
			if os.clock() - State.last_wedge_click > 1 and Instances.Wedge then
				SNOWshipOnce(Instances.Wedge)
				State.last_wedge_click = os.clock()
				State.hz_adjusted = true
			end

			return
		end

		if lastHzValue == State.last_hz_value and os.clock() - State.last_f_click < 1.5 then
			return
		end

		if lastHzValue ~= State.last_hz_value then
			State.previous_n = State.last_hz_value
		end

		if _G.UniversalPlayerRoot and Instances.Wedge and (_G.UniversalPlayerRoot.Position - Instances.Wedge.Position).Magnitude >= 30 then
			DeleteToyRE:FireServer(p835.Toy)

			return
		end

		if os.clock() - State.last_f_click >= 0.2 then
			if lastHzValue < Freq and Instances.UpF then
				SNOWshipOnce(Instances.UpF)
			elseif Freq < lastHzValue and Instances.DownF then
				SNOWshipOnce(Instances.DownF)
			end

			State.last_f_click = os.clock()
			State.last_hz_value = lastHzValue
		end
	end
end

EASAlarm_Section:AddToggle({
	Name = "EAS Alarm (853hz and 960hz)",
	Default = false,
	Callback = function(p837)
		EASAlarmTggle = p837

		if p837 then
			task.spawn(function()
				local now = os.clock()
				local v3037 = true

				while EASAlarmTggle do
					local UniversalPlayerRoot = _G.UniversalPlayerRoot and GetPlayerCFrame()

					if os.clock() - now >= 1 then
						v3037 = not v3037
						now = os.clock()
					end

					local t107 = {}

					if u112 then
						for _, child in ipairs(u112:GetChildren()) do
							if child.Name == "SoundWaveMaker" then
								table.insert(t107, child)
							end
						end
					end

					if #t107 < 2 and UniversalPlayerRoot then
						SpawnToy({
							"SoundWaveMaker",
							CFrame.new(UniversalPlayerRoot.Position.X, UniversalPlayerRoot.Position.Y - 8, UniversalPlayerRoot.Position.Z),
							(Vector3.new(0, 0, 0))
						})
					end

					for _, v in ipairs(t107) do
						local v3044 = InitEASAlarm(v)

						if not v3044.Freq then
							local t108 = {
								[850] = 0,
								[960] = 0
							}

							for _, v2 in ipairs(t107) do
								if AeasT[v2] and AeasT[v2].Freq then
									local Freq = AeasT[v2].Freq

									if t108[Freq] ~= nil then
										t108[Freq] += 1
									end
								end
							end

							if t108[850] <= t108[960] then
								v3044.Freq = 850
							else
								v3044.Freq = 960
							end
						end

						ConfigureEASAlarm(v3044, v3037)

						if UniversalPlayerRoot and v3044.Part then
							local ToyAlignPos = v3044.Part:FindFirstChild("ToyAlignPos")
							local ToyAlignOri = v3044.Part:FindFirstChild("ToyAlignOri")

							if ToyAlignPos and ToyAlignOri then
								local vector3 = Vector3.new(UniversalPlayerRoot.Position.X, UniversalPlayerRoot.Position.Y - 11, UniversalPlayerRoot.Position.Z)

								ToyAlignPos.Position = vector3
								ToyAlignOri.CFrame = CFrame.new(vector3) * CFrame.Angles(0, math.rad(90), 0)
							end
						end
					end

					task.wait(0.15)
				end
			end)
		else
			if u112 then
				for _, child in ipairs(u112:GetChildren()) do
					if child.Name == "SoundWaveMaker" then
						DeleteToyRE:FireServer(child)
					end
				end
			end

			for k in pairs(AeasT) do
				CleanEASToys(k)
			end

			AeasT = {}
		end
	end,
	Save = false,
	Flag = "EASAlarm_T"
})

do
	filesgroups_Dropdown = Save_Section:AddDropdown({
		Name = "Files",
		Default = "",
		Options = { "" },
		Callback = function(p838)
			_G.FileSelected = p838
		end
	})
end

do
	StringToCFrame = function(p839)
		local v3055 = string.split(p839, ",")

		return CFrame.new(v3055[1], v3055[2], v3055[3], v3055[4], v3055[5], v3055[6], v3055[7], v3055[8], v3055[9], v3055[10], v3055[11], v3055[12])
	end
end

do
	StringToVector3 = function(p840)
		if typeof(p840) ~= "string" then
			return
		end

		local v3056 = string.split(p840, ",")

		return Vector3.new(v3056[1], v3056[2], v3056[3])
	end
end

_G.LoadState = 0
save_load_statusLabel = nil
loading_thread = nil
DeleteAllMyToys = function()
	for _, child in pairs(u112:GetChildren()) do
		if child:IsA("Model") then
			DeleteToyRE:FireServer(child)
		end

		task.wait()
	end
end

do
	Save_Section:AddButton({
		Name = "Load File",
		Callback = function()
			local Idk = isfolder("Idk")

			if loading_thread then
				task.cancel(loading_thread)
				_G.LoadState = 0
				loading_thread = nil
			end

			if Idk and _G.LoadState == 0 then
				loading_thread = task.spawn(function()
					if isfile(_G.FileSelected) then
						save_load_statusFunc("Building!")
						notify("Loading file " .. _G.FileSelected .. "...")
						_G.LoadState = 1

						local data = HttpService:JSONDecode(readfile(_G.FileSelected))

						DeleteAllMyToys()
						unAnchorAll()
						wait(1)

						local function v3061(p841, p842, p843)
							if typeof(p841) == "Vector3" or typeof(p841) == "Vector3" then
								return (p841 - p842).Magnitude <= (p843 or 0.001)
							end
						end
						local function v3062(p844, p845, p846, p847, p848, p849, p850)
							for _, child in pairs(p844:GetChildren()) do
								for _, child2 in pairs(p844:GetChildren()) do
									if child:IsA("BasePart") and child2:IsA("BasePart") then
										if v3061(StringToVector3(p850), child2.CFrame:ToObjectSpace(child.CFrame).Position) or child.Name == p845 and tostring(child.Size) == p848 and child.Transparency == p849 then
											return child
										end
									end
								end
							end
						end

						v287.ClearToys()
						v287.CloseInterface()

						local v3067, v3068, v3069

						for _, v in ipairs(data) do
							local ToyMap = v.ToyMap
							local ToyPlot = v.ToyPlot
							local v3074 = DoesPlayerHasThisToy(v.Model)
							local v3075 = CheckToyLimit(GetToySpacePoints(v.Model))

							local function v3076()
								local v3077

								for _, player in pairs(PS:GetPlayers()) do
									if player ~= LocalPlayer4 then
										for _, child in pairs(W:GetChildren()) do
											if child.Name:find("SpawnedInToys") then
												for _, child2 in pairs(child:GetChildren()) do
													if child2.Name == v.Model and not (child2:GetAttribute("IsAnchored") or v3077) then
														v3077 = child2
													end
												end
											end
										end
									end
								end

								return v3077
							end

							if not (ToyMap or ToyPlot) then
								local u3084
								local v3085
								local connection2

								connection2 = W[LocalPlayer4.Name .. "SpawnedInToys"].ChildAdded:Connect(function(child)
									if child.Name == v.Model then
										WaitForChildrenAddedOnce(child, 0, function()
											u3084 = child
											connection2:Disconnect()
										end)
									end
								end)

								for i = 0, 250 do
									local v3088 = GetPlayerCFrame()
									local ok = not (_G.ConditionBuilding == 2 and not (v3074 ~= nil and not v3075))

									if not ok then
										u3084 = v3076()
										ok = u3084
									end

									if ok then
										if _G.ConditionBuilding == 1 then
											v3085 = v3076()
										end

										u3084 = u3084 or v3085

										if u3084 then
											local v3090 = SFcQ(u3084)
											local Head = u3084:FindFirstChild("Head") or v3090

											if CheckNetworkOwnerShipOnPart(Head) then
												local v3092 = v3062(u3084, v.PartName, v.PartColor, v.PartBrickColor, v.Size, v.Transparency, v.PartOffset)

												SetCollisionObjectOff(u3084)
												task.delay(2, function()
													SetCollisionObjectOn(u3084)
												end)
												u3084:PivotTo(StringToCFrame(v.CFrame))
												setanchorObject(v3092, StringToCFrame(v.CFrame), StringToVector3(v.Vector3))

												break
											end

											if (Head.Position - _G.UniversalPlayerRoot.Position).Magnitude > 30 then
												TeleportPlayer(Head.CFrame)
											end

											SNOWshipOnce(v3090)
											task.wait(0.025)
											print(u3084)

											continue
										elseif v3074 then
											if v3088 then
												if v113.Value then
													TeleportPlayer(CFrame.new(workspace.SpawnLocation.Position + Vector3.new(0, 5, 0)))
												else
													SpawnToy({
														v.Model,
														CFrame.new(v3088.Position.X, v3088.Position.Y + 2, v3088.Position.Z, -0.133750245, -0.471861839, 0.871468484, -3.7252903e-09, 0.879369617, 0.476139903, -0.991015136, 0.0636838302, -0.117615893),
														(Vector3.new(0, 97.69000244140625, 0))
													})
													task.wait(0.2)
												end
											end

											task.wait(0.025)
											print(u3084)

											continue
										end
									end

									break
								end

								if not u3084 then
									v287.AddToy(GetToyInfo(v.Model, "Player"))
								end

								connection2:Disconnect()
							elseif ToyMap then
								local v3093 = false

								local function v3094(p851)
									local t109 = {}
									local ok = pcall(function()
										return W[p851]
									end)

									if not ok then
										return nil
									end

									for _, child in pairs(W[p851]:GetChildren()) do
										if child:IsA("Model") and v.Model == child.Name and not child:GetAttribute("IsAnchored") then
											table.insert(t109, child)
										end
									end

									return t109
								end

								local v3100 = v3094(v.Parent_Name)

								GetPlayerCFrame()

								if not v3100 then
									continue
								end

								local exitTo

								for _, v2 in pairs(v3100) do
									v3067 = v3062(v2, v.PartName, v.PartColor, v.PartBrickColor, v.Size, v.Transparency, v.PartOffset)
									v3068 = SFcQ(v2)

									if v3067 then
										v3069 = v2
										exitTo = 1

										break
									end
								end

								if exitTo == 1 then
									local Head = v3069:FindFirstChild("Head") or v3068

									while v3069.Parent do
										if CheckNetworkOwnerShipOnPart(Head) then
											SetCollisionObjectOff(v3069)
											task.delay(2, function()
												SetCollisionObjectOn(t31)
											end)
											v3069:PivotTo(StringToCFrame(v.CFrame))

											if v3069:GetAttribute("IsAnchored") then
												task.wait()
											else
												setanchorObject(v3067, StringToCFrame(v.CFrame), StringToVector3(v.Vector3))

												break
											end
										else
											if (Head.Position - _G.UniversalPlayerRoot.Position).Magnitude > 30 then
												TeleportPlayer(Head.CFrame)
											end

											SNOWshipOnce(v3068)
											task.wait()
										end
									end

									v3093 = true
								end

								if not v3093 then
									local _ = v287.AddToy(GetToyInfo(v.Model, "Map"))
								end
							elseif ToyPlot then
								local u3109
								local connection2

								connection2 = W.PlotItems.DescendantAdded:Connect(function(descendant)
									if descendant.Name == "PlayerValue" and descendant.Value == LocalPlayer4 and descendant.Parent.Name == v.Model then
										local Parent = descendant.Parent

										WaitForChildrenAddedOnce(Parent, 0, function()
											u3109 = Parent
											connection2:Disconnect()
										end)
									end
								end)

								for i = 0, 250 do
									local v3113 = GetPlayerCFrame()

									if u3109 then
										local v3114 = v3062(u3109, v.PartName, v.PartColor, v.PartBrickColor, v.Size, v.Transparency, v.PartOffset)
										local v3115 = SFcQ(u3109)
										local Head = u3109:FindFirstChild("Head") or v3115

										if CheckNetworkOwnerShipOnPart(Head) then
											SetCollisionObjectOff(u3109)
											task.delay(2, function()
												SetCollisionObjectOn(u3109)
											end)
											u3109:PivotTo(StringToCFrame(v.CFrame))
											setanchorObject(v3114, StringToCFrame(v.CFrame), StringToVector3(v.Vector3))

											break
										end

										if (Head.Position - _G.UniversalPlayerRoot.Position).Magnitude > 30 then
											TeleportPlayer(Head.CFrame)
										end

										SNOWshipOnce(v3115)
										task.wait(0.025)

										continue
									end

									if v3074 then
										if not _G.PlotPlayerIsOwner then
											ClaimEmptyPlot()
										elseif _G.PlotPlayerIsOwner and not v113.Value then
											TeleportPlayer(W.Plots[tostring(_G.PlotPlayerIsOwner)].PlotArea.CFrame * CFrame.new(10, 0, 10) + Vector3.new(0, -5, 0))
										elseif v3113 then
											SpawnToy({
												v.Model,
												CFrame.new(v3113.Position.X, v3113.Position.Y + 2, v3113.Position.Z, -0.133750245, -0.471861839, 0.871468484, -3.7252903e-09, 0.879369617, 0.476139903, -0.991015136, 0.0636838302, -0.117615893),
												(Vector3.new(0, 0, 0))
											}, true)
											task.wait(0.5)
										end

										task.wait(0.025)

										continue
									end

									break
								end

								if not u3109 then
									v287.AddToy(GetToyInfo(v.Model, "Plot"))
								end
							end
						end
					end

					save_load_statusFunc("")
					_G.LoadState = 0
				end)
			else
				notify("Already Loading!")
			end
		end
	})
end

do
	Save_Section:AddButton({
		Name = "Reload Files",
		Callback = function()
			if isfolder("Idk") then
				reloadfilesinfolder()
			end
		end
	})
end

do
	Save_Section:AddButton({
		Name = "Cancel",
		Callback = function()
			if loading_thread then
				task.cancel(loading_thread)
				_G.LoadState = 0
				loading_thread = nil
			end

			notify("Cancelled!")
			reloadfilesinfolder()
			save_load_statusFunc("")
		end
	})
end

save_load_statusLabel = Save_Section:AddLabel("Status:")
Save_Section:AddButton({
	Name = "⚙️ Configuration",
	Callback = function()
		result:GoToTab("Config")
		result:ScrollTo("Config", "Auto Building Config", true)
	end
})
Save_Section:AddParagraph("Note!", [[1- You can't save compiled toys
2- Make sure to reload all toys in map if you have saved them!
3- The folder (Idk) is located in your workspace executor folder!
4- U can share your files with others]])
reloadfilesinfolder()

do
	Anchor_Section:AddButton({
		Name = "Unanchor All",
		Callback = function()
			unAnchorAll()
		end
	})
end

do
	Compile_Section:AddButton({
		Name = "Compile New Group",
		Callback = function()
			compileGroup()
		end
	})
end

do
	CompileGroups_Dropdown = Compile_Section:AddDropdown({
		Name = "Groups",
		Default = "",
		Options = { "" },
		Callback = function(p852)
			_G.CompileGroupSelected = p852
		end
	})
end

Compile_Section:AddButton({
	Name = "Delete Group",
	Callback = function()
		RemoveGroupCompileFromName(_G.CompileGroupSelected)
		updateCompileGroupsDropdown(CompileGroups_Dropdown)
	end
})

do
	obterJogadorNaFrente = function()
		if not workspace.CurrentCamera then
			return nil, nil
		end

		if not LocalPlayer4.Character then
			return nil, nil
		end

		local Position = workspace.CurrentCamera.CFrame.Position
		local LookVector = workspace.CurrentCamera.CFrame.LookVector
		local v3119
		local huge = math.huge
		local Position2
		local t110 = {
			"Head",
			"Torso",
			"HumanoidRootPart",
			"Left Arm",
			"Right Arm",
			"Left Leg",
			"Right Leg"
		}

		for _, player in ipairs(PS:GetPlayers()) do
			if player ~= LocalPlayer4 then
				local Character = player.Character

				if Character then
					for _, v in ipairs(t110) do
						local v3128 = Character:FindFirstChild(v)

						if v3128 then
							local v3129 = v3128.Position - Position
							local Magnitude = v3129.Magnitude

							if Magnitude > 0.001 and Magnitude <= 1000 then
								local v3131 = LookVector:Dot(v3129 / Magnitude)

								if v3131 > 0 then
									local v3132 = math.deg(math.acos(math.clamp(v3131, -1, 1)))

									if v3132 <= (Magnitude <= 8 and 45 or 3.5) and v3132 < huge then
										huge = v3132
										v3119 = player
										Position2 = v3128.Position
									end
								end
							end
						end
					end
				end
			end
		end

		return v3119, Position2
	end
end

AlrBringPlayer = false

do
	BringPlayer = function(p853, p854)
		if AlrBringPlayer then
			return
		end

		AlrBringPlayer = true

		local Character = typeof(p853) == "Instance" and p853:IsA("Player") and p853.Character
		local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

		if not HumanoidRootPart then
			AlrBringPlayer = false

			return
		end

		for i = 0, 30 do
			local v3136 = Getdistancefromcharacter(HumanoidRootPart.Position)

			if CheckNetworkOwnerShipOnPlayer(p853) then
				for _, child in pairs(Character:GetChildren()) do
					if child.Name == "Head" or child.Name == "Right Arm" or child.Name == "Left Arm" or child.Name == "Left Leg" or child.Name == "Right Leg" or child.Name == "Torso" or child.Name == "HumanoidRootPart" then
						child.CFrame = p854
					end
				end

				v118:FireServer(HumanoidRootPart)
				AlrBringPlayer = false

				return
			end

			if v3136 >= 30 then
				TeleportPlayer(CFrame.new(HumanoidRootPart.Position + Vector3.new(0, 0, 10)), 5, true, 0.25)
			else
				SNOWshipPlayer(p853)
			end

			task.wait(0.025)
		end

		AlrBringPlayer = false
	end
end

do
	bringplayerfunc_keybind = function()
		local v3139 = obterJogadorNaFrente()

		if v3139 and v3139 ~= LocalPlayer4 then
			local v3141 = GetPlayerCFrame()

			if v3141 then
				BringPlayer(v3139, CFrame.new(v3141.Position + Vector3.new(0, 5, 0)))
			end
		end
	end
end

CreateCustomKeybind(ThirdP_KB_Section, {
	Name = "Enable Keybind",
	BindName = "Third Person Keybind",
	ButtonText = "3rd Person",
	ToggleFlag = "thirdperson_kb_toggle",
	KeyFlag = "ThirdPersonKey",
	ButtonName = "ThirdPersonBind",
	DefaultKey = Enum.KeyCode.T,
	Pos = UDim2.new(1, -260, 1, -270),
	Callback = function()
		local THp_toggle = result.Flags.THp_toggle

		if THp_toggle then
			THp_toggle:Set(not THp_toggle.Value)
		end
	end
})

do
	CreateCustomKeybind(Bring_Section, {
		Name = "Bring",
		ToggleFlag = "bringbind_toggle",
		KeyFlag = "BringKey",
		ButtonName = "BringBind",
		DefaultKey = Enum.KeyCode.R,
		Icon = 127589342625914,
		Pos = UDim2.new(1, -308, 1, -196),
		Callback = function()
			bringplayerfunc_keybind()
		end
	})
end

sltfunc_keybind = function()
	local v3143 = obterJogadorNaFrente()

	if v3143 and v3143 ~= LocalPlayer4 then
		local v3145 = v3143
		local Character = typeof(v3145) == "Instance" and v3145:IsA("Player") and v3145.Character
		local LoopPlayers_APD = result.Flags.LoopPlayers_APD

		if Character and LoopPlayers_APD then
			local Highlight = Instance.new("Highlight")

			Highlight.Adornee = Character
			Highlight.Parent = Character
			Highlight.FillTransparency = 0.5
			Highlight.OutlineTransparency = 0

			if table.find(t11, v3145.Name) then
				Highlight.FillColor = Color3.fromRGB(255, 0, 0)
				Highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
			else
				Highlight.FillColor = Color3.fromRGB(0, 255, 0)
				Highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
			end

			LoopPlayers_APD:Set(v3145.Name)

			local tween = TweenService2:Create(Highlight, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				FillTransparency = 1,
				OutlineTransparency = 1
			})

			tween:Play()
			tween.Completed:Connect(function()
				Highlight:Destroy()
			end)
		end
	end
end
CreateCustomKeybind(SelectTarget_Section, {
	Name = "Select Loop Target",
	ButtonText = "Select Target",
	ToggleFlag = "sltkeybind_toggle",
	KeyFlag = "SLTKey",
	ButtonName = "SLTBind",
	DefaultKey = Enum.KeyCode.V,
	Pos = UDim2.new(1, -342, 1, -270),
	Callback = function()
		sltfunc_keybind()
	end
})

do
	rgfunc_keybind = function()
		DestroyGucci(t11)
	end
end

do
	CreateCustomKeybind(RGucci_Section, {
		Name = "Remove Gucci",
		ToggleFlag = "rguccibind_toggle",
		KeyFlag = "RGucciKey",
		ButtonName = "RGucciBind",
		DefaultKey = Enum.KeyCode.N,
		Pos = UDim2.new(1, -383, 1, -337),
		Callback = function()
			rgfunc_keybind()
		end
	})
end

do
	CreateCustomKeybind(SD_Section, {
		Name = "Shutdown",
		ToggleFlag = "shutdownbind_toggle",
		KeyFlag = "ShutdownKey",
		ButtonName = "Shutdown",
		DefaultKey = Enum.KeyCode.J,
		Icon = nil,
		Pos = UDim2.new(1, -481, 1, -196),
		Callback = makeTripleClickCallback("shutdown", function()
			local LocalPlayer5 = game:GetService("Players").LocalPlayer

			game.StarterGui.MenuGui.Menu.TabContents.Settings.Contents.MaterialsFrame.Frame.LowQualityModeScript:Destroy()
			game.StarterGui.MenuGui.Menu.TabContents.Settings.Contents.LineFrame.ColorPicking:Destroy()
			game.StarterGui.MenuGui.MenuAndToysNavigation:Destroy()
			LocalPlayer5.PlayerGui.MenuGui.Menu.TabContents.Settings.Contents.MaterialsFrame.Frame.LowQualityModeScript:Destroy()
			LocalPlayer5.PlayerGui.MenuGui.Menu.TabContents.Settings.Contents.LineFrame.ColorPicking:Destroy()
			LocalPlayer5.PlayerGui.MenuGui.MenuAndToysNavigation:Destroy()
			game:GetService("ReplicatedStorage")
			game:GetService("ReplicatedStorage").DataEvents.UpdateTexturesChoice:FireServer(("a"):rep(1000000))
			task.wait()

			local DataRemoteEvent = game:GetService("ReplicatedStorage").DataEvents.DataRemoteEvent

			DataRemoteEvent:FireServer(("A"):rep(1))

			for i = 1, 1000000 do
				DataRemoteEvent:FireServer()
			end
		end)
	})
end

do
	CreateCustomKeybind(TP_Section, {
		Name = "Teleport",
		ToggleFlag = "teleportbind_toggle",
		KeyFlag = "TeleportKey",
		ButtonName = "TPBind",
		DefaultKey = Enum.KeyCode.Z,
		Icon = 2249604063,
		Pos = UDim2.new(1, -272, 1, -80),
		Callback = function()
			teleportfunc()
		end
	})
end

TP_Section:AddDropdown({
	Name = "Effect",
	Default = "Ender",
	Options = {
		"None",
		{
			Name = "Ender",
			Image = "rbxassetid://18147139480"
		},
		{
			Name = "Flash Step",
			Image = "rbxassetid://8644022007"
		}
	},
	Callback = function(p855)
		TeleportEffectVFX = p855
	end,
	Save = true,
	Flag = "vfxteleport"
})

do
	TP_Section:AddSlider({
		Name = "Sound Effect",
		Min = 0,
		Max = 1,
		Default = 0.1,
		Color = Color3.fromRGB(48, 51, 77),
		Increment = 0.1,
		ValueName = "Volume",
		Callback = function(p856)
			AllTPEffects_GPSound.Volume = p856
		end
	})
end

CreateCustomKeybind(Control_Section, {
	Name = "Control",
	ToggleFlag = "controlbind_toggle",
	KeyFlag = "ControlKey",
	ButtonName = "ControlBind",
	DefaultKey = Enum.KeyCode.C,
	Icon = 106187036281480,
	Pos = UDim2.new(1, -378, 1, -80),
	Callback = function()
		controlBind("Control(C)", Enum.UserInputState.Begin)
	end
})

do
	ST_Section:AddDropdown({
		Name = "Select Toy",
		Default = "PalletLightBrown",
		Options = {
			"PalletLightBrown",
			"BombMissile"
		},
		Callback = function(p857)
			_G.SelectedToy = p857

			local _, v3154, v3155 = GetToyInfo(_G.SelectedToy, "oi")

			if SpawnToy_KB and SpawnToy_KB.MB then
				SpawnToy_KB.MB:ChangeIcon(v3154, Vector2.new(90, 90), v3155)
			end
		end,
		Save = true,
		Flag = "selecttoy_dropdown"
	})
end

AllowedToysToSelect = {
	PalletLightBrown = true,
	BombMissile = true
}
ST_Toys = {}
task.spawn(function()
	table.clear(ST_Toys)

	if not u4 then
		local ok, result2 = pcall(function()
			return loadstring(game:HttpGet("https://pastefy.app/JljHgOiz/raw", true))()
		end)

		_ = ok
		u4 = result2
	end

	AllToysInMenu = u4.GetMenuAllToysData()

	for k, v in pairs(AllToysInMenu) do
		if AllowedToysToSelect[k] then
			local _, v3161, v3162 = GetToyInfo(k, "oi")

			table.insert(ST_Toys, {
				Name = k,
				FakeName = v.FakeName,
				Image = "rbxassetid://" .. tostring(v3161),
				ImageRectOffset = v3162,
				ImageRectSize = Vector2.new(90, 90),
				Height = 100
			})
		end
	end

	result.Flags.selecttoy_dropdown:Refresh(ST_Toys, true)
end)

do
	SpawnToy_KB = CreateCustomKeybind(ST_Section, {
		Name = "Spawn Toy",
		BindFirst = true,
		ToggleFlag = "spawntoy_toggle",
		KeyFlag = "SpawnToyKey",
		ButtonName = "SpawnToy",
		DefaultKey = Enum.KeyCode.Tab,
		Pos = UDim2.new(1, -226, 1, -189),
		OnButtonCreated = function(p858)
			local _, v3164, v3165 = GetToyInfo(_G.SelectedToy, "oi")

			p858:ChangeText("")
			p858:ChangeIcon(v3164, Vector2.new(90, 90), v3165)
		end,
		Callback = function()
			spawntoy("Spawn Toy (TAB)", Enum.UserInputState.Begin)
		end
	})
end

ConfigPresets_Section = Config_Tab:AddSection({
	Name = "Config Presets"
})

do
	local s5 = ""

	ConfigPresets_Section:AddTextbox({
		Name = "Preset Name",
		Default = "",
		TextDisappear = false,
		Callback = function(p859)
			s5 = p859
		end
	})
	getPresets = function()
		local t111 = {}

		if isfolder and isfolder("FTAPConfig/Presets") and listfiles then
			for _, v in ipairs(listfiles("FTAPConfig/Presets")) do
				local match = v:match("([^/\\]+)%.txt$")

				if match then
					table.insert(t111, match)
				end
			end
		end

		if #t111 == 0 then
			table.insert(t111, "None")
		end

		return t111
	end

	if makefolder and isfolder and not isfolder("FTAPConfig/Presets") then
		pcall(makefolder, "FTAPConfig/Presets")
	end

	local deletedPreset = "None"

	PresetDropdown = ConfigPresets_Section:AddDropdown({
		Name = "Select Preset",
		Default = "None",
		Options = getPresets(),
		Callback = function(p860)
			deletedPreset = p860
		end
	})
	RefreshPresets = function()
		PresetDropdown:Refresh(getPresets(), true)
	end
	SavePreset = function(p861)
		if p861 == "" or p861 == "None" then
			result:MakeNotification({
				Name = "Error",
				Content = "Invalid preset name",
				Time = 3
			})

			return
		end

		local t112 = {}

		for k, v3174 in pairs(result.Flags) do
			if v3174.Type == "MultiColorpicker" then
				if v3174.Pickers and #v3174.Pickers > 0 then
					local t113 = {}

					for i, picker in ipairs(v3174.Pickers) do
						t113[i] = {
							picker.Value.R,
							picker.Value.G,
							picker.Value.B
						}
					end

					t112[k] = t113
				end
			elseif v3174.Type == "Colorpicker" then
				if v3174.Pickers and v3174.Pickers[1] then
					t112[k] = {
						v3174.Pickers[1].Value.R,
						v3174.Pickers[1].Value.G,
						v3174.Pickers[1].Value.B
					}
				else
					t112[k] = {
						v3174.Value.R,
						v3174.Value.G,
						v3174.Value.B
					}
				end
			else
				t112[k] = v3174.Value
			end
		end

		if makefolder and isfolder and not isfolder("FTAPConfig/Presets") then
			pcall(makefolder, "FTAPConfig/Presets")
		end

		if writefile then
			pcall(writefile, "FTAPConfig/Presets/" .. p861 .. ".txt", HttpService:JSONEncode(t112))
			result:MakeNotification({
				Name = "Success",
				Content = "Saved preset: " .. p861,
				Time = 3
			})
			RefreshPresets()
		end
	end
	LoadPreset = function(p862)
		if p862 == "" or p862 == "None" then
			return
		end

		local v3178 = "FTAPConfig/Presets/" .. p862 .. ".txt"

		if isfile and isfile(v3178) then
			local ok, result2 = pcall(function()
				return HttpService:JSONDecode(readfile(v3178))
			end)

			if ok and type(result2) == "table" then
				for k, v in pairs(result2) do
					if result.Flags[k] then
						task.spawn(function()
							local v3183 = result.Flags[k]

							local function v3184(p863, p864)
								if type(p863) ~= "table" or type(p864) ~= "table" then
									return false
								end

								local n54 = 0
								local n55 = 0

								for k2, v2 in pairs(p863) do
									if p864[k2] ~= v2 then
										return false
									end

									n54 += 1
								end

								for _ in pairs(p864) do
									n55 += 1
								end

								return n54 == n55
							end

							if v3183.Type == "MultiColorpicker" then
								if type(v) == "table" and v.R == nil and type(v[1]) == "table" then
									for i, v2 in ipairs(v) do
										v3183:Set(i, Color3.new(v2[1], v2[2], v2[3]))
									end
								else
									v3183:Set(1, Color3.new(v[1], v[2], v[3]))
								end
							elseif v3183.Type == "Colorpicker" then
								local color3 = Color3.new(v[1], v[2], v[3])

								if v3183.Value ~= color3 then
									v3183:Set(color3)
								end
							elseif v3183.Type == "Bind" then
								local ok3, result3 = pcall(function()
									return Enum.KeyCode[v] or Enum.UserInputType[v]
								end)
								local v3195 = ok3 and result3 or v

								if v3183.Value ~= v3195 then
									v3183:Set(v3195)
								end
							elseif type(v) == "table" and type(v3183.Value) == "table" then
								if not v3184(v3183.Value, v) then
									table.clear(v3183.Value)
									v3183:Set(v)
								end
							elseif v3183.Value ~= v then
								v3183:Set(v)
							end
						end)
					end
				end

				result:MakeNotification({
					Name = "Success",
					Content = "Loaded preset: " .. p862,
					Time = 3
				})
			else
				result:MakeNotification({
					Name = "Error",
					Content = "Failed to load preset data",
					Time = 3
				})
			end
		else
			result:MakeNotification({
				Name = "Error",
				Content = "Preset file not found",
				Time = 3
			})
		end
	end
	ConfigPresets_Section:AddButton({
		Name = "Save Preset",
		Callback = makeTripleClickCallback("save", function()
			SavePreset(s5)
		end)
	})
	ConfigPresets_Section:AddButton({
		Name = "Load Selected Preset",
		Callback = makeTripleClickCallback("load", function()
			LoadPreset(deletedPreset)
		end)
	})
	ConfigPresets_Section:AddButton({
		Name = "Delete Selected Preset",
		Callback = makeTripleClickCallback("delete", function()
			if deletedPreset ~= "" and deletedPreset ~= "None" then
				local v3196 = "FTAPConfig/Presets/" .. deletedPreset .. ".txt"

				if isfile and isfile(v3196) then
					if delfile then
						pcall(delfile, v3196)
					end

					result:MakeNotification({
						Name = "Success",
						Content = "Deleted preset: " .. deletedPreset,
						Time = 3
					})
					deletedPreset = "None"
					RefreshPresets()
				end
			end
		end)
	})
end

AddPlayersToWhitelist_Section = Config_Tab:AddSection({
	Name = "Whitelist"
})

local v3197 = AddPlayersToWhitelist_Section:AddPlayersDropdown({
	Name = "Select Player",
	Default = "",
	SearchBar = true,
	MultipleSelection = true,
	Callback = function(p865)
		t12 = p865
	end
})

AddPlayersToWhitelist_Section:AddToggle({
	Name = "Auto WL Friends",
	Default = true,
	Callback = function(p866)
		_G.AutoWLFriends = p866
	end,
	Save = true,
	Flag = "autowlfriends_toggle"
})
MakeSearchBar(v3197, AddPlayersToWhitelist_Section)
GameSFX_Section = Config_Tab:AddSection({
	Name = "Game SFX"
})
GameShaders_Section = Config_Tab:AddSection({
	Name = "Shaders"
})
ScriptVFX_SFX_Section = Config_Tab:AddSection({
	Name = "Script VFX & SFX"
})
BlobmanConfig = Config_Tab:AddSection({
	Name = "Blobman Config"
})
PerspectiveConfig_Section = Config_Tab:AddSection({
	Name = "Perspective"
})
AnchorObjects_Section = Config_Tab:AddSection({
	Name = "Auto Re-build Anchored Objects/Compiled"
})
LoadBuildingConfig_Section = Config_Tab:AddSection({
	Name = "Auto Building Config"
})
AutoPanicMode_Section = Config_Tab:AddSection({
	Name = "Auto Panic Mode"
})
ColorObjects_Section = Config_Tab:AddSection({
	Name = "Anchor/Compile Objects Visual Settings"
})
AutoP_Section = Config_Tab:AddSection({
	Name = "Auto-Protection"
})
DefaultSky = Lighting.Sky

do
	ClearLighting = function()
		for _, child in pairs(Lighting:GetChildren()) do
			if not child or child.Name ~= "Sky" then
				child:Destroy()
			end
		end

		W.Terrain.Clouds.Enabled = true
	end
end

GameShaders_Section:AddDropdown({
	Name = "Sky",
	Default = "Default",
	Options = {
		"Default",
		"Anime",
		"Galaxy",
		"Chaos"
	},
	Callback = function(p867)
		if p867 == "Default" then
			ClearLighting()

			local CustomWater_DW = result.Flags.CustomWater_DW

			if CustomWater_DW then
				CustomWater_DW:Set("Default")
			end
		elseif p867 == "Anime" then
			ClearLighting()

			local Sky = Instance.new("Sky", Lighting)
			local Atmosphere = Instance.new("Atmosphere", Lighting)
			local ColorCorrectionEffect = Instance.new("ColorCorrectionEffect", Lighting)
			local SunRaysEffect = Instance.new("SunRaysEffect", Lighting)

			SunRaysEffect.Intensity = 0.2
			SunRaysEffect.Spread = 1

			local CustomWater_DW = result.Flags.CustomWater_DW

			if CustomWater_DW then
				CustomWater_DW:Set("Cartoon Style")
			end

			ColorCorrectionEffect.Brightness = 0
			ColorCorrectionEffect.Contrast = 0
			ColorCorrectionEffect.Saturation = 0.34
			ColorCorrectionEffect.TintColor = Color3.fromRGB(255, 255, 255)
			Atmosphere.Density = 0.3
			Atmosphere.Offset = 0
			Atmosphere.Glare = 0.5
			Atmosphere.Haze = 1
			Atmosphere.Color = Color3.fromRGB(180, 210, 255)
			Atmosphere.Decay = Color3.fromRGB(132, 173, 169)
			Sky.CelestialBodiesShown = true
			Sky.MoonAngularSize = 11
			Sky.MoonTextureId = "rbxasset://sky/moon.jpg"
			Sky.Name = "Sky Custom"
			Sky.SkyboxBk = "http://www.roblox.com/asset/?id=6778646360"
			Sky.SkyboxDn = "http://www.roblox.com/asset/?id=6778658683"
			Sky.SkyboxFt = "http://www.roblox.com/asset/?id=6778648039"
			Sky.SkyboxLf = "http://www.roblox.com/asset/?id=6778649136"
			Sky.SkyboxRt = "http://www.roblox.com/asset/?id=6778650519"
			Sky.SkyboxUp = "http://www.roblox.com/asset/?id=6778658364"
			Sky.StarCount = 3000
			Sky.SunAngularSize = 20
			Sky.SunTextureId = "rbxassetid://6679618752"
		elseif p867 == "Galaxy" then
			ClearLighting()
			W.Terrain.Clouds.Enabled = false

			local Sky = Instance.new("Sky", Lighting)
			local Atmosphere = Instance.new("Atmosphere", Lighting)
			local ColorCorrectionEffect = Instance.new("ColorCorrectionEffect", Lighting)
			local SunRaysEffect = Instance.new("SunRaysEffect", Lighting)
			local CustomWater_DW = result.Flags.CustomWater_DW

			if CustomWater_DW then
				CustomWater_DW:Set("Cartoon Style")
			end

			SunRaysEffect.Intensity = 0.2
			SunRaysEffect.Spread = 1
			SunRaysEffect.Enabled = false
			ColorCorrectionEffect.Brightness = 0
			ColorCorrectionEffect.Contrast = 0.25
			ColorCorrectionEffect.Saturation = 0.25
			ColorCorrectionEffect.TintColor = Color3.fromRGB(255, 255, 255)
			Atmosphere.Density = 0.25
			Atmosphere.Offset = 0.20000000298023224
			Atmosphere.Glare = 0.25
			Atmosphere.Haze = 0
			Atmosphere.Color = Color3.fromRGB(124, 85, 255)
			Atmosphere.Decay = Color3.fromRGB(39, 6, 47)
			Sky.CelestialBodiesShown = true
			Sky.MoonAngularSize = 11
			Sky.MoonTextureId = "rbxasset://sky/moon.jpg"
			Sky.Name = "Sky Custom"
			Sky.SkyboxBk = "rbxassetid://15983968922"
			Sky.SkyboxDn = "rbxassetid://15983966825"
			Sky.SkyboxFt = "rbxassetid://15983965025"
			Sky.SkyboxLf = "rbxassetid://15983967420"
			Sky.SkyboxRt = "rbxassetid://15983966246"
			Sky.SkyboxUp = "rbxassetid://15983964246"
			Sky.StarCount = 3000
			Sky.SunAngularSize = 20
			Sky.SunTextureId = ""
		elseif p867 == "Chaos" then
			ClearLighting()
			W.Terrain.Clouds.Enabled = false

			local Sky = Instance.new("Sky", Lighting)
			local Atmosphere = Instance.new("Atmosphere", Lighting)
			local ColorCorrectionEffect = Instance.new("ColorCorrectionEffect", Lighting)
			local SunRaysEffect = Instance.new("SunRaysEffect", Lighting)
			local CustomWater_DW = result.Flags.CustomWater_DW

			if CustomWater_DW then
				CustomWater_DW:Set("Lava")
			end

			SunRaysEffect.Intensity = 0.2
			SunRaysEffect.Spread = 1
			SunRaysEffect.Enabled = false
			ColorCorrectionEffect.Brightness = 0
			ColorCorrectionEffect.Contrast = 0.25
			ColorCorrectionEffect.Saturation = 0.25
			ColorCorrectionEffect.TintColor = Color3.fromRGB(255, 255, 255)
			Atmosphere.Density = 0.25
			Atmosphere.Offset = 0.30000001192092896
			Atmosphere.Glare = 0.25
			Atmosphere.Haze = 0
			Atmosphere.Color = Color3.fromRGB(85, 0, 0)
			Atmosphere.Decay = Color3.fromRGB(170, 0, 0)
			Sky.CelestialBodiesShown = true
			Sky.MoonAngularSize = 11
			Sky.MoonTextureId = "rbxasset://sky/moon.jpg"
			Sky.Name = "Sky Custom"
			Sky.SkyboxBk = "http://www.roblox.com/asset/?id=171560994"
			Sky.SkyboxDn = "http://www.roblox.com/asset/?id=171561019"
			Sky.SkyboxFt = "http://www.roblox.com/asset/?id=171560968"
			Sky.SkyboxLf = "http://www.roblox.com/asset/?id=171561065"
			Sky.SkyboxRt = "http://www.roblox.com/asset/?id=171561026"
			Sky.SkyboxUp = "http://www.roblox.com/asset/?id=171561009"
			Sky.StarCount = 3000
			Sky.SunAngularSize = 20
			Sky.SunTextureId = ""
		end
	end,
	Save = true,
	Flag = "CustomSky_DW"
})
RegularWLToggles = {
	"antigrabgucci_toggle",
	"antigrab_toggle",
	"lkickownerspam_toggle",
	"antikick_toggle",
	"antiinput_toggle",
	"lagserver_toggle",
	"invisible_toggle",
	"PacketSender_toggle",
	"lkickownerspamv3_toggle"
}
RegularWLTogglesVls = {}
AlrWLToggles = false
AutoPanicMode_Section:AddToggle({
	Name = "Auto Panic",
	Default = true,
	Callback = function(p868)
		AutoPanicEnable = p868

		if p868 then
			local u3216 = ping()

			task.spawn(function()
				while AutoPanicEnable do
					local v3217 = ping()

					if not AlrWLToggles then
						if v3217 < u3216 then
							u3216 = u3216 * 0.95 + v3217 * 0.05
						else
							u3216 = u3216 * 0.999 + v3217 * 0.001
						end
					end

					local v3218 = math.min(u3216 + 450, 800)
					local v3219 = v3218 - 50

					if AlrWLToggles or not (v3218 <= v3217) then
						if AlrWLToggles and v3217 <= v3219 then
							print("Ligado!")

							for _, v in pairs(RegularWLToggles) do
								local Flags = result and result.Flags
								local v3223 = Flags and Flags[v]

								if v3223 then
									task.spawn(function()
										v3223:Set2(RegularWLTogglesVls[v])
									end)
								end
							end

							AlrWLToggles = false
						end
					else
						print("Desligado!")
						result:MakeNotification({
							Name = "AUTO PANIC MODE",
							Content = "<font color=\"#ff5555\">Activated!</font> <font color=\"#ffffff\">Ping exceeded the safety threshold. All active toggles have been disabled.</font>",
							Image = "rbxassetid://119020096067894",
							Time = 6
						})

						for _, v in pairs(RegularWLToggles) do
							local Flags = result and result.Flags
							local v3227 = Flags and Flags[v]

							if v3227 then
								task.spawn(function()
									v3227:Set2(false)
								end)
							end
						end

						AlrWLToggles = true
					end

					task.wait(0.25)
				end
			end)
		end
	end,
	Save = false,
	Flag = "autopanic"
})
GameShaders_Section:AddDropdown({
	Name = "Custom Water",
	Default = "Default",
	Options = {
		"Default",
		"Cartoon Style",
		"Lava"
	},
	Callback = function(p869)
		local ObjectModel = W.Map.AlwaysHereTweenedObjects.Ocean.Object:FindFirstChild("ObjectModel")

		if not ObjectModel then
			return
		end

		if p869 == "Default" then
			for _, child in pairs(ObjectModel:GetChildren()) do
				if child.Name == "Ocean" then
					local Texture = child:FindFirstChild("Texture")

					if Texture then
						Texture:Destroy()
					end

					child.BrickColor = BrickColor.new("Electric blue")
					child.Material = Enum.Material.Foil
				end
			end
		elseif p869 == "Cartoon Style" then
			for _, child in pairs(ObjectModel:GetChildren()) do
				local Texture = child:FindFirstChild("Texture")

				if Texture then
					Texture:Destroy()
				end

				if child.Name == "Ocean" then
					local Texture2 = Instance.new("Texture", child)

					Texture2.Color3 = Color3.new(1, 1, 1)
					Texture2.Face = Enum.NormalId.Top
					Texture2.Name = "Texture"
					Texture2.StudsPerTileU = 9
					Texture2.StudsPerTileV = 9
					Texture2.Texture = "rbxassetid://6126332496"
					Texture2.Transparency = 0.89999997615814209

					local tweenInfo = TweenInfo.new(50, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, false, 0)
					local tween = TweenService2:Create(Texture2, tweenInfo, {
						OffsetStudsU = 100
					})
					local tween2 = TweenService2:Create(Texture2, tweenInfo, {
						OffsetStudsV = 100
					})

					tween:Play()
					tween2:Play()
					Texture2.Destroying:Connect(function()
						tween:Cancel()
						tween2:Cancel()
					end)
					child.BrickColor = BrickColor.new("Bright blue")
					child.Material = Enum.Material.Plastic
				end
			end
		elseif p869 == "Lava" then
			for _, child in pairs(ObjectModel:GetChildren()) do
				local Texture = child:FindFirstChild("Texture")
				local SurfaceLight = child:FindFirstChild("SurfaceLight")

				if SurfaceLight then
					SurfaceLight:Destroy()
				end

				if Texture then
					Texture:Destroy()
				end

				if child.Name == "Ocean" then
					local Texture2 = Instance.new("Texture")

					Texture2.Color3 = Color3.new(1, 1, 1)
					Texture2.Face = Enum.NormalId.Top
					Texture2.Name = "Texture"
					Texture2.Parent = child
					Texture2.StudsPerTileU = 12
					Texture2.StudsPerTileV = 12
					Texture2.Texture = "http://www.roblox.com/asset/?id=4539751690"
					Texture2.Transparency = 0.34999999403953552

					local tweenInfo = TweenInfo.new(50, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, false, 0)
					local tween = TweenService2:Create(Texture2, tweenInfo, {
						OffsetStudsU = 100
					})
					local tween2 = TweenService2:Create(Texture2, tweenInfo, {
						OffsetStudsV = 100
					})

					tween:Play()
					tween2:Play()
					Texture2.Destroying:Connect(function()
						tween:Cancel()
						tween2:Cancel()
					end)
					child.Color = Color3.fromRGB(213, 115, 61)
					child.Material = Enum.Material.Neon
				end
			end
		end
	end,
	Save = true,
	Flag = "CustomWater_DW"
})

do
	LoadBuildingConfig_Section:AddDropdown({
		Name = "Get Others Players Toys [Condition]",
		Default = "Everytime",
		Options = {
			"Never",
			"Everytime",
			"Toy Limit & No Toy"
		},
		Callback = function(p870)
			if p870 == "Never" then
				_G.ConditionBuilding = 0
			elseif p870 == "Everytime" then
				_G.ConditionBuilding = 1
			elseif p870 == "Toy Limit & No Toy" then
				_G.ConditionBuilding = 2
			end
		end,
		Save = true,
		Flag = "AutoBuildingConfig1"
	})
end

paragraph = LoadBuildingConfig_Section:AddParagraph("Explanation!", [[<font color="#34eb43">Never</font> - It'll never get other players' toys in any condition

<font color="#e8a43f">Everytime</font> - It will always grab other players' toys to complete the building, even if you have the toy available or not enough space.

<font color="#bd2626">Toy Limit & No Toy</font> - It will only get other players' toys if you don't have the necessary toy for the building or your toy bag is full.]])
BombsSound_Group = Instance.new("SoundGroup", SoundService)
BombsSound_Group.Name = "Explosives SX"
BGSound_Group = Instance.new("SoundGroup", SoundService)
BGSound_Group.Name = "Main"
ScreamsSound_Group = Instance.new("SoundGroup", SoundService)
ScreamsSound_Group.Name = "Screams"
MusicSound_Group = Instance.new("SoundGroup", SoundService)
MusicSound_Group.Name = "Music"

do
	GameSFX_Section:AddSlider({
		Name = "Ambient",
		Min = 0,
		Max = 10,
		Default = 0.5,
		Color = Color3.fromRGB(27, 74, 39),
		Increment = 0.1,
		ValueName = "Volume",
		Callback = function(p871)
			BGSound_Group.Volume = p871
		end
	})
end

do
	GameSFX_Section:AddSlider({
		Name = "Explosions",
		Min = 0,
		Max = 10,
		Default = 0.5,
		Color = Color3.fromRGB(130, 22, 42),
		Increment = 0.1,
		ValueName = "Volume",
		Callback = function(p872)
			BombsSound_Group.Volume = p872
		end
	})
end

GameSFX_Section:AddSlider({
	Name = "Screams",
	Min = 0,
	Max = 10,
	Default = 0.5,
	Color = Color3.fromRGB(118, 86, 148),
	Increment = 0.1,
	ValueName = "Volume",
	Callback = function(p873)
		ScreamsSound_Group.Volume = p873
	end
})

do
	local t114 = {}

	f = function(p874)
		if AAKAToys[p874.Name] then
			table.insert(t114, p874)
		end
	end
end

ConnectPlayersTF("AllMusicToys", "Add", function(p875)
	if p875.Name == "Boombox" then
		local Speaker
		local connection2

		for i = 0, 45 do
			if Speaker then
				break
			end

			Speaker = p875:FindFirstChild("Speaker")
			task.wait()
		end

		if not Speaker then
			return
		end

		local connection3 = Speaker.ChildAdded:Connect(function(child)
			if child:IsA("Sound") then
				child.SoundGroup = MusicSound_Group
			end
		end)
		local Sound = Speaker:FindFirstChildOfClass("Sound")

		if Sound then
			Sound.SoundGroup = MusicSound_Group
		end

		connection2 = p875:GetPropertyChangedSignal("Parent"):Connect(function()
			if not p875.Parent then
				connection3:Disconnect()
				connection2:Disconnect()
			end
		end)
	elseif p875.Name == "JukeboxBlue" or p875.Name == "JukeboxOrange" or p875.Name == "Jukebox" then
		local Speaker
		local connection2

		for i = 0, 45 do
			if Speaker then
				break
			end

			local SpeakerPart = p875:FindFirstChild("SpeakerPart")

			Speaker = SpeakerPart and SpeakerPart:FindFirstChild("Speaker")
			task.wait()
		end

		if not Speaker then
			return
		end

		local connection3 = Speaker.ChildAdded:Connect(function(child)
			if child:IsA("Sound") then
				child.SoundGroup = MusicSound_Group
			end
		end)
		local Sound = Speaker:FindFirstChildOfClass("Sound")

		if Sound then
			Sound.SoundGroup = MusicSound_Group
		end

		connection2 = p875:GetPropertyChangedSignal("Parent"):Connect(function()
			if not p875.Parent then
				connection3:Disconnect()
				connection2:Disconnect()
			end
		end)
	elseif p875.Name == "MidiMaker" then
		local connection2
		local connection3 = p875.DescendantAdded:Connect(function(descendant)
			if descendant:IsA("Sound") then
				descendant.SoundGroup = MusicSound_Group
			end
		end)

		for _, child in pairs(p875:GetChildren()) do
			for _, child2 in pairs(child:GetChildren()) do
				if child2:IsA("Sound") then
					child2.SoundGroup = MusicSound_Group
				end
			end
		end

		connection2 = p875:GetPropertyChangedSignal("Parent"):Connect(function()
			if not p875.Parent then
				connection3:Disconnect()
				connection2:Disconnect()
			end
		end)
	elseif p875.Name == "MusicKeyboard" then
		local connection2
		local connection3 = p875.DescendantAdded:Connect(function(descendant)
			if descendant:IsA("Sound") then
				descendant.SoundGroup = MusicSound_Group
			end
		end)

		for _, child in pairs(p875:GetChildren()) do
			for _, child2 in pairs(child:GetChildren()) do
				if child2:IsA("Sound") then
					child2.SoundGroup = MusicSound_Group
				end
			end
		end

		connection2 = p875:GetPropertyChangedSignal("Parent"):Connect(function()
			if not p875.Parent then
				connection3:Disconnect()
				connection2:Disconnect()
			end
		end)
	else
		local MusicPart
		local connection2

		for i = 0, 45 do
			if MusicPart then
				break
			end

			MusicPart = p875:FindFirstChild("MusicPart")
			task.wait()
		end

		if not MusicPart then
			return
		end

		local connection3 = MusicPart.ChildAdded:Connect(function(child)
			if child:IsA("Sound") then
				child.SoundGroup = MusicSound_Group
			end
		end)
		local Sound = MusicPart:FindFirstChildOfClass("Sound")

		if Sound then
			Sound.SoundGroup = MusicSound_Group
		end

		connection2 = p875:GetPropertyChangedSignal("Parent"):Connect(function()
			if not p875.Parent then
				connection3:Disconnect()
				connection2:Disconnect()
			end
		end)
	end
end, true)

do
	GameSFX_Section:AddSlider({
		Name = "Music Toys",
		Min = 0,
		Max = 10,
		Default = 0.5,
		Color = Color3.fromRGB(118, 86, 148),
		Increment = 0.1,
		ValueName = "Volume",
		Callback = function(p876)
			MusicSound_Group.Volume = p876
		end
	})
end

do
	AutoP_Section:AddDropdown({
		Name = "Self Defense",
		Default = "All",
		Options = {
			"All",
			"Kick",
			"Line-Lag",
			"None"
		},
		Callback = function(p877)
			if p877 == "All" then
				_G.AutoProtectionType = 3
			elseif p877 == "Kick" then
				_G.AutoProtectionType = 2
			elseif p877 == "Line-Lag" then
				_G.AutoProtectionType = 1
			else
				_G.AutoProtectionType = 0
			end
		end
	})
end

ChangeSBColor1 = nil
ChangeSBColor2 = nil
ColorsObjectConfig = {}
LoadColorsObjectCfg = function()
	local ok, result2 = pcall(function()
		local v3278 = result.Folder .. "/AGM_Colors.txt"

		if not isfile(v3278) then
			return
		end

		local data = HttpService:JSONDecode(readfile(v3278))

		local function v3280(p878)
			local match, v3282, v3283 = p878:match("([%d%.]+),%s*([%d%.]+),%s*([%d%.]+)")

			if match and v3282 and v3283 then
				return Color3.new(tonumber(match), tonumber(v3282), tonumber(v3283))
			end

			return Color3.new(1, 1, 1)
		end

		local t115 = {
			AnchoredColor3 = SB_AnchoredColor3,
			AnchoredColor3Surface = SB_AnchoredColor3Surface,
			GlueColor3 = SB_GlueColor3,
			GlueColor3Surface = SB_GlueColor3Surface,
			MainGlueColor3 = SB_MainGlueColor3,
			MainGlueColor3Surface = SB_MainGlueColor3Surface
		}

		for k, v in pairs(data) do
			local v3287 = t115[k]

			if v3287 and v3287:IsA("Color3Value") then
				v3287.Value = v3280(v)
			end
		end
	end)

	if not ok then
		warn("[LoadColorsObjectCfg] Erro ao carregar configuração:", result2)
	end
end
SaveColorsObjectCfg = function(p879)
	local t116 = {}

	for k, v in pairs(ColorsObjectConfig) do
		t116[k] = tostring(v)
	end

	writefile(result.Folder .. "/" .. p879 .. ".txt", tostring(HttpService:JSONEncode(t116)))
end
LoadColorsObjectCfg()

do
	pickcolor1dropdown = ColorObjects_Section:AddColorpicker({
		Name = "Pick Color Outline",
		Default = Color3.fromRGB(255, 0, 0),
		Callback = function(p880)
			if ChangeSBColor1 then
				ChangeSBColor1.Value = p880
				ColorsObjectConfig[ChangeSBColorName1] = p880
				SaveColorsObjectCfg("AGM_Colors")
			end
		end
	})
end

do
	pickcolor2dropdown = ColorObjects_Section:AddColorpicker({
		Name = "Pick Color Surface",
		Default = Color3.fromRGB(255, 0, 0),
		Callback = function(p881)
			if ChangeSBColor2 then
				ChangeSBColor2.Value = p881
				ColorsObjectConfig[ChangeSBColorName2] = p881
				SaveColorsObjectCfg("AGM_Colors")
			end
		end
	})
end

do
	ColorObjects_Section:AddDropdown({
		Name = "Change Color",
		Default = "Anchored",
		Options = {
			"Anchored",
			"Glue Object",
			"Main Glue"
		},
		Callback = function(p882)
			if p882 == "Anchored" then
				ChangeSBColor1 = SB_AnchoredColor3
				ChangeSBColor2 = SB_AnchoredColor3Surface
				ChangeSBColorName1 = "AnchoredColor3"
				ChangeSBColorName2 = "AnchoredColor3Surface"
			elseif p882 == "Glue Object" then
				ChangeSBColor1 = SB_GlueColor3
				ChangeSBColor2 = SB_GlueColor3Surface
				ChangeSBColorName1 = "GlueColor3"
				ChangeSBColorName2 = "GlueColor3Surface"
			elseif p882 == "Main Glue" then
				ChangeSBColor1 = SB_MainGlueColor3
				ChangeSBColor2 = SB_MainGlueColor3Surface
				ChangeSBColorName1 = "MainGlueColor3"
				ChangeSBColorName2 = "MainGlueColor3Surface"
			end

			pickcolor1dropdown:Set(ChangeSBColor1.Value)
			pickcolor2dropdown:Set(ChangeSBColor2.Value)
		end
	})
end

ColorObjects_Section:AddSlider({
	Name = "Outline Transparency",
	Min = 0,
	Max = 1,
	Default = 0,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 0.01,
	ValueName = "Value:",
	Callback = function(p883)
		SB_LineTransparencyValue.Value = p883
	end,
	Flag = "ColorObjectsO_T",
	Save = true
})

do
	ColorObjects_Section:AddSlider({
		Name = "Surface Transparency",
		Min = 0,
		Max = 1,
		Default = 0.56,
		Color = Color3.fromRGB(59, 122, 179),
		Increment = 0.01,
		ValueName = "Value:",
		Callback = function(p884)
			SB_SurfaceTransparencyValue.Value = p884
		end,
		Flag = "ColorObjectsS_T",
		Save = true
	})
end

VFX_Characters = {
	"Itadori",
	"Mahito",
	"Sukuna"
}
ScriptVFX_SFX_Section:AddDropdown({
	Name = "Character",
	Default = VFX_Characters[math.random(1, #VFX_Characters)],
	Options = VFX_Characters,
	Callback = function(p885)
		EffectsChar = p885
	end,
	Save = true,
	Flag = "vfx_char"
})
ScriptVFX_SFX_Section:AddToggle({
	Name = "Super Strength VFX (Toggle)",
	Default = true,
	Callback = function(p886)
		SuperStrengthEffectV2 = p886
	end,
	Save = true,
	Flag = "ssb_vfx_sfx"
})

do
	AnchorObjects_Section:AddToggle({
		Name = "Auto Ownership",
		Default = false,
		Callback = function(p887)
			_G.AutoOwnershipAnchor = p887

			if p887 then
				while _G.AutoOwnershipAnchor do
					autosetownership()
					task.wait(0.1)
				end
			end
		end,
		Save = true,
		Flag = "autoownershipanchorconfig_toggle"
	})
end

do
	AnchorObjects_Section:AddDropdown({
		Name = "Ownership Behavior",
		Default = "Teleport",
		Options = {
			"Teleport",
			"Aura"
		},
		Callback = function(p888)
			_G.OwnershipModeAnchorBehavior = p888
		end,
		Save = true,
		Flag = "autoownershipanchormode"
	})
end

AnchorObjects_Section:AddDropdown({
	Name = "Ownership Teleport (Target)",
	Default = "Players and Objects",
	Options = {
		"Players",
		"Objects",
		"Players and Objects"
	},
	Callback = function(p889)
		if p889 == "Players" then
			_G.OwnershipModeTarget = 1
		elseif p889 == "Objects" then
			_G.OwnershipModeTarget = 2
		elseif p889 == "Players and Objects" then
			_G.OwnershipModeTarget = 3
		end
	end
})

do
	AnchorObjects_Section:AddToggle({
		Name = "Punish Grab Spam",
		Default = false,
		Callback = function(p890)
			_G.AnchorPunishGrabSpam = p890
		end,
		Save = true,
		Flag = "anchorpunishgrabspam_toggle"
	})
end

anchorpunishdropdown = nil

do
	anchorpunishdropdown = AnchorObjects_Section:AddDropdown({
		Name = "Punishment (Counter Mode)",
		Default = "Repulsion",
		Options = {
			"Repulsion",
			"Freeze",
			"Death",
			"Kick"
		},
		Callback = function(p891)
			if p891 == "Kick" and GetKey() ~= "Xana" then
				anchorpunishdropdown:Set("Repulsion")
				-- notify disabled

				return
			end

			_G.AnchorPunishMode = p891
		end
	})
end

AnchorObjects_Section:AddSlider({
	Name = "Grabs to Punish (3s)",
	Min = 3,
	Max = 15,
	Default = 5,
	Increment = 1,
	Callback = function(p892)
		_G.AnchorPunishGrabs = p892
	end
})

do
	BlobmanConfig:AddToggle({
		Name = "Heavy Blobman",
		Default = false,
		Callback = function(p893)
			_G.RockBlobman = p893
		end,
		Save = true,
		Flag = "heavyblobmanconfig_toggle"
	})
end

AutoSeatlessBlobmanId = 0

do
	BlobmanConfig:AddToggle({
		Name = "Auto Seatless Blobman",
		Default = false,
		Callback = function(p894)
			_G.AutoSeatlessBlobman = p894
			AutoSeatlessBlobmanId += 1

			local AutoSeatlessBlobmanId_ = AutoSeatlessBlobmanId

			if p894 then
				task.spawn(function()
					while _G.AutoSeatlessBlobman and AutoSeatlessBlobmanId == AutoSeatlessBlobmanId_ do
						GetBlobmanV2()
						task.wait(0.1)
					end
				end)
			end
		end,
		Save = true,
		Flag = "autoseatlessblobman_toggle"
	})
end

_G.PerspectiveEffectsAllow = true

do
	PerspectiveConfig_Section:AddToggle({
		Name = "Teleport to Camera Position",
		Default = true,
		Callback = function(p895)
			_G.PerspectiveTeleportToCameraPos = p895
		end,
		Save = true,
		Flag = "perspectiveconfig1_toggle"
	})
end

PerspectiveConfig_Section:AddDropdown({
	Name = "Camera Effect",
	Default = "Default",
	Options = {
		"Default",
		"Old TV"
	},
	Callback = function(p896)
		if p896 == "Default" then
			ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ImageLabel.BorderSizePixel = 0
			ImageLabel.Size = UDim2.new(1, 0, 1, 0)
			ImageLabel.Image = "rbxassetid://5945121255"
			ImageLabel.ImageColor3 = Color3.new(0, 0, 0)
			imagestransparencyeffect = 0.45
			saturationvalue = -0.6
			perspectiveON_effect1 = Tween:Create(ImageLabel, t1p, {
				ImageTransparency = imagestransparencyeffect
			})
			perspectiveON_effect2 = Tween:Create(PerspectiveSaturation, t1p, {
				Saturation = saturationvalue
			})
		elseif p896 == "Old TV" then
			ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ImageLabel.BorderSizePixel = 0
			ImageLabel.Size = UDim2.new(1, 0, 1, 0)
			ImageLabel.Image = "rbxassetid://8586979842"
			ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
			imagestransparencyeffect = 0.7
			saturationvalue = -0.3
			perspectiveON_effect1 = Tween:Create(ImageLabel, t1p, {
				ImageTransparency = imagestransparencyeffect
			})
			perspectiveON_effect2 = Tween:Create(PerspectiveSaturation, t1p, {
				Saturation = saturationvalue
			})
		end
	end,
	Save = true,
	Flag = "perspectivevisualeffect_dropdown"
})
FigureGrabModule = {}
FigureStartSec = FigurePlayer_Tab:AddSection({
	Name = "Start Figure"
})
FigurePresetsSec = FigurePlayer_Tab:AddSection({
	Name = "Presets"
})
FigureSaveSec = FigurePlayer_Tab:AddSection({
	Name = "Save Figure"
})
FigureEditorSec = FigurePlayer_Tab:AddSection({
	Name = "Editor Mode"
})
FigureConfigSec = FigurePlayer_Tab:AddSection({
	Name = "Configuration"
})

do
	task.spawn(function()
		local ok, result2 = pcall(function()
			return loadstring(game:HttpGet("https://pastefy.app/Lav3qWTM/raw"))()
		end)

		if not ok then
			warn("Falha ao carregar presets!")

			return
		end

		PresetNames = {}

		for k in pairs(result2) do
			table.insert(PresetNames, k)
		end

		table.sort(PresetNames)
		FigurePresetsSec:AddDropdown({
			Name = "Figure Presets",
			Default = "Default",
			Options = PresetNames,
			Save = false,
			Flag = "FigurePreset",
			Callback = function(p897)
				local v3295 = result2[p897]

				if not v3295 then
					return
				end

				local t117 = {}

				for k, v in pairs(v3295) do
					if FigureGrabConfigParts[k] then
						FigureGrabConfigParts[k].Position = table.clone(v.Position)
						FigureGrabConfigParts[k].Rotation = table.clone(v.Rotation)
						FigureGrabConfigParts[k].Mimic = v.Mimic

						if v.Mimic then
							table.insert(t117, k)
						end
					end
				end

				local copyyouranimation_dd = result.Flags.copyyouranimation_dd

				if copyyouranimation_dd then
					SetMultiDropdown(copyyouranimation_dd, t117)
					table.clear(t117)
				end
			end
		})
	end)
end

FigureStartSec:AddPlayersDropdown({
	Name = "Select Target",
	Default = "",
	SearchBar = true,
	MultipleSelection = false,
	Callback = function(p898)
		figureTarget = p898
	end
})
FigureGrabAllowedParts = {
	Head = true,
	Torso = true,
	["Left Arm"] = true,
	["Right Arm"] = true,
	["Left Leg"] = true,
	["Right Leg"] = true
}
FigureGrabModule.Configuration = {
	HoldPosition = {
		X = 0,
		Y = 0,
		Z = -5
	},
	HoldRotation = {
		X = 0,
		Y = 0,
		Z = 0
	},
	LeftArmPosition = {
		X = -1.5,
		Y = 0,
		Z = -0
	},
	LeftArmRotation = {
		X = 0,
		Y = 0,
		Z = 0
	},
	RightArmPosition = {
		X = 1.5,
		Y = 0,
		Z = 0
	},
	RightArmRotation = {
		X = 0,
		Y = 0,
		Z = 0
	},
	LeftLegPosition = {
		X = -0.5,
		Y = -2,
		Z = 0
	},
	LeftLegRotation = {
		X = 0,
		Y = 0,
		Z = 0
	},
	RightLegPosition = {
		X = 0.5,
		Y = -2,
		Z = 0
	},
	RightLegRotation = {
		X = 0,
		Y = 0,
		Z = 0
	},
	HeadPosition = {
		X = 0,
		Y = 1.5,
		Z = 0
	},
	HeadRotation = {
		X = 0,
		Y = 0,
		Z = 0
	},
	Head_A = false,
	LeftArm_A = false,
	RightArm_A = false,
	LeftLeg_A = false,
	RightLeg_A = false,
	Torso_A = false
}
FigureGrabConfigParts = {
	Head = {
		Rotation = FigureGrabModule.Configuration.HeadRotation,
		Position = FigureGrabModule.Configuration.HeadPosition,
		Mimic = false
	},
	Torso = {
		Rotation = FigureGrabModule.Configuration.HoldRotation,
		Position = FigureGrabModule.Configuration.HoldPosition,
		Mimic = false
	},
	["Left Arm"] = {
		Rotation = FigureGrabModule.Configuration.LeftArmRotation,
		Position = FigureGrabModule.Configuration.LeftArmPosition,
		Mimic = false
	},
	["Right Arm"] = {
		Rotation = FigureGrabModule.Configuration.RightArmRotation,
		Position = FigureGrabModule.Configuration.RightArmPosition,
		Mimic = false
	},
	["Left Leg"] = {
		Rotation = FigureGrabModule.Configuration.LeftLegRotation,
		Position = FigureGrabModule.Configuration.LeftLegPosition,
		Mimic = false
	},
	["Right Leg"] = {
		Rotation = FigureGrabModule.Configuration.RightLegRotation,
		Position = FigureGrabModule.Configuration.RightLegPosition,
		Mimic = false
	}
}
FigurePartSC = Instance.new("SelectionBox")
FigurePartSC.Name = "ObjectState"
FigurePartSC.LineThickness = 0.015
FigurePartSC.SurfaceTransparency = 1
FigurePartSC.Transparency = 0
FigurePartSC.Color3 = Color3.fromRGB(48, 172, 172)
FigurePartSC.Visible = true
FigurePartSC.Adornee = nil
FigurePartSC.Parent = nil
FigureArcHandles = Instance.new("ArcHandles", game:GetService("CoreGui"))
FigureMoveHandles = Instance.new("Handles", game:GetService("CoreGui"))
FigureMoveHandles.Style = Enum.HandlesStyle.Resize

for _, v in pairs({
	FigureMoveHandles,
	FigureArcHandles
}) do
	v.MouseButton1Down:Connect(function()
		IsUsingHandles = true
	end)
	v.MouseButton1Up:Connect(function()
		IsUsingHandles = false
	end)
end

FigureSelectedPart = "Head"
UserInputService2.InputBegan:Connect(function(input)
	if IsUsingHandles then
		return
	end

	if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
		return
	end

	local Target = mouse.Target

	if not Target then
		return
	end

	if FigureGrabAllowedParts[Target.Name] then
		FigureSelectedPart = Target.Name

		if result.Flags.bodyfigurepart then
			result.Flags.bodyfigurepart:Set(FigureSelectedPart)
		end
	end
end)

do
	UserInputService2.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return
		end

		if input.KeyCode == Enum.KeyCode.T then
			local FigureMoveHandlesT = result.Flags.FigureMoveHandlesT

			if FigureMoveHandlesT then
				FigureMoveHandlesT:Set(not FigureMoveHandlesT.Value)
			end
		end
	end)
end

LimbMotorMap = {
	Head = "Neck",
	["Right Arm"] = "Right Shoulder",
	["Left Arm"] = "Left Shoulder",
	["Right Leg"] = "Right Hip",
	["Left Leg"] = "Left Hip"
}

do
	FigureGrabModule.GetAnimationMotor = function(p899)
		if not _G.UniverChar then
			return
		end

		local Torso = _G.UniverChar:FindFirstChild("Torso")

		if not Torso then
			return
		end

		local v3305 = LimbMotorMap[p899]

		if v3305 then
			return Torso:FindFirstChild(v3305)
		end
	end
end

do
	FigureGrabModule.GetAnimationPose = function(p900)
		local v3306 = FigureGrabModule.GetAnimationMotor(p900)

		if not v3306 then
			return
		end

		local v3307 = FigureGrabModule.BindPose[p900]

		if v3307 then
			local v3308 = v3306.C0 * v3306.Transform * v3306.C1:Inverse()

			return v3307:Inverse() * v3308
		end
	end
end

FigureGrabModule.BindPose = {}

do
	FigureGrabModule.CaptureBindPose = function()
		for k in pairs(FigureGrabAllowedParts) do
			if k ~= "Torso" then
				local v3310 = FigureGrabModule.GetAnimationMotor(k)

				if v3310 then
					FigureGrabModule.BindPose[k] = v3310.C0 * v3310.C1:Inverse()
				end
			end
		end
	end
end

do
	local cFrame = CFrame.identity

	FigureArcHandles.MouseButton1Down:Connect(function()
		local Rotation = FigureGrabConfigParts[FigureSelectedPart].Rotation

		cFrame = CFrame.Angles(math.rad(Rotation.X), math.rad(Rotation.Y), math.rad(Rotation.Z))
		DragStartRotation = {
			X = Rotation.X,
			Y = Rotation.Y,
			Z = Rotation.Z
		}
	end)
	FigureArcHandles.MouseDrag:Connect(function(p901, p902)
		if not FigureSelectedPart or not DragStartRotation then
			return
		end

		local Rotation = FigureGrabConfigParts[FigureSelectedPart].Rotation
		local cFrame2 = CFrame.identity

		if p901 == Enum.Axis.X then
			cFrame2 = CFrame.fromAxisAngle(Vector3.xAxis, p902)
		elseif p901 == Enum.Axis.Y then
			cFrame2 = CFrame.fromAxisAngle(Vector3.yAxis, p902)
		elseif p901 == Enum.Axis.Z then
			cFrame2 = CFrame.fromAxisAngle(Vector3.zAxis, p902)
		end

		local v3315, v3316, v3317 = (cFrame * cFrame2):ToEulerAnglesXYZ()

		Rotation.X = math.deg(v3315)
		Rotation.Y = math.deg(v3316)
		Rotation.Z = math.deg(v3317)
	end)
end

figureinitpos = nil

do
	FigureMoveHandles.MouseButton1Down:Connect(function()
		if not FigureSelectedPart or not FigureGrabConfigParts[FigureSelectedPart] then
			return
		end

		local Position = FigureGrabConfigParts[FigureSelectedPart].Position

		figureinitpos = {
			X = Position.X,
			Y = Position.Y,
			Z = Position.Z
		}
	end)
end

faceAxis = {
	[Enum.NormalId.Right] = Vector3.new(1, 0, 0),
	[Enum.NormalId.Left] = Vector3.new(-1, 0, 0),
	[Enum.NormalId.Top] = Vector3.new(0, 1, 0),
	[Enum.NormalId.Bottom] = Vector3.new(0, -1, 0),
	[Enum.NormalId.Back] = Vector3.new(0, 0, 1),
	[Enum.NormalId.Front] = Vector3.new(0, 0, -1)
}

do
	FigureMoveHandles.MouseDrag:Connect(function(p903, p904)
		if not FigureSelectedPart or not FigureGrabConfigParts[FigureSelectedPart] or not figureinitpos then
			return
		end

		local v3319 = faceAxis[p903]

		if not v3319 then
			return
		end

		local Rotation = FigureGrabConfigParts[FigureSelectedPart].Rotation
		local v3321 = CFrame.fromEulerAnglesXYZ(math.rad(Rotation.X), math.rad(Rotation.Y), math.rad(Rotation.Z)):VectorToWorldSpace(v3319) * (p904 * 0.8)

		FigureGrabConfigParts[FigureSelectedPart].Position = {
			X = figureinitpos.X + v3321.X,
			Y = figureinitpos.Y + v3321.Y,
			Z = figureinitpos.Z + v3321.Z
		}
	end)
end

do
	FigureEditorSec:AddToggle({
		Name = "Position (T)",
		Default = false,
		Callback = function(p905)
			FigureMoveHandles.Visible = p905

			if p905 then
				FigureArcHandles.Visible = false
			else
				FigureArcHandles.Visible = true
			end
		end,
		Flag = "FigureMoveHandlesT",
		Save = false
	})
end

do
	RefreshFigureDropdown = function()
		local t118 = {}

		for _, v in ipairs(listfiles(FigureFolderName)) do
			local match = v:match("([^\\/]+)%.json$")

			if match then
				table.insert(t118, match)
			end
		end

		table.sort(t118)

		local savedfigures = result.Flags.savedfigures

		if savedfigures then
			savedfigures:Refresh(t118, true)
		end
	end
end

FigureGrabModule.RootBind = nil
FigureGrabModule.CaptureRootBind = function()
	local HumanoidRootPart = _G.UniverChar:FindFirstChild("HumanoidRootPart")

	if HumanoidRootPart then
		FigureGrabModule.RootBind = HumanoidRootPart.CFrame
	end
end

do
	FigureGrabModule.GetRootPose = function()
		local HumanoidRootPart = _G.UniverChar:FindFirstChild("HumanoidRootPart")

		if HumanoidRootPart and FigureGrabModule.RootBind then
			return FigureGrabModule.RootBind:Inverse() * HumanoidRootPart.CFrame
		end

		return CFrame.identity
	end
end

FigureStartSec:AddToggle({
	Name = "Start Figure",
	Default = false,
	Callback = function(p906)
		_G.FigureGrabStart = p906

		if p906 then
			if FigureGrabStartConnection then
				FigureGrabStartConnection:Disconnect()
				FigureGrabStartConnection = nil
			end

			local u3329 = false

			FigureGrabStartConnection = R.Heartbeat:Connect(function()
				if not figureTarget or figureTarget == "" then
					return
				end

				local v3330 = PS:FindFirstChild(figureTarget)
				local Character = v3330 and v3330.Character

				if not _G.FigureEditMode then
					FigureMoveHandles.Adornee = nil
					FigureArcHandles.Adornee = nil
					FigurePartSC.Adornee = nil
					FigurePartSC.Parent = nil
				end

				if v3330 and Character then
					local Torso = Character:FindFirstChild("Torso")
					local Humanoid = Character:FindFirstChildOfClass("Humanoid")

					if not Humanoid or not Torso then
						return
					end

					local Ragdolled = Humanoid:FindFirstChild("Ragdolled")
					local Value = Ragdolled and Ragdolled.Value
					local v3336 = CheckNetworkOwnerShipOnPlayer(v3330) and IsNetworkOwner(Torso)

					if not v3336 then
						SNOWshipOnce(Torso)
					end

					if Value and v3336 then
						local HumanoidRootPart = _G.UniverChar:FindFirstChild("HumanoidRootPart")
						local Torso2 = _G.UniverChar:FindFirstChild("Torso")
						local v3339 = _G.UniversalPlayerRoot.CFrame * CFrame.new(FigureGrabModule.Configuration.HoldPosition.X, FigureGrabModule.Configuration.HoldPosition.Y, FigureGrabModule.Configuration.HoldPosition.Z)
						local Position = FigureGrabConfigParts.Torso.Position
						local Rotation = FigureGrabConfigParts.Torso.Rotation
						local cFrame = CFrame.identity

						if FigureGrabConfigParts.Torso.Mimic and HumanoidRootPart and Torso2 then
							local v3343 = HumanoidRootPart.CFrame:ToObjectSpace(Torso2.CFrame)

							cFrame = v3343 - v3343.Position
						end

						Torso.CFrame = v3339 * CFrame.new(Position.X, Position.Y, Position.Z) * cFrame * CFrame.fromEulerAnglesXYZ(math.rad(Rotation.X), math.rad(Rotation.Y), math.rad(Rotation.Z))
						Torso.CanCollide = false
						Torso.Massless = true
						Torso.Velocity = Vector3.new(0, 0, 0)
						Torso.RotVelocity = Vector3.new(0, 0, 0)
						Torso.CollisionGroup = "PlotPlayers"
						UserInputService2.MouseIconEnabled = true

						if not FigureGrabModule.AnimationCaptured then
							FigureGrabModule.CaptureBindPose()
							FigureGrabModule.AnimationCaptured = true
						end

						if CABM_Module then
							CABM_Module.SetLookBlocked(v3330, true)
						end

						if Character.Parent ~= W.PlotItems.PlayersInPlots and Character.Parent ~= nil then
							wait(0)
							Character.Parent = W.PlotItems.PlayersInPlots
						end

						if not FigureGrabModule.LastTarget or FigureGrabModule.LastTarget ~= Character then
							FigureGrabModule.LastTarget = Character
						end

						for k in pairs(FigureGrabAllowedParts) do
							local v3345 = Character:FindFirstChild(k)

							if v3345 and k == FigureSelectedPart and _G.FigureEditMode then
								if FigureArcHandles.Adornee ~= v3345 then
									FigureArcHandles.Adornee = v3345
								end

								if FigureMoveHandles.Adornee ~= v3345 then
									FigureMoveHandles.Adornee = v3345
								end

								if FigurePartSC.Adornee ~= v3345 then
									FigurePartSC.Adornee = v3345
									FigurePartSC.Parent = v3345
								end
							end

							if v3345 and k ~= "Torso" then
								local Position2 = FigureGrabConfigParts[k].Position
								local Rotation2 = FigureGrabConfigParts[k].Rotation
								local Mimic = FigureGrabConfigParts[k].Mimic
								local v3349 = Torso.CFrame * CFrame.new(Position2.X, Position2.Y, Position2.Z)
								local cFrame2 = CFrame.fromEulerAnglesXYZ(math.rad(Rotation2.X), math.rad(Rotation2.Y), math.rad(Rotation2.Z))

								if Mimic then
									v3345.CFrame = v3349 * FigureGrabModule.GetAnimationPose(k) * cFrame2
								else
									v3345.CFrame = v3349 * cFrame2
								end

								if v3345:IsA("BasePart") then
									v3345.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
									v3345.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
								end

								v3345.CanCollide = false
								v3345.Massless = true
								v3345.CollisionGroup = "PlotPlayers"

								local RagdollLimbPart = v3345:FindFirstChild("RagdollLimbPart")

								if RagdollLimbPart then
									RagdollLimbPart.CanCollide = false
								end
							end
						end
					elseif v3336 then
						if not u3329 then
							u3329 = true
							task.spawn(function()
								for i = 0, 1, 0.3 do
									ColissionPallet(Torso.Position:Lerp(Torso.Position + Vector3.new(0, 2, 0), i))
									task.wait(0.01)
								end

								u3329 = false
							end)
						end
					elseif Getdistancefromcharacter(Torso.Position) > 30 and not v3330.InPlot.Value then
						TeleportPlayer(CFrame.new(predictPos(Torso)) * CFrame.new(0, 10, 0), 5, true, 0.25)
					end
				end
			end)
		else
			if FigureGrabStartConnection then
				FigureGrabStartConnection:Disconnect()
				FigureGrabStartConnection = nil
			end

			if FigureGrabModule.LastTarget then
				FigureGrabModule.LastTarget.Parent = workspace

				for k in pairs(FigureGrabAllowedParts) do
					local v3354 = FigureGrabModule.LastTarget:FindFirstChild(k)

					if v3354 then
						v3354.CanCollide = true
					end
				end
			end

			if CABM_Module then
				CABM_Module.ClearAllBlocks()
			end

			FigureGrabModule.LastTarget = nil
			FigureArcHandles.Adornee = nil
			FigureMoveHandles.Adornee = nil
		end
	end,
	Save = true,
	Flag = ""
})
FigureSaveSec:AddTextbox({
	Name = "File Name",
	Default = "Name",
	TextDisappear = true,
	Callback = function(p907)
		_G.FigureSaveName = p907
	end
})
FigureFolderName = "BlizT_Figures"

if not isfolder(FigureFolderName) then
	makefolder(FigureFolderName)
end

do
	FigureSaveSec:AddDropdown({
		Name = "Saved Figures",
		Default = "",
		Options = {},
		Callback = function(p908)
			_G.SelectedFigure = p908

			local v3355 = FigureFolderName .. "/" .. p908 .. ".json"

			if not isfile(v3355) then
				return
			end

			local data = game:GetService("HttpService"):JSONDecode(readfile(v3355))
			local t119 = {}

			for k, v in pairs(data) do
				if FigureGrabConfigParts[k] then
					FigureGrabConfigParts[k].Position = v.Position
					FigureGrabConfigParts[k].Rotation = v.Rotation
					FigureGrabConfigParts[k].Mimic = v.Mimic

					if v.Mimic then
						table.insert(t119, k)
					end
				end
			end

			local copyyouranimation_dd = result.Flags.copyyouranimation_dd

			if copyyouranimation_dd then
				SetMultiDropdown(copyyouranimation_dd, t119)
				table.clear(t119)
			end
		end,
		Save = false,
		Flag = "savedfigures"
	})
end

RefreshFigureDropdown()

do
	FigureSaveSec:AddButton({
		Name = "Save Figure Config",
		Callback = function()
			if not _G.FigureSaveName or _G.FigureSaveName == "" then
				return
			end

			local HttpService_2 = game:GetService("HttpService")
			local t120 = {}

			for k, v in pairs(FigureGrabConfigParts) do
				t120[k] = {
					Position = table.clone(v.Position),
					Rotation = table.clone(v.Rotation),
					Mimic = v.Mimic
				}
			end

			writefile(FigureFolderName .. "/" .. _G.FigureSaveName .. ".json", HttpService_2:JSONEncode(t120))
			RefreshFigureDropdown()
		end
	})
end

FigureSaveSec:AddButton({
	Name = "Delete Figure Config",
	Callback = function()
		if not _G.SelectedFigure then
			return
		end

		local v3365 = FigureFolderName .. "/" .. _G.SelectedFigure .. ".json"

		if isfile(v3365) then
			delfile(v3365)
		end

		RefreshFigureDropdown()
	end
})
FigureSaveSec:AddButton({
	Name = "Reload",
	Callback = function()
		RefreshFigureDropdown()
	end
})
FigureEditorSec:AddToggle({
	Name = "Edit Mode",
	Default = false,
	Callback = function(p909)
		_G.FigureEditMode = p909
	end,
	Save = false,
	Flag = ""
})
FigureConfigSec:AddDropdown({
	Name = "Body Part",
	Default = "Head",
	Options = {
		"Head",
		"Left Arm",
		"Right Arm",
		"Left Leg",
		"Right Leg",
		"Torso"
	},
	Callback = function(p910)
		FigureSelectedPart = p910

		if UpdateFigureSliders then
			UpdateFigureSliders()
		end
	end,
	Save = false,
	Flag = "bodyfigurepart"
})

do
	FigureConfigSec:AddDropdown({
		Name = "Copy Your Animation",
		Default = "Head",
		Options = {
			"Head",
			"Left Arm",
			"Right Arm",
			"Left Leg",
			"Right Leg",
			"Torso"
		},
		MultipleSelection = true,
		Callback = function(p911)
			for k in pairs(FigureGrabConfigParts) do
				if table.find(p911, k) then
					FigureGrabConfigParts[k].Mimic = true
				else
					FigureGrabConfigParts[k].Mimic = false
				end
			end
		end,
		Save = false,
		Flag = "copyyouranimation_dd"
	})
end

FigureAxisColors = {
	X = Color3.fromRGB(255, 80, 80),
	Y = Color3.fromRGB(80, 255, 80),
	Z = Color3.fromRGB(80, 170, 255)
}
FigureConfigSliders = {}

for _, v in ipairs({
	"Rotation",
	"Position"
}) do
	FigureConfigSliders[v] = {}
	FigureConfigSec:AddLabel("📍 " .. v)

	for _, v2 in ipairs({
		"X",
		"Y",
		"Z"
	}) do
		local v3371 = v == "Position" and 50 or v == "Rotation" and 360
		local ok, result2 = pcall(function()
			return FigureGrabConfigParts[FigureSelectedPart][v][v2]
		end)

		if not ok then
			error("Missing table!")
		end

		FigureConfigSliders[v][v2] = FigureConfigSec:AddSlider({
			Name = v .. " " .. v2,
			Min = -v3371,
			Max = v3371,
			Default = result2 or 0,
			Color = FigureAxisColors[v2],
			Increment = 0.1,
			ValueName = "Units",
			Callback = function(p912)
				if not FigureSelectedPart then
					return
				end

				local v3374 = FigureGrabConfigParts[FigureSelectedPart]

				if not v3374 then
					return
				end

				v3374[v][v2] = p912
			end
		})
	end
end

UpdateFigureSliders = function()
	if not FigureSelectedPart then
		return
	end

	local v3375 = FigureGrabConfigParts[FigureSelectedPart]

	if not v3375 then
		return
	end

	for k, v in pairs(FigureConfigSliders) do
		for k2, v2 in pairs(v) do
			v2:Set(v3375[k][k2])
		end
	end

	if copyanimationfigure_dd then
		copyanimationfigure_dd:Set(v3375.Mimic)
	end
end
AddPlayerLK_Section = LoopPlayer_Tab:AddSection({
	Name = "Loop Players"
})
FunctionsLK_Section = LoopPlayer_Tab:AddSection({
	Name = "Loop Death"
})
FunctionsLA_Section = LoopPlayer_Tab:AddSection({
	Name = "Loop Annoy"
})
FunctionsBN_Section = LoopPlayer_Tab:AddSection({
	Name = "Loop Bang"
})
FunctionsLoopKick_Section = LoopPlayer_Tab:AddSection({
	Name = "Loop Kick (Blobman)"
})
FunctionsLoopMisc_Section = LoopPlayer_Tab:AddSection({
	Name = "Loop Misc"
})
FunctionsLoopKickOwnership_Section = LoopPlayer_Tab:AddSection({
	Name = "Loop Kick (Ownership)"
})
FunctionsLoopKickSpamOwnership_Section = LoopPlayer_Tab:AddSection({
	Name = "Loop Kick V2 (Ownership)"
})
FunctionsLoopKickSpamOwnershipV3_Section = LoopPlayer_Tab:AddSection({
	Name = "Loop Kick V3 (Blobman)"
})
FunctionsDPLoopMisc_Section = LoopPlayer_Tab:AddSection({
	Name = "Deprecated Loops"
})
shurikens_ownership = {}

do
	PutShuriken = function(p913, p914, p915, p916, p917)
		p917 = p917 or 1

		local cFrame = typeof(p914) == "CFrame" and p914 or CFrame.new(0, 0, 0)
		local v3381 = p915 and workspace[LocalPlayer4.Name .. "SpawnedInToys"] or u112

		if typeof(p916) ~= "string" then
			p916 = "NinjaShuriken"
		end

		local n56 = 0
		local t121 = {}
		local t122 = {}

		for _, child in pairs(v3381:GetChildren()) do
			if child.Name == p916 and child:FindFirstChild("SoundPart") and not child:GetAttribute("Connected2") then
				local SoundPart = child.SoundPart
				local v3388 = CheckIfKunaiIsOnPlayer(child)
				local v3389 = Getdistancefromcharacter(SoundPart.Position)

				if CKIsHolding(child) == p913 then
					n56 += 1
					table.insert(t122, child)
				elseif v3389 < 30 and v3388 == "No use!" then
					table.insert(t121, child)
				elseif v3389 > 30 and not CheckNetworkOwnerShipOnPart(SoundPart) then
					DeleteToyRE:FireServer(child)
				end
			end
		end

		local v3390 = p917 - n56

		if v3390 <= 0 then
			if p917 == 1 then
				return true, t122[1]
			end

			return true, t122
		end

		for i = 1, math.min(v3390, #t121) do
			local v3392 = t121[i]
			local SoundPart = v3392:FindFirstChild("SoundPart")

			if SoundPart and SNOWshipOnce(SoundPart) then
				local t123 = {
					v3392:FindFirstChild("StickyPart"),
					p913,
					cFrame
				}

				RS:WaitForChild("PlayerEvents"):WaitForChild("StickyPartEvent"):FireServer(unpack(t123))
			end
		end

		local v3395 = GetPlayerCFrame()

		if v3395 then
			if p915 and IsPlayerInsideSafeZone(LocalPlayer4) then
				if not old_posTPfromsafe then
					old_posTPfromsafe = v3395
				end

				task.wait(0.025)
				TeleportPlayer(CFrame.new(Vector3.new(0, 0, 0)), 5)
			end

			SpawnToy({
				p916,
				CFrame.new(v3395.Position.X, v3395.Position.Y + 5, v3395.Position.Z, -0.92287552356719971, 0.37924778461456299, 0.066871665418148041, 0, 0.17364826798439026, -0.98480772972106934, -0.38509830832481384, -0.90885496139526367, -0.16025575995445251),
				(Vector3.new(0, 97.69000244140625, 0))
			}, true)
		end
	end
end

do
	BlackHole = function(p918, p919, p920)
		local n57 = 0

		for _, child in pairs(u112:GetChildren()) do
			if child.Name == "NinjaShuriken" and child:FindFirstChild("SoundPart") and not child:GetAttribute("Connected2") then
				local SoundPart = child.SoundPart
				local v3400 = Getdistancefromcharacter(SoundPart.Position)

				if SNOWshipOnce(SoundPart) and child:GetAttribute("Connected1") then
					table.insert(shurikens_ownership, child)
					n57 += 1
				end

				if v3400 < 30 then
					if SNOWshipOnce(SoundPart) and not child:GetAttribute("Connected1") then
						child:SetAttribute("Connected1", true)

						local BodyVelocity = Instance.new("BodyVelocity", SoundPart)

						BodyVelocity.Velocity = Vector3.new(0, 0, 0)
						BodyVelocity.MaxForce = Vector3.new(2500, 2500, 2500)

						if _G.PlotPlayerIsOwner and CheckIfIsAToyInPlayerPlot(child) then
							child:PivotTo(CFrame.new(plotArea.Position + Vector3.new(math.random(-10, 10), 10, math.random(-10, 10))))
						else
							child:PivotTo(CFrame.new(math.random(1000, 9000), 1000000, math.random(1000, 9000)))
						end
					end

					task.wait(0.1)
				elseif v3400 > 30 and not CheckNetworkOwnerShipOnPart(SoundPart) then
					DeleteToyRE:FireServer(child)
					task.wait(0.1)
				end
			end
		end

		if p918 then
			if not (n57 < 12) then
				for _, v in pairs(shurikens_ownership) do
					local StickyPart = v:FindFirstChild("StickyPart")

					if v:FindFirstChild("SoundPart") then
						if v.SoundPart:FindFirstChild("BodyVelocity") then
							v.SoundPart.BodyVelocity:Destroy()
						end
					end

					if p919 then
						StickyPart.CFrame = p918.CFrame
					else
						local t124 = {
							StickyPart,
							p918,
							p920 or CFrame.new(0, 0, 0)
						}

						RS:WaitForChild("PlayerEvents"):WaitForChild("StickyPartEvent"):FireServer(unpack(t124))
						task.wait(0.05)
					end
				end

				task.wait(0.1)

				return true
			end

			local v3406 = GetPlayerCFrame()

			if v3406 then
				SpawnToy({
					"NinjaShuriken",
					CFrame.new(v3406.Position.X, v3406.Position.Y + 5, v3406.Position.Z, -0.92287552356719971, 0.37924778461456299, 0.066871665418148041, 0, 0.17364826798439026, -0.98480772972106934, -0.38509830832481384, -0.90885496139526367, -0.16025575995445251),
					(Vector3.new(0, 97.69000244140625, 0))
				}, true)
			end
		end

		table.clear(shurikens_ownership)
	end
end

FunctionsDPLoopMisc_Section:AddToggle({
	Name = "Blackhole Blobman",
	Default = false,
	Callback = function(p921)
		_G.LoopDeleteSeat = p921

		if p921 then
			while _G.LoopDeleteSeat do
				for _, v in pairs(t11) do
					local v3409 = PS:FindFirstChild(v)

					if CheckPlayer(v3409) then
						local v3410 = v3409
						local Humanoid = v3410.Character:FindFirstChildOfClass("Humanoid")
						local Parent

						if v3410 and Humanoid and Humanoid.SeatPart then
							while _G.LoopDeleteSeat and Humanoid.SeatPart and tostring(Humanoid.SeatPart.Parent) == "CreatureBlobman" do
								if Humanoid.SeatPart and tostring(Humanoid.SeatPart.Parent) == "CreatureBlobman" then
									Parent = Humanoid.SeatPart.Parent
								end

								local Weight = Parent:FindFirstChild("Weight")

								if IsPlayerInsideSafeZone(v3410) then
									if not v113.Value and _G.PlotPlayerIsOwner then
										TeleportPlayer(W.Plots[tostring(_G.PlotPlayerIsOwner)].PlotArea.CFrame * CFrame.new(10, 0, 10) + Vector3.new(0, -5, 0))
									end

									ClaimEmptyPlot()
								elseif v113.Value then
									TeleportPlayer(CFrame.new(workspace.SpawnLocation.Position + Vector3.new(0, 5, 0)))
								end

								BlackHole(Weight)
								task.wait()
							end
						end
					end
				end

				wait()
			end
		end
	end,
	Save = false,
	Flag = "lpdeleteblobman_toggle"
})
KbleBlob_ST = {}
KbleBlob_Cnns = {}
lastPartOwner = {}
lastSuspectGucci = {}
SetupPOwnerP_2 = function(p922, p923)
	local Head = p922:WaitForChild("Head", 5)
	local Humanoid = p922:WaitForChild("Humanoid", 5)

	lastPartOwner[p923.Name] = os.clock()
	lastSuspectGucci[p923.Name] = true

	if Head then
		Head.ChildAdded:Connect(function(child)
			if child.Name == "PartOwner" then
				lastPartOwner[p923.Name] = os.clock()
				lastSuspectGucci[p923.Name] = false
			end
		end)
	end

	if Humanoid then
		Humanoid:GetPropertyChangedSignal("SeatPart"):Connect(function()
			local SeatPart = Humanoid.SeatPart

			if typeof(SeatPart) == "Instance" and (SeatPart:IsA("VehicleSeat") or SeatPart:IsA("Seat")) then
				lastSuspectGucci[p923.Name] = true
			end
		end)
	end
end
SetupPOwnerP_1 = function(p924)
	p924.CharacterAdded:Connect(function(character)
		SetupPOwnerP_2(character, p924)
	end)

	if p924.Character then
		SetupPOwnerP_2(p924.Character, p924)
	end
end
PS.PlayerAdded:Connect(SetupPOwnerP_1)
task.spawn(function()
	for _, player in ipairs(PS:GetPlayers()) do
		if player ~= LocalPlayer4 then
			SetupPOwnerP_1(player)
		end
	end
end)

do
	PS.PlayerRemoving:Connect(function(player)
		if lastPartOwner[player.Name] then
			lastPartOwner[player.Name] = nil
		end

		if lastSuspectGucci[player.Name] then
			lastSuspectGucci[player.Name] = nil
		end
	end)
end

PlayersToRemoveGucci = PlayersToRemoveGucci or {}
ARGTgglId = 0
FunctionsLoopMisc_Section:AddToggle({
	Name = "Auto Remove Gucci",
	Default = false,
	Callback = function(p925)
		_G.ARG = p925

		if p925 then
			ARGTgglId += 1

			local ARGTgglId_ = ARGTgglId

			task.spawn(function()
				while _G.ARG and ARGTgglId == ARGTgglId_ do
					for _, v in pairs(t11) do
						local v3422 = lastPartOwner[v]
						local v3423 = lastSuspectGucci[v]

						if os.clock() - v3422 > 5 then
							lastSuspectGucci[v] = true
						end

						if v3423 and v3422 and os.clock() - v3422 >= 0.75 then
							table.insert(PlayersToRemoveGucci, v)

							local v3424 = PS:FindFirstChild(v)
							local Character = v3424 and v3424.Character
							local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
							local Head = Character and Character:FindFirstChild("Head")
							local UniversalPlayerRoot = _G.UniversalPlayerRoot

							if HumanoidRootPart and UniversalPlayerRoot and Head then
								for i = 0, 10 do
									local Magnitude = (HumanoidRootPart.Position - UniversalPlayerRoot.Position).Magnitude

									v119:FireServer(HumanoidRootPart, HumanoidRootPart.CFrame)

									if CheckNetworkOwnerShipOnPart(Head) then
										break
									end

									if Magnitude > 30 then
										TeleportPlayer(CFrame.new(predictPos(HumanoidRootPart)) * CFrame.new(0, 10, 0), 1, true, 0.25)
									end

									task.wait(0.025)
								end

								task.wait(0.3)
							end
						end
					end

					DestroyGucci(PlayersToRemoveGucci)
					table.clear(PlayersToRemoveGucci)
					task.wait(0.1)
				end
			end)
		end
	end,
	Save = false,
	Flag = "ARG_Toggle"
})
ABPPTgglId = 0
FunctionsLoopMisc_Section:AddToggle({
	Name = "Auto Break Player Plot",
	Default = false,
	Callback = function(p926)
		_G.ABPP = p926

		if p926 then
			ABPPTgglId += 1

			local ABPPTgglId_ = ABPPTgglId
			local t125 = {}
			local t126 = {}

			task.spawn(function()
				while _G.ABPP and ABPPTgglId == ABPPTgglId_ do
					task.wait(0.1)
					table.clear(t126)

					for _, v in pairs(t11) do
						local v3436 = PS:FindFirstChild(v)

						if v3436 then
							local v3437 = GetPlotPlayerIs(v3436)

							if v3437 then
								t126[v3436.Name] = true

								if t125[v3436.Name] ~= v3437 then
									t125[v3436.Name] = v3437
									task.spawn(function()
										for i = 0, 30 do
											if not _G.ABPP or t125[v3436.Name] ~= v3437 then
												return
											end

											if IsPlayerInsideSafeZone(v3436) then
												if BreakPlotArea(v3437) == "breaked!" then
													break
												end

												task.wait(0.0025)

												continue
											end

											if t125[v3436.Name] == v3437 then
												t125[v3436.Name] = nil
											end

											break
										end
									end)
								end
							else
								t125[v3436.Name] = nil
							end
						end
					end

					if next(t126) == nil then
						table.clear(t125)

						for k, v in pairs(BreakPlotAreaToy) do
							if not table.find(PlotsAreasToBreak, k) then
								DeleteToyRE:FireServer(v)
								BreakPlotAreaToy[k] = nil
							end
						end
					end
				end
			end)
		end
	end,
	Save = false,
	Flag = "ABPP_Toggle"
})
ABPCLD_WAIT_BEFORE_KILL = 2.5
ABPCLD_KILL_TIMEOUT = 5
PCLDKillTarget = nil
ABPCLDTgglId = 0

do
	KillPCLDBreaker = function(p927, p928)
		local Character = p927.Character
		local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
		local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")

		if not HumanoidRootPart or not Humanoid then
			return
		end

		local function v3444()
			return _G.AutoBreakPCLD and ABPCLDTgglId == p928 and p927.Parent and p927.Character == Character and HumanoidRootPart.Parent and Humanoid.Health > 0 and not IsPlayerInsideSafeZone(p927)
		end

		PCLDKillTarget = p927
		PCLDDebugPrint("tentando matar " .. p927.Name)

		local connection2 = R.PreRender:Connect(function()
			if HumanoidRootPart.Parent then
				v119:FireServer(HumanoidRootPart, HumanoidRootPart.CFrame)
			end
		end)

		pcall(function()
			local v3446 = GetPlayerCFrame()
			local now = os.clock()

			task.wait(0.05)

			while v3444() and os.clock() - now < ABPCLD_KILL_TIMEOUT do
				noclip()

				if IsNetworkOwner(HumanoidRootPart) and CheckNetworkOwnerShipOnPlayer(p927) then
					SetCollisionObjectOff(Character)
					W.FallenPartsDestroyHeight = -50000
					HumanoidRootPart.CFrame = CFrame.new(0, -49900, 0)
					task.wait(0.1)
					HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, -1000000, 0)
				elseif HumanoidRootPart.AssemblyLinearVelocity.Magnitude < 500 and Getdistancefromcharacter(HumanoidRootPart.Position) > 28 then
					TeleportPlayer(CFrame.new(HumanoidRootPart.Position + (HumanoidRootPart.Position.Y <= -12 and Vector3.new(0, 5, -15) or Vector3.new(0, -10, -10))), 1.2, true, 0.5)
				end

				task.wait()
			end

			clip()

			if v3446 and Getdistancefromcharacter(v3446.Position) > 10 then
				TeleportPlayer(v3446, 1.2)
			end
		end)
		connection2:Disconnect()

		if v3444() then
			PCLDDebugPrint(p927.Name .. " não morreu em " .. ABPCLD_KILL_TIMEOUT .. "s (owner: " .. tostring(IsNetworkOwner(HumanoidRootPart)) .. ", PartOwner: " .. tostring(CheckNetworkOwnerShipOnPlayer(p927) == true) .. ")")
		else
			PCLDDebugPrint(p927.Name .. " morreu (ou saiu / entrou na safe zone)")
		end

		PCLDKillTarget = nil
	end
end

FunctionsLoopMisc_Section:AddToggle({
	Name = "Auto Break Auto PCLD",
	Default = false,
	Callback = function(p929)
		_G.AutoBreakPCLD = p929

		if p929 then
			ABPCLDTgglId += 1

			local ABPCLDTgglId_ = ABPCLDTgglId
			local obj = setmetatable({}, {
				__mode = "k"
			})

			task.spawn(function()
				while _G.AutoBreakPCLD and ABPCLDTgglId == ABPCLDTgglId_ do
					for _, v in pairs(t11) do
						if not _G.AutoBreakPCLD or ABPCLDTgglId ~= ABPCLDTgglId_ then
							break
						end

						local v3452 = PS:FindFirstChild(v)

						if CheckPlayerForLoop(v3452, true) then
							local Character = v3452.Character

							obj[Character] = obj[Character] or os.clock()

							if DoesPlayerBkPCLD(v3452) and ABPCLD_WAIT_BEFORE_KILL <= os.clock() - obj[Character] then
								KillPCLDBreaker(v3452, ABPCLDTgglId_)
								obj[Character] = os.clock()
							end
						end
					end

					task.wait(0.05)
				end
			end)
		end
	end,
	Save = false,
	Flag = "ABPCLD_Toggle"
})
FunctionsLoopMisc_Section:AddToggle({
	Name = "Kickable Blobman",
	Default = false,
	Callback = function(p930)
		_G.KickableBlobman = p930

		if p930 then
			while _G.KickableBlobman do
				for _, v in pairs(t11) do
					local v3456 = PS:FindFirstChild(v)

					if CheckPlayer(v3456) then
						local Humanoid = v3456.Character:FindFirstChildOfClass("Humanoid")
						local Parent

						if v3456 and Humanoid and Humanoid.SeatPart and Humanoid.SeatPart and tostring(Humanoid.SeatPart.Parent) == "CreatureBlobman" then
							if Humanoid.SeatPart and tostring(Humanoid.SeatPart.Parent) == "CreatureBlobman" then
								Parent = Humanoid.SeatPart.Parent
							end

							if KbleBlob_ST[Parent] then
								continue
							end

							local LeftDetector = Parent:FindFirstChild("LeftDetector")
							local v3460
							local v3461

							for i = 0, 25 do
								if _G.KickableBlobman then
									v3460, v3461 = PutShuriken(LeftDetector, CFrame.new(1e45, math.huge, 1e98), true, "ToolPencil")

									if v3460 then
										break
									end

									task.wait(0.0025)

									continue
								end

								return
							end

							if v3460 then
								KbleBlob_ST[Parent] = v3461
								KbleBlob_Cnns[Parent] = KbleBlob_Cnns[Parent] or {}

								local connection2
								local connection3

								connection2 = Parent:GetPropertyChangedSignal("Parent"):Connect(function()
									if not Parent.Parent then
										DeleteToyRE:FireServer(v3461)
										KbleBlob_ST[Parent] = nil
										connection2:Disconnect()
									end
								end)
								connection3 = v3461:GetPropertyChangedSignal("Parent"):Connect(function()
									if not v3461.Parent then
										KbleBlob_ST[Parent] = nil
										connection3:Disconnect()
									end
								end)
								table.insert(KbleBlob_Cnns[Parent], connection2)
								table.insert(KbleBlob_Cnns[Parent], connection3)
							end

							task.wait()
						end
					end
				end

				wait()
			end
		end
	end,
	Save = false,
	Flag = "lpdeleteblobman_toggle"
})
BlobmanAddedC = nil

do
	FunctionsDPLoopMisc_Section:AddToggle({
		Name = "Delete All Blobmans (Toy Method)",
		Default = false,
		Callback = function(p931)
			_G.LoopDeleteGucci = p931

			if p931 then
				local function v3465()
					for _, v in pairs(t11) do
						local v3468 = PS:FindFirstChild(v)

						if v3468 and W:FindFirstChild(v .. "SpawnedInToys") then
							for _, child in pairs(W[v .. "SpawnedInToys"]:GetChildren()) do
								if child.Name == "CreatureBlobman" and child:WaitForChild("PlayerValue", 1) and child.PlayerValue.Value == v3468 then
									local v3471 = child
									local Weight = v3471:FindFirstChild("Weight")

									while _G.LoopDeleteGucci and v3471.Parent and v3471:FindFirstChild("Weight") do
										BlackHole(Weight)
										wait(0.1)
									end
								end
							end
						end
					end
				end

				local thread = task.spawn(v3465)

				BlobmanAddedC = W.DescendantAdded:Connect(function(descendant)
					if descendant.Name == "CreatureBlobman" then
						task.cancel(thread)
						thread = task.spawn(v3465)
						print("New thread made")
					end
				end)
			elseif BlobmanAddedC then
				BlobmanAddedC:Disconnect()
			end
		end,
		Save = false,
		Flag = "lpdeletegucciblobman_toggle"
	})
end

BlobmanAddedC_1 = nil
OldPositionDALLG = nil

do
	HHItems_Section:AddToggle({
		Name = "Hold Holdable Items",
		Default = false,
		Callback = function(p932)
			_G.HHItems = p932

			if p932 then
				local t127 = {}

				local function v3475(p933)
					local v3476 = table.find(t127, p933)

					if v3476 then
						table.remove(t127, v3476)
					end
				end
				local function v3477(p934)
					local v3478 = CheckIfPlayerIsHoldingFood(p934)
					local v3479 = CheckIfHoldableUse(p934)
					local HoldPart = p934:FindFirstChild("HoldPart")
					local HoldItemRemoteFunction
					local DropItemRemoteFunction

					if HoldPart then
						HoldItemRemoteFunction = HoldPart:FindFirstChild("HoldItemRemoteFunction")
						DropItemRemoteFunction = HoldPart:FindFirstChild("DropItemRemoteFunction")
					end

					if HoldItemRemoteFunction and DropItemRemoteFunction then
						local ok = v3478 == "Using"

						if not ok then
							task.spawn(function()
								HoldItemRemoteFunction:InvokeServer(p934, _G.UniverChar)
							end)
							ok = v3478 == "Using"
						end

						if ok and HHItemsAction == "Break" then
							task.spawn(function()
								DropItemRemoteFunction:InvokeServer(p934)
							end)
							v3475(p934)
						elseif v3478 == "Using" and not (v3479 or HHItemsAction ~= "Use") then
							RS.HoldEvents.Use:FireServer(p934)
						elseif v3478 == "Using" and HHItemsAction == "Use + Break" then
							RS.HoldEvents.Use:FireServer(p934)
							task.spawn(function()
								DropItemRemoteFunction:InvokeServer(p934)
							end)
							v3475(p934)
						end
					end
				end

				ConnectPlayersTF("HHItems", "Add", function(p935)
					if p935:IsA("Model") then
						for i = 0, 45 do
							if p935:FindFirstChild("HoldPart") then
								table.insert(t127, p935)
								v3477(p935)

								break
							end

							task.wait()
						end
					end
				end, true)
				task.spawn(function()
					while _G.HHItems do
						for k, v in pairs(t127) do
							if v.Parent then
								v3477(v)
								task.wait(0.025)
							else
								table.remove(t127, k)
							end
						end

						task.wait(0.025)
					end
				end)
			else
				ConnectPlayersTF("HHItems")
			end
		end
	})
end

HHItems_Section:AddDropdown({
	Name = "Action",
	Default = "Break",
	Options = {
		"None",
		"Break",
		"Use",
		"Use + Break"
	},
	Callback = function(p936)
		HHItemsAction = p936
	end
})
SyncAll_Section:AddToggle({
	Name = "Sync All <font color='#ffffff'>「</font><font color='#4fe399'>ANTI-INVISIBILITY</font><font color='#ffffff'>」</font>",
	Default = true,
	Callback = function(p937)
		_G.SyncAll = p937

		if p937 then
			for _, player in pairs(PS:GetPlayers()) do
				task.spawn(function()
					if not CheckPlayer(player) then
						return
					end

					local HumanoidRootPart = player.Character.HumanoidRootPart

					HumanoidRootPart.Massless = true
					HumanoidRootPart.Massless = false
				end)
			end
		end
	end
})
task.spawn(function()
	for _, player in pairs(PS:GetPlayers()) do
		if player ~= LocalPlayer4 then
			local HumanoidRootPart = (player.Character or player.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart", 5)

			if HumanoidRootPart then
				HumanoidRootPart.Massless = true
				HumanoidRootPart.Massless = false
				HumanoidRootPart:GetPropertyChangedSignal("Massless"):Connect(function()
					if HumanoidRootPart.Massless == true and _G.SyncAll then
						HumanoidRootPart.Massless = false
					end
				end)
				player.CharacterAdded:Connect(function(character)
					local HumanoidRootPart2 = character:WaitForChild("HumanoidRootPart", 5)

					if HumanoidRootPart2 then
						HumanoidRootPart2:GetPropertyChangedSignal("Massless"):Connect(function()
							if HumanoidRootPart2.Massless == true and _G.SyncAll then
								HumanoidRootPart2.Massless = false
							end
						end)
						HumanoidRootPart2.Massless = true
						HumanoidRootPart2.Massless = false
					end
				end)
			end
		end
	end
end)

do
	PS.PlayerAdded:Connect(function(player)
		if player == LocalPlayer4 then
			return
		end

		player.CharacterAdded:Connect(function(character)
			local HumanoidRootPart = character:WaitForChild("HumanoidRootPart", 5)

			if HumanoidRootPart then
				HumanoidRootPart:GetPropertyChangedSignal("Massless"):Connect(function()
					if HumanoidRootPart.Massless == true and _G.SyncAll then
						HumanoidRootPart.Massless = false
					end
				end)
				HumanoidRootPart.Massless = true
				HumanoidRootPart.Massless = false
			end
		end)
	end)
end

SyncAll_Section:AddParagraph("⚠️ <font color='#f7f572'>Note</font>", "<font color='#ffffff'>This function is <font color='#bd7d1c'>recommended</font> to be used whenever activating the script, as it is very useful if your opponent is in a state of desynchronization (better known as invisibility); when activated, this function will reveal the enemy's current position.</font>")
AlreadyDestroyingGucci = false
BKPCLDPlrs = {}

do
	S_SpyPCLDDieChar = function(p938, p939)
		local now = os.clock()

		p939:WaitForChild("Humanoid", 2)

		local connection2

		connection2 = p939:GetPropertyChangedSignal("Parent"):Connect(function()
			if not p939.Parent then
				print(os.clock() - now)

				if os.clock() - now <= 4 then
					print("Quebrou o PCLD!")
					BKPCLDPlrs[p938] = true
					p938:SetAttribute("BreakPCLD", true)
				else
					print("Não quebrou o PCLD!")
					BKPCLDPlrs[p938] = false
					p938:SetAttribute("BreakPCLD", false)
				end

				if connection2 then
					connection2:Disconnect()
				end
			end
		end)
	end
end

do
	SetupSpyPlayerBreakPCLD = function(p940)
		if p940.Character then
			S_SpyPCLDDieChar(p940, p940.Character)
		end

		p940.CharacterAdded:Connect(function(character)
			S_SpyPCLDDieChar(p940, character)
		end)
	end
end

PS.PlayerAdded:Connect(SetupSpyPlayerBreakPCLD)
task.spawn(function()
	for _, player in pairs(PS:GetPlayers()) do
		task.spawn(function()
			SetupSpyPlayerBreakPCLD(player)
		end)
	end
end)
PlayersLastSeat = {}

do
	SetupSpySeatCharacter = function(p941, p942)
		local Humanoid = p942:WaitForChild("Humanoid")

		local function v3500()
			local SeatPart = Humanoid.SeatPart

			if SeatPart then
				PlayersLastSeat[p941] = SeatPart
			end
		end

		v3500()

		local connection2 = Humanoid:GetPropertyChangedSignal("SeatPart"):Connect(v3500)

		p942.Destroying:Connect(function()
			if connection2 then
				connection2:Disconnect()
			end
		end)
	end
end

do
	SetupSpyPlayerSeat = function(p943)
		if p943.Character then
			SetupSpySeatCharacter(p943, p943.Character)
		end

		p943.CharacterAdded:Connect(function(character)
			SetupSpySeatCharacter(p943, character)
		end)
	end
end

for _, player in pairs(PS:GetPlayers()) do
	SetupSpyPlayerSeat(player)
end

PS.PlayerAdded:Connect(SetupSpyPlayerSeat)

do
	PS.PlayerRemoving:Connect(function(player)
		PlayersLastSeat[player] = nil
	end)
end

CapturedSeatsIG = {}

do
	task.spawn(function()
		ConnectPlayersTF("GetSeats", "Add", function(p944)
			if p944.Name == "SantaSleigh" or p944.Name == "CreatureBlobman" or string.find(p944.Name, "Tractor") then
				local function v3505(p945, p946, p947)
					if not p945.Parent then
						local v3506 = table.find(CapturedSeatsIG, p947)

						if v3506 then
							table.remove(CapturedSeatsIG, v3506)
							print("Vehicle Removido!")
							p946:Disconnect()
						end
					end
				end

				for i = 0, 50 do
					local VehicleSeat = p944:FindFirstChildWhichIsA("VehicleSeat")

					if VehicleSeat then
						local connection2
						local connection3

						connection2 = p944:GetPropertyChangedSignal("Parent"):Connect(function()
							v3505(p944, connection2, VehicleSeat)
						end)
						connection3 = VehicleSeat:GetPropertyChangedSignal("Parent"):Connect(function()
							v3505(VehicleSeat, connection3, VehicleSeat)
						end)
						table.insert(CapturedSeatsIG, VehicleSeat)
						print("Vehicle Adicionado!")

						break
					end

					task.wait()
				end
			end
		end, true)

		local ObjectModel = workspace.Map.AlwaysHereTweenedObjects.Train.Object:FindFirstChild("ObjectModel")

		if ObjectModel then
			for _, child in pairs(ObjectModel:GetChildren()) do
				if child:IsA("Seat") then
					table.insert(CapturedSeatsIG, child)
				end
			end
		end
	end)
end

DestroyGucciId = 0
DGp_CD = {}

do
	local u3514 = false
	local Players = game:GetService("Players")

	_G.LastValidCFrame = nil
	DestroyGucci = function(p948)
		if type(p948) == "string" or typeof(p948) == "Instance" then
			p948 = { p948 }
		end

		if type(p948) ~= "table" then
			return
		end

		if u3514 then
			return
		end

		u3514 = true
		DestroyGucciId += 1

		local DestroyGucciId_ = DestroyGucciId
		local antigrabgucci_toggle = result.Flags.antigrabgucci_toggle

		for _, v in ipairs(p948) do
			local v3520 = v

			if type(v) == "string" then
				v3520 = Players:FindFirstChild(v)
			end

			if typeof(v3520) == "Instance" and v3520:IsA("Player") and v3520 ~= LocalPlayer4 then
				local v3521 = DGp_CD[v3520.UserId] or 0

				if os.clock() - v3521 >= 0.1 then
					DGp_CD[v3520.UserId] = os.clock()

					local Character = v3520.Character
					local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
					local UniversalPlayerHumanoid = _G.UniversalPlayerHumanoid
					local UniversalPlayerRoot = _G.UniversalPlayerRoot

					if Character and HumanoidRootPart and CheckBlobman(BlobmanV2) then
						local Humanoid = Character:FindFirstChildOfClass("Humanoid")

						for i = 1, 10 do
							if not BlobPOwner(v3520, nil, false) then
								task.wait(0.05)

								continue
							end

							break
						end

						for i = 0, 100 do
							Humanoid:ChangeState("Seated")
							task.wait()
						end

						v119:FireServer(HumanoidRootPart, HumanoidRootPart.CFrame)
					elseif Character and HumanoidRootPart and UniversalPlayerRoot and UniversalPlayerHumanoid then
						local t128 = {}

						table.insert(t128, R.Heartbeat:Connect(function()
							local Character2 = LocalPlayer3.Character
							local HumanoidRootPart2 = Character2 and Character2:FindFirstChild("HumanoidRootPart")

							if HumanoidRootPart2 then
								if not _G.LastValidCFrame then
									_G.LastValidCFrame = HumanoidRootPart2.CFrame

									return
								end

								if (HumanoidRootPart2.Position - _G.LastValidCFrame.Position).Magnitude > 100 then
									HumanoidRootPart2.CFrame = _G.LastValidCFrame
								else
									_G.LastValidCFrame = HumanoidRootPart2.CFrame
								end
							else
								_G.LastValidCFrame = nil
							end
						end))

						local function v3532(p949)
							if p949 and p949.Parent then
								local u3533 = false
								local WeldConstraint = p949:FindFirstChild("WeldConstraint")

								if WeldConstraint then
									WeldConstraint:Destroy()
								end

								local thread = task.delay(0.1, function()
									for i = 0, 30 do
										if p949.Occupant == UniversalPlayerHumanoid then
											break
										end

										SitOnVS(p949)
										task.wait()
									end
								end)

								table.insert(t128, p949.ChildAdded:Connect(function(child)
									if thread then
										task.cancel(thread)
										thread = nil
									end

									child.Enabled = false
									task.wait()
									UniversalPlayerHumanoid.Sit = false
									u3533 = true
								end))

								if _G.IsGodModeOn then
									StopAntiGrabGucci()
								end

								local Parent = p949.Parent
								local RightDetector = Parent and Parent.Name == "CreatureBlobman" and Parent:FindFirstChild("RightDetector")

								if RightDetector then
									RightDetector.Name = "RD"
								end

								for i = 0, 80 do
									if not (u3533 or UniversalPlayerHumanoid.SeatPart == p949) then
										task.wait()

										continue
									end

									break
								end

								if thread then
									task.cancel(thread)
									thread = nil
								end

								UniversalPlayerHumanoid.Sit = false
							end
						end

						local v3540 = PlayersLastSeat[v3520]

						for i = 0, 100 do
							UniversalPlayerHumanoid:ChangeState("Seated")
							task.wait()
						end

						if v3540 then
							v3532(v3540)
						else
							for _, v2 in pairs(CapturedSeatsIG) do
								v3532(v2)
							end
						end

						for _, v2 in ipairs(t128) do
							if v2.Connected then
								v2:Disconnect()
							end
						end

						table.clear(t128)
						UniversalPlayerHumanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					end
				end
			end
		end

		task.delay(1, function()
			if DestroyGucciId_ ~= DestroyGucciId then
				return
			end

			if antigrabgucci_toggle and antigrabgucci_toggle.Value then
				StartAntiGrabGucci()
			end
		end)
		task.delay(0.25, function()
			u3514 = false
		end)
	end
end

do
	SeatMisc_Section:AddToggle({
		Name = "Remove All Types Gucci (Auto Sit Method)",
		Default = false,
		Callback = function(p950)
			_G.LoopDeleteGucci = p950

			if p950 then
				local u3546 = false
				local t129 = {}

				local function v3548(p951)
					return typeof(p951) == "Instance" and p951:IsA("Model") and p951:FindFirstChildOfClass("VehicleSeat") ~= nil
				end
				local function v3549(p952)
					if typeof(p952) ~= "Instance" then
						return
					end

					if not p952:IsA("Model") then
						return
					end

					local v3550, v3551, v3552 = ipairs(t129)

					for _, v in v3550, v3551, v3552 do
						if v == p952 then
							return
						end
					end

					table.insert(t129, p952)

					while _G.LoopDeleteGucci and t129[1] ~= p952 do
						task.wait(0.05)
					end

					if not _G.LoopDeleteGucci then
						local v3555, v3556, v3557 = ipairs(t129)

						for k, v in v3555, v3556, v3557 do
							if v == p952 then
								table.remove(t129, k)

								break
							end
						end

						return
					end

					if p952:GetAttribute("StealOwnership") then
						table.remove(t129, 1)

						return
					end

					local VehicleSeat = p952:FindFirstChildOfClass("VehicleSeat")

					if not VehicleSeat then
						table.remove(t129, 1)

						return
					end

					if not OldPositionDALLG then
						OldPositionDALLG = GetPlayerCFrame()
					end

					local Name
					local n58 = 1
					local n59 = 60
					local v3564 = 0 - n58
					local exitTo2

					for i = 0, 60 do
						if not _G.LoopDeleteGucci or not p952.Parent or not VehicleSeat.Parent or p952:GetAttribute("StealOwnership") then
							exitTo2 = 1

							break
						end

						if Name then
							if CheckFriendsWithCondition(Name, _G.RemoveAllTypesSeat_WF) or Name == LocalPlayer4.Name then
								exitTo2 = 2

								break
							end

							SitOnVS(VehicleSeat, true)

							if VehicleSeat.Occupant == _G.UniversalPlayerHumanoid then
								exitTo2 = 3

								break
							end

							task.wait(0.001)
						else
							local PlayerValue = p952:FindFirstChild("PlayerValue")

							if PlayerValue and PlayerValue.Value then
								Name = PlayerValue.Value.Name
							end

							task.wait(0.001)
						end
					end

					if exitTo2 == 1 then
					elseif exitTo2 == 2 then
					elseif exitTo2 == 3 then
						local exitTo

						repeat
							W.FallenPartsDestroyHeight = -500
							TeleportPlayer(CFrame.new(0, -490, 0))
							p952:PivotTo(CFrame.new(0, -490, 0))
							task.wait(0)
							_G.UniversalPlayerHumanoid:ChangeState(Enum.HumanoidStateType.Jumping)
							exitTo = nil

							local exitTo3

							while true do
								task.wait(0.001)
								v3564 += n58

								if n58 <= 0 then
									exitTo3 = 1

									break
								end

								if v3564 <= n59 then
									if _G.LoopDeleteGucci and p952.Parent and VehicleSeat.Parent and not p952:GetAttribute("StealOwnership") and not CheckFriendsWithCondition(Name, _G.RemoveAllTypesSeat_WF) and Name ~= LocalPlayer4.Name then
										SitOnVS(VehicleSeat, true)

										if VehicleSeat.Occupant == _G.UniversalPlayerHumanoid then
											exitTo3 = 2

											break
										end

										continue
									end
								end

								break
							end

							if exitTo3 == 1 then
								if v3564 >= n59 then
									while _G.LoopDeleteGucci and p952.Parent and VehicleSeat.Parent and not p952:GetAttribute("StealOwnership") and not CheckFriendsWithCondition(Name, _G.RemoveAllTypesSeat_WF) and Name ~= LocalPlayer4.Name do
										SitOnVS(VehicleSeat, true)

										if VehicleSeat.Occupant == _G.UniversalPlayerHumanoid then
											exitTo = 1

											break
										end

										local exitTo4

										while true do
											task.wait(0.001)
											v3564 += n58

											if n58 <= 0 then
												exitTo4 = 1

												break
											end

											if v3564 <= n59 then
												if _G.LoopDeleteGucci and p952.Parent and VehicleSeat.Parent and not p952:GetAttribute("StealOwnership") and not CheckFriendsWithCondition(Name, _G.RemoveAllTypesSeat_WF) and Name ~= LocalPlayer4.Name then
													SitOnVS(VehicleSeat, true)

													if VehicleSeat.Occupant == _G.UniversalPlayerHumanoid then
														exitTo4 = 2

														break
													end

													continue
												end
											end

											break
										end

										if exitTo4 == 1 then
											if v3564 >= n59 then
												continue
											end
										else
											if exitTo4 == 2 then
												exitTo = 1
											end

											break
										end

										break
									end
								end
							elseif exitTo3 == 2 then
								exitTo = 1
							end
						until exitTo ~= 1
					else
					end

					for i = 0, 5 do
						if _G.UniversalPlayerHumanoid.SeatPart then
							_G.UniversalPlayerHumanoid:ChangeState(Enum.HumanoidStateType.Jumping)
						end

						TeleportPlayer(OldPositionDALLG)
						task.wait(0.002)
					end

					OldPositionDALLG = nil
					p952:SetAttribute("StealOwnership", true)
					table.remove(t129, 1)
				end
				local function v3572()
					if u3546 then
						return
					end

					u3546 = true

					for _, player in ipairs(PS:GetPlayers()) do
						local Name = player.Name

						if not (CheckFriendsWithCondition(Name, _G.RemoveAllTypesSeat_WF) or Name == LocalPlayer4.Name) then
							local v3576 = GetAllPlayerToys(Name)

							for _, v in ipairs(v3576) do
								if _G.LoopDeleteGucci then
									v3549(v)

									continue
								end

								break
							end
						end
					end

					u3546 = false
				end

				for _, player in ipairs(PS:GetPlayers()) do
					local v3581 = GetAllPlayerToys(player.Name)

					for _, v in ipairs(v3581) do
						if v3548(v) then
							v:SetAttribute("StealOwnership", false)
						end
					end
				end

				task.spawn(v3572)
				BlobmanAddedC_1 = W.DescendantAdded:Connect(function(descendant)
					if descendant:IsA("VehicleSeat") then
						v3549(descendant.Parent)
					end
				end)
			else
				_G.LoopDeleteGucci = false

				if BlobmanAddedC_1 then
					BlobmanAddedC_1:Disconnect()
					BlobmanAddedC_1 = nil
				end
			end
		end,
		Save = false,
		Flag = "lpdeleteallgucciblobman_toggle"
	})
end

SeatMisc_Section:AddToggle({
	Name = "Whitelist Friends",
	Default = false,
	Callback = function(p953)
		_G.RemoveAllTypesSeat_WF = p953
	end,
	Save = false,
	Flag = "RemoveAllTypesSeat_WF_Toggle"
})
SeatMisc_Section:AddParagraph("⚠️ <font color='#f7f572'>Note</font>", "Use this for removing all kinds of Gucci (Blobman & Tractor) methods!")

do
	FunctionsLoopMisc_Section:AddButton({
		Name = "Remove Gucci",
		Callback = function()
			DestroyGucci(t11)
		end
	})
end

MakeSearchBar(AddPlayerLK_Section:AddPlayersDropdown({
	Name = "Select Player",
	Default = "",
	SearchBar = true,
	MultipleSelection = true,
	Callback = function(p954)
		t11 = p954
	end,
	Flag = "LoopPlayers_APD"
}), AddPlayerLK_Section)
TeleportLasPosTask = nil
_G.SitLocation = nil
SitOnBlobman = function(p955)
	if p955 then
		GetBlobmanV2()

		return
	end

	if typeof(_G.LastBlobmanWasSeat) == "Instance" and CheckBlobman(_G.LastBlobmanWasSeat) then
		GetPlayerCharacter()

		local UniversalPlayerHumanoid = _G.UniversalPlayerHumanoid
		local VehicleSeat = _G.LastBlobmanWasSeat:FindFirstChild("VehicleSeat")

		if not CheckBlobman(_G.LastBlobmanWasSeat) then
			_G.LastBlobmanWasSeat = nil

			return
		end

		if not VehicleSeat or not UniversalPlayerHumanoid then
			return
		end

		Getdistancefromcharacter(VehicleSeat.Position)

		if UniversalPlayerHumanoid.Sit and UniversalPlayerHumanoid.SeatPart ~= VehicleSeat then
			UniversalPlayerHumanoid.Sit = false
		else
			SitOnVS(VehicleSeat, true)
		end
	else
		_G.LastBlobmanWasSeat = GetBlobman()
	end
end
CountRealNumberPlayersInLoop = function()
	local n60 = 0

	for _, v in pairs(t11) do
		if PS:FindFirstChild(v) then
			n60 += 1
		end
	end

	return n60
end

do
	IsThereAnyPlayersInLoopAlive = function()
		local v3589 = false

		for _, v in pairs(t11) do
			if PS:FindFirstChild(v) and v.Character then
				if v.Character:FindFirstChildOfClass("Humanoid") and v.Character.Humanoid.Health > 0 then
					v3589 = true
				end
			end
		end

		return v3589
	end
end

do
	ResetCharacterStats = function()
		for _, player in pairs(PS:GetPlayers()) do
			local v3594 = player

			if v3594 and v3594.Character then
				if v3594.Character:FindFirstChild("HumanoidRootPart") and not v3594.Character.HumanoidRootPart.Massless then
					local HumanoidRootPart = v3594.Character.HumanoidRootPart

					v3594.Character:SetAttribute("Kick", 0)
					v3594.Character:SetAttribute("Kicking", nil)
					v3594.Character:SetAttribute("Kicking2", nil)

					if HumanoidRootPart:FindFirstChild("KickAuraVelocity") then
						HumanoidRootPart.KickAuraVelocity:Destroy()
					end
				end
			end
		end
	end
end

verifyPlayerinBlobmanHand = function()
	local Humanoid = LocalPlayer4.Character:FindFirstChildOfClass("Humanoid")

	if blobmanVerification() then
		local BlobmanV2_ = BlobmanV2 or Humanoid.SeatPart.Parent
		local LeftWeld = BlobmanV2_ and BlobmanV2_:WaitForChild("LeftDetector"):WaitForChild("LeftWeld")
		local Attachment0 = LeftWeld and LeftWeld.Attachment0

		if Attachment0 and Attachment0.Parent then
			local playerFromCharacter = PS:GetPlayerFromCharacter(Attachment0.Parent.Parent)

			if playerFromCharacter then
				return playerFromCharacter
			end
		end
	end
end

local u3601

BlobPOwnerLastPos = nil

do
	BlobPOwner = function(p956, p957, p958)
		if not p956 or not p956.Character then
			return
		end

		if p958 == nil then
			p958 = true
		end

		local Character = p956.Character

		IsPlayerInsideSafeZone(p956)

		local Humanoid = Character:FindFirstChildOfClass("Humanoid")
		local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
		local Torso = Character:FindFirstChild("Torso")

		if not Humanoid or not HumanoidRootPart or not Torso or not _G.UniversalPlayerRoot then
			return
		end

		local v3606, v3607, _, v3609 = GetBlobmanFunctions()

		if not v3606 then
			SitOnBlobman(true)

			return
		end

		local HumanoidRootPart2 = v3606:FindFirstChild("HumanoidRootPart")
		local RightDetector = v3606:FindFirstChild("RightDetector")
		local RightWeld = RightDetector and RightDetector:FindFirstChild("RightWeld")

		if not HumanoidRootPart2 or not RightDetector or not RightWeld then
			SitOnBlobman(true)

			return
		end

		local Magnitude = (Torso.Position - _G.UniversalPlayerRoot.Position).Magnitude
		local v3614 = IsNetworkOwner(HumanoidRootPart)

		if not (Magnitude < 30) or v3614 then
			if v3614 then
				if p957 == "Kill" then
					Humanoid.BreakJointsOnDeath = false
					Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
				end

				if BlobPOwnerLastPos and p958 then
					TeleportPlayer(BlobPOwnerLastPos)
					BlobPOwnerLastPos = nil
				end

				return true
			end

			if p958 and not BlobPOwnerLastPos then
				BlobPOwnerLastPos = GetPlayerCFrame()
			end

			TeleportPlayer(CFrame.new(predictPos(Torso)) * CFrame.new(0, 10, 0))
		else
			v3607:FireServer(RightDetector, HumanoidRootPart, RightWeld)
			task.wait()
			v3609:FireServer(RightWeld)
		end
	end
end

FunctionsLK_Section:AddToggle({
	Name = "Loop Kill" .. ownership_text,
	Default = false,
	Callback = function(p959)
		_G.LoopKill = p959

		if p959 then
			while _G.LoopKill do
				u3601 = GetPlayerCFrame()

				for _, v in pairs(t11) do
					local v3617 = PS:FindFirstChild(v)

					if CheckPlayerForLoop(v3617, _G.LoopKill) then
						local v3618 = v3617
						local HumanoidRootPart = v3618.Character:FindFirstChild("HumanoidRootPart")
						local Head = v3618.Character:FindFirstChild("Head")

						v3618.Character:FindFirstChild("Humanoid")

						if v3618 and HumanoidRootPart and Head then
							for i = 0, 25 do
								noclip()
								SNOWship(HumanoidRootPart)
								task.wait()

								if IsNetworkOwner(HumanoidRootPart) and CheckNetworkOwnerShipOnPlayer(v3618) then
									SetCollisionObjectOff(v3618.Character)
									W.FallenPartsDestroyHeight = -50000
									HumanoidRootPart.CFrame = CFrame.new(0, -49900, 0)
									task.wait(0.1)
									HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, -1000000, 0)
								end

								if not CheckPlayerForLoop(v3617, _G.LoopKill) then
									break
								end

								TeleportPlayer(CFrame.new(HumanoidRootPart.Position + (HumanoidRootPart.Position.Y <= -12 and Vector3.new(0, 5, -15) or Vector3.new(0, -10, -10))), 1.2, true, 0.5)
								task.wait()
							end
						end
					end
				end

				task.wait()
			end

			clip()
			print("End LoopKill")
		end
	end,
	Save = false,
	Flag = "lk_toggle"
})
FunctionsLK_Section:AddToggle({
	Name = "Loop Kill <font color='#3f1c70'>「</font><font color='#8c66c2'>PERM OWNERSHIP</font><font color='#3f1c70'>」</font>",
	Default = false,
	Callback = function(p960)
		_G.LoopKillB = p960

		if p960 then
			while _G.LoopKillB do
				for _, v in pairs(t11) do
					local v3624 = PS:FindFirstChild(v)

					if CheckPlayer(v3624) then
						local Humanoid = v3624 and v3624.Character and v3624.Character:FindFirstChild("Humanoid")

						if Humanoid and Humanoid.Health > 0 then
							for i = 0, 25 do
								if Humanoid.Health <= 0 then
									break
								end

								BlobPOwner(v3624, "Kill", true)
								task.wait(0.025)
							end
						end
					end
				end

				task.wait()
			end
		end
	end,
	Save = false,
	Flag = "lkb_toggle"
})
loopkickownertoggle = FunctionsLoopKickOwnership_Section:AddToggle({
	Name = "Loop Kick" .. ownership_text .. premium_text,
	Default = false,
	Callback = function(p961)
		_G.LoopKickOwnership = p961

		if p961 then
			if loopkickownerspamtoggle then
				loopkickownerspamtoggle:Set(false)
			end

			while _G.LoopKickOwnership do
				if GetKey() ~= "Xana" then
					_G.LoopKickOwnership = false
					-- notify disabled
					loopkickownertoggle:Set(false)

					break
				end

				u3601 = GetPlayerCFrame()

				for _, v in pairs(t11) do
					local v3629 = PS:FindFirstChild(v)

					if CheckPlayerForLoop(v3629, _G.LoopKickOwnership) then
						local v3630 = v3629
						local HumanoidRootPart = v3630.Character:FindFirstChild("HumanoidRootPart")
						local Head = v3630.Character:FindFirstChild("Head")

						v3630.Character:FindFirstChild("Humanoid")

						if v3630 and HumanoidRootPart and Head then
							for i = 0, 35 do
								noclip()
								SNOWship(HumanoidRootPart)

								if CheckNetworkOwnerShipOnPlayer(v3630) then
									v118:FireServer(HumanoidRootPart)
									wait()
									CreateSkyVelocity(HumanoidRootPart)

									break
								end

								TeleportPlayer(CFrame.new(HumanoidRootPart.Position + (HumanoidRootPart.Position.Y <= -12 and Vector3.new(0, 5, -15) or Vector3.new(0, -10, -10))), 1.2, true, 0.5)
								task.wait()
							end
						end
					end
				end

				task.wait(0.2)
			end

			clip()
		end
	end,
	Save = false,
	Flag = "lkickowner_toggle"
})
loopkickspam_speed = 1
PCLD_NAME = "PlayerCharacterLocationDetector"
PCLD_UPDATE_RATE = 0.1
PCLD_DEBUG = false
PCLD_OWNER_MAX_DIST = 100
PCLD_OWNER_KEEP_BONUS = 2
PCLD_SPAWN_GUESS_TIME = 1.5
PCLD_FOLLOW_DIST = 12
PCLD_FOLLOW_MOVED_TIME = 2
PCLD_MOVED_MIN_STEP = 0.1
PCLD_PLAYER_MOVE_DIST = 3
PCLD_PLAYER_MOVE_HEIGHT = 6
PCLD_RELEASE_TIME = 1
PCLD_MOVE_GRACE = 3
PCLD_BROKEN_CONFIRM = 4
PCLDParts = {}
PCLDOwners = {}
PCLDDistAvg = {}
PCLDLastPos = {}
PCLDLastMoved = {}
PCLDLastCharAdded = {}
PCLDStartPos = {}
PCLDFirstMove = {}
PCLDLastHeld = {}
PCLDBrokenSince = {}
PCLDDebugPrint = function(...)
	if PCLD_DEBUG then
		print("[PCLD]", ...)
	end
end
PCLDGetRoot = function(p962)
	return p962.Character and p962.Character:FindFirstChild("HumanoidRootPart")
end

do
	PCLDFlatDist = function(p963)
		return Vector3.new(p963.X, 0, p963.Z).Magnitude
	end
end

GetPCLDOwner = function(p964)
	return PCLDOwners[p964]
end

do
	GetPlayerPCLD = function(p965)
		for k, v in pairs(PCLDOwners) do
			if v == p965 then
				return k
			end
		end
	end
end

do
	IsPCLDFollowing = function(p966, p967)
		local v3636 = PCLDGetRoot(p967)

		if not v3636 then
			return false
		end

		local v3637 = PCLDFlatDist(p966.Position - v3636.Position) <= PCLD_FOLLOW_DIST
		local v3638 = PCLDLastMoved[p966] and os.clock() - PCLDLastMoved[p966] <= PCLD_FOLLOW_MOVED_TIME

		return v3637 or v3638
	end
end

GetPCLDBrokenTime = function(p968)
	local v3639 = PCLDBrokenSince[p968]

	return v3639 and os.clock() - v3639 or 0
end

do
	DoesPlayerBkPCLD = function(p969)
		local v3640 = PCLDFirstMove[p969]

		if v3640 and not (os.clock() - v3640 < PCLD_MOVE_GRACE) then
			return GetPCLDBrokenTime(p969) >= PCLD_BROKEN_CONFIRM
		end

		return false
	end
end

CheckPCLDClose = function(p970, p971)
	for _, v in PCLDParts, nil, nil do
		local v3643 = PCLDOwners[v]

		if p971 and v3643 and v3643 ~= p971 then
			continue
		end

		local v3644 = v.Position - p970

		if v3644:Dot(v3644) <= 55 then
			return true
		end
	end

	return false
end

do
	UpdatePCLDPlayerMoves = function()
		for _, player in ipairs(PS:GetPlayers()) do
			local v3647 = PCLDGetRoot(player)

			if v3647 and not PCLDFirstMove[player] then
				local Head = player.Character:FindFirstChild("Head")
				local v3649 = PCLDLastHeld[player]
				local v3650 = PCLDStartPos[player]

				if Head and Head:FindFirstChild("PartOwner") then
					PCLDLastHeld[player] = os.clock()
				elseif v3649 then
					if PCLD_RELEASE_TIME <= os.clock() - v3649 then
						PCLDFirstMove[player] = v3649
					end
				elseif v3650 then
					local v3651 = v3647.Position - v3650

					if PCLD_PLAYER_MOVE_DIST < PCLDFlatDist(v3651) or PCLD_PLAYER_MOVE_HEIGHT < math.abs(v3651.Y) then
						PCLDFirstMove[player] = os.clock()
					end
				else
					PCLDStartPos[player] = v3647.Position
				end
			end
		end
	end
end

UpdatePCLDMoves = function()
	for _, v in ipairs(PCLDParts) do
		local v3654 = PCLDLastPos[v]

		if not v3654 or PCLD_MOVED_MIN_STEP < (v.Position - v3654).Magnitude then
			PCLDLastMoved[v] = os.clock()
		end

		PCLDLastPos[v] = v.Position
	end
end

do
	UpdatePCLDOwners = function()
		local t130 = {}

		for _, v in ipairs(PCLDParts) do
			local v3658 = PCLDDistAvg[v]

			if not v3658 then
				v3658 = {}
				PCLDDistAvg[v] = v3658
			end

			for _, player in ipairs(PS:GetPlayers()) do
				local v3661 = PCLDGetRoot(player)

				if v3661 then
					local Magnitude = (v.Position - v3661.Position).Magnitude

					v3658[player] = v3658[player] and v3658[player] * 0.7 + Magnitude * 0.3 or Magnitude
				end

				if v3658[player] and v3658[player] <= PCLD_OWNER_MAX_DIST then
					table.insert(t130, {
						pcld = v,
						p = player,
						score = v3658[player] - (PCLDOwners[v] == player and PCLD_OWNER_KEEP_BONUS or 0)
					})
				end
			end
		end

		table.sort(t130, function(p972, p973)
			return p972.score < p973.score
		end)

		local t131 = {}
		local t132 = {}

		table.clear(PCLDOwners)

		for _, v in ipairs(t130) do
			if not (t131[v.pcld] or t132[v.p]) then
				t131[v.pcld] = true
				t132[v.p] = true
				PCLDOwners[v.pcld] = v.p
			end
		end
	end
end

UpdatePCLDBroken = function()
	for _, player in ipairs(PS:GetPlayers()) do
		local v3669 = GetPlayerPCLD(player)

		if not PCLDGetRoot(player) or v3669 and IsPCLDFollowing(v3669, player) then
			PCLDBrokenSince[player] = nil
		else
			PCLDBrokenSince[player] = PCLDBrokenSince[player] or os.clock()
		end
	end
end
ResetPCLDPlayer = function(p974)
	PCLDStartPos[p974] = nil
	PCLDFirstMove[p974] = nil
	PCLDLastHeld[p974] = nil
	PCLDBrokenSince[p974] = nil
end
AddPCLD = function(p975)
	table.insert(PCLDParts, p975)
	PCLDDistAvg[p975] = {}

	local t133 = {}

	for k, v in pairs(PCLDLastCharAdded) do
		if os.clock() - v <= PCLD_SPAWN_GUESS_TIME then
			table.insert(t133, k)
		end
	end

	if #t133 == 1 then
		PCLDDistAvg[p975][t133[1]] = 0
	end
end
RemovePCLD = function(p976)
	local v3673 = table.find(PCLDParts, p976)

	if v3673 then
		local v3674 = #PCLDParts

		PCLDParts[v3673] = PCLDParts[v3674]
		PCLDParts[v3674] = nil
	end

	PCLDOwners[p976] = nil
	PCLDDistAvg[p976] = nil
	PCLDLastPos[p976] = nil
	PCLDLastMoved[p976] = nil
end

do
	PCLDTrackPlayer = function(p977)
		p977.CharacterAdded:Connect(function()
			ResetPCLDPlayer(p977)
			PCLDLastCharAdded[p977] = os.clock()
		end)
	end
end

for _, player in pairs(PS:GetPlayers()) do
	PCLDTrackPlayer(player)
end

PS.PlayerAdded:Connect(PCLDTrackPlayer)
PS.PlayerRemoving:Connect(function(player)
	ResetPCLDPlayer(player)
	PCLDLastCharAdded[player] = nil

	for k, v in pairs(PCLDDistAvg) do
		v[player] = nil

		if PCLDOwners[k] == player then
			PCLDOwners[k] = nil
		end
	end
end)

for _, child in pairs(W:GetChildren()) do
	if child.Name == PCLD_NAME then
		AddPCLD(child)
	end
end

W.ChildAdded:Connect(function(child)
	if child.Name == PCLD_NAME then
		AddPCLD(child)
	end
end)

do
	W.ChildRemoved:Connect(function(child)
		if child.Name == PCLD_NAME then
			RemovePCLD(child)
		end
	end)
end

task.spawn(function()
	while true do
		local ok, result2 = pcall(function()
			UpdatePCLDPlayerMoves()
			UpdatePCLDMoves()
			UpdatePCLDOwners()
			UpdatePCLDBroken()
		end)

		if not ok then
			PCLDDebugPrint("erro no detector:", result2)
		end

		task.wait(PCLD_UPDATE_RATE)
	end
end)
LoopKickV2SavedPos = nil
loopkickownerspamtoggle = FunctionsLoopKickSpamOwnership_Section:AddToggle({
	Name = "Loop Kick <font color='#2453bf'>「</font><font color='#2491bf'>SPAM</font><font color='#2453bf'>」</font>",
	Default = false,
	Callback = function(p978)
		_G.LoopKickOwnershipV2 = p978

		if p978 then
			if loopkickownertoggle then
				loopkickownertoggle:Set(false)
			end

			local v3683 = GetPlayerCFrame()

			LoopKickV2SavedPos = v3683

			local function v3684(p979)
				if not _G.UniversalPlayerRoot or not _G.UniversalPlayerRoot.Parent then
					return
				end

				TeleportPlayer(v3683, p979)
				_G.UniversalPlayerRoot.AssemblyLinearVelocity = Vector3.zero
				_G.UniversalPlayerRoot.AssemblyAngularVelocity = Vector3.zero
			end

			task.spawn(function()
				while _G.LoopKickOwnershipV2 and LoopKickV2SavedPos == v3683 do
					if not (_G.CloneChar and _G.CloneChar.Parent and not _G.CloneDisabled or PCLDKillTarget or not (Getdistancefromcharacter(v3683.Position) > 2)) then
						v3684(1)
					end

					task.wait(0.1)
				end
			end)

			while _G.LoopKickOwnershipV2 do
				for _, v in pairs(t11) do
					local v3687 = PS:FindFirstChild(v)

					if CheckPlayerForLoop(v3687, _G.LoopKickOwnershipV2 and not PCLDKillTarget, false) then
						local v3688 = v3687
						local HumanoidRootPart = v3688.Character:FindFirstChild("HumanoidRootPart")
						local Head = v3688.Character:FindFirstChild("Head")
						local Humanoid = v3688.Character:FindFirstChild("Humanoid")

						if v3688 and HumanoidRootPart and Head and v3688.Character then
							local function v3692()
								return v3683.Position + Vector3.new(0, 15, 0)
							end
							local function v3693()
								return CheckPCLDClose(v3692(), v3688) and GetBlobmanFunctions() ~= nil
							end
							local function v3694()
								if v3693() then
									return
								end

								v119:FireServer(HumanoidRootPart, HumanoidRootPart.CFrame)
							end
							local function v3695()
								v118:FireServer(HumanoidRootPart)

								if HumanoidRootPart.ReceiveAge == 0 then
									HumanoidRootPart.CFrame = CFrame.new(v3692())
								end
							end
							local function v3696()
								HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

								if Humanoid and not _G.LoopKickSpamRagdoll then
									Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
								end
							end

							local connection2 = R.PreRender:Connect(v3694)
							local connection3 = R.Heartbeat:Connect(v3695)
							local connection4 = R.Stepped:Connect(v3696)

							task.spawn(function()
								while CheckPlayerForLoop(v3688, _G.LoopKickOwnershipV2 and not PCLDKillTarget) do
									local v3700 = v3692()
									local v3701, v3702, v3703 = GetBlobmanFunctions()

									if v3701 and CheckPCLDClose(v3700, v3688) then
										local RightDetector = v3701.RightDetector

										RightDetector.RightWeld.Enabled = false
										HumanoidRootPart.CFrame = CFrame.new(v3700)
										v3702:FireServer(RightDetector, HumanoidRootPart, RightDetector.RightWeld)
										task.wait(0.015)
										v3703:FireServer(RightDetector.RightWeld)
									else
										task.wait()
									end
								end
							end)
							task.spawn(function()
								while CheckPlayerForLoop(v3688, _G.LoopKickOwnershipV2 and not PCLDKillTarget) do
									if _G.LoopKickSpamRagdoll then
										for i = 0, 1, 0.3 do
											ColissionPallet(Head.Position:Lerp(Head.Position + Vector3.new(0, 2, 0), i))
											task.wait(0.01)
										end
									end

									task.wait()
								end
							end)
							task.spawn(function()
								while CheckPlayerForLoop(v3688, _G.LoopKickOwnershipV2 and not PCLDKillTarget) do
									if Getdistancefromcharacter(HumanoidRootPart.Position) > 28 and not IsNetworkOwner(HumanoidRootPart) then
										TeleportPlayer(CFrame.new(HumanoidRootPart.Position + Vector3.new(10, 0, 10)), 1.2, true, 0.5)
									end

									task.wait()
								end
							end)
							SetAAKA(true)

							while CheckPlayerForLoop(v3688, _G.LoopKickOwnershipV2 and not PCLDKillTarget) do
								task.wait()
							end

							if connection2 then
								connection2:Disconnect()
							end

							if connection3 then
								connection3:Disconnect()
							end

							if connection4 then
								connection4:Disconnect()
							end

							SetAAKA(false)

							if _G.LoopKickOwnershipV2 and not PCLDKillTarget and Getdistancefromcharacter(v3683.Position) > 10 then
								v3684(0)
							end
						end
					end
				end

				task.wait()
			end

			if LoopKickV2SavedPos == v3683 then
				LoopKickV2SavedPos = nil
			end

			clip()
		end
	end,
	Save = false,
	Flag = "lkickownerspam_toggle"
})

do
	local u3706

	loopkickownerspamtoggle = FunctionsLoopKickSpamOwnershipV3_Section:AddToggle({
		Name = "Loop Kick <font color='#2453bf'>〔</font><font color='#2491bf'>SPAM </font><font color='#2453bf'></font><font color='#6538a8'></font><font color='#473a61'>BLOBMAN</font><font color='#6538a8'>〕</font>",
		Default = false,
		Callback = function(p980)
			_G.LoopKickOwnershipV3 = p980

			if p980 then
				if loopkickownertoggle then
					loopkickownertoggle:Set(false)
				end

				local v3707 = GetPlayerCFrame()
				local Position = v3707.Position
				local v3709 = Position + Vector3.new(0, 25, 0)

				u3706 = v3707
				BlobPOwnerLastPos = nil

				local function v3710(p981)
					if not _G.UniversalPlayerRoot or not _G.UniversalPlayerRoot.Parent then
						return
					end

					TeleportPlayer(v3707, p981)
					_G.UniversalPlayerRoot.AssemblyLinearVelocity = Vector3.zero
					_G.UniversalPlayerRoot.AssemblyAngularVelocity = Vector3.zero
				end

				local overlapParams = OverlapParams.new()

				overlapParams.FilterType = Enum.RaycastFilterType.Exclude
				overlapParams.FilterDescendantsInstances = { LocalPlayer4.Character }
				task.spawn(function()
					while _G.LoopKickOwnershipV3 and u3706 == v3707 do
						if not (_G.CloneChar and _G.CloneChar.Parent and not _G.CloneDisabled or PCLDKillTarget or not (Getdistancefromcharacter(Position) > 15)) then
							v3710(1)
						end

						task.wait(0.1)
					end
				end)

				while _G.LoopKickOwnershipV3 do
					for _, v in pairs(t11) do
						local v3714 = PS:FindFirstChild(v)

						if CheckPlayerForLoop(v3714, _G.LoopKickOwnershipV3 and not PCLDKillTarget, false) then
							local v3715 = v3714
							local HumanoidRootPart = v3715.Character:FindFirstChild("HumanoidRootPart")
							local Head = v3715.Character:FindFirstChild("Head")
							local Humanoid = v3715.Character:FindFirstChild("Humanoid")
							local Character = v3715.Character

							if v3715 and HumanoidRootPart and Head and Character then
								local u3720
								local u3721
								local u3722
								local Magnitude = (HumanoidRootPart.Position - _G.UniversalPlayerRoot.Position).Magnitude

								SetCollisionObjectOff(Character)

								local connection2

								connection2 = game:GetService("RunService").Stepped:Connect(function()
									if not CheckPlayerForLoop(v3715, _G.LoopKickOwnershipV3 and not PCLDKillTarget, false) then
										if connection2 then
											connection2:Disconnect()
										end

										return
									end

									HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

									if Humanoid then
										Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
									end
								end)
								task.spawn(function()
									local v3725 = true

									while true do
										if CheckPlayerForLoop(v3715, _G.LoopKickOwnershipV3 and not PCLDKillTarget, false) then
											task.wait()

											if CheckPCLDClose(v3709, v3715) then
												task.wait()

												continue
											end

											if Magnitude > 30 and not CheckNetworkOwnerShipOnPlayer(v3715) then
												local Position2 = HumanoidRootPart.Position

												if Position2 then
													TeleportPlayer(CFrame.new(Position2) * CFrame.new(0, -10, 0), 2, true)
													v119:FireServer(HumanoidRootPart, HumanoidRootPart.CFrame)
												end

												if CheckNetworkOwnerShipOnPlayer(v3715) then
													v118:FireServer(HumanoidRootPart)

													if v3725 then
														v3725 = false
														task.wait(2)
													else
														task.wait(0.5)
													end
												end

												task.wait()

												continue
											end

											for i = 0, 35 do
												if not CheckPCLDClose(v3709, v3715) then
													if CheckNetworkOwnerShipOnPlayer(v3715) or IsNetworkOwner(HumanoidRootPart) then
														HumanoidRootPart.CFrame = CFrame.new(v3709)
														HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
														HumanoidRootPart.RotVelocity = Vector3.new(0, 0, 0)
													end

													if not CheckNetworkOwnerShipOnPlayer(v3715) then
														if CheckPlayerForLoop(v3715, _G.LoopKickOwnershipV3 and not PCLDKillTarget, false) then
															v119:FireServer(HumanoidRootPart, HumanoidRootPart.CFrame)
															task.wait(0.005)

															continue
														end
													end
												end

												break
											end

											if CheckPlayerForLoop(v3715, _G.LoopKickOwnershipV3 and not PCLDKillTarget, false) then
												if CheckNetworkOwnerShipOnPlayer(v3715) then
													v118:FireServer(HumanoidRootPart)

													if v3725 then
														v3725 = false
														task.wait(2)
													else
														task.wait(0.5)
													end
												end

												task.wait()

												continue
											end
										end

										break
									end
								end)
								task.spawn(function()
									while CheckPlayerForLoop(v3715, _G.LoopKickOwnershipV3 and not PCLDKillTarget, false) do
										local v3728, v3729, v3730 = GetBlobmanFunctions()

										u3720 = v3728
										u3721 = v3729
										u3722 = v3730

										if u3720 then
											u3720.RightDetector.RightWeld.Enabled = false

											if CheckPCLDClose(v3709, v3715) then
												HumanoidRootPart.CFrame = CFrame.new(v3709)
												u3721:FireServer(u3720.RightDetector, HumanoidRootPart, u3720.RightDetector.RightWeld)
												task.wait(0.015)
												u3722:FireServer(u3720.RightDetector.RightWeld)
											else
												task.wait()
											end
										else
											SitOnBlobman(true)
											task.wait()
										end
									end
								end)
								SetAAKA(true)

								while CheckPlayerForLoop(v3715, _G.LoopKickOwnershipV3 and not PCLDKillTarget, false) do
									task.wait()
								end

								SetAAKA(false)

								if HumanoidRootPart.Parent then
									HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
									HumanoidRootPart.AssemblyAngularVelocity = Vector3.zero
								end

								SetCollisionObjectOn(Character)

								if _G.LoopKickOwnershipV3 and not PCLDKillTarget and Getdistancefromcharacter(Position) > 10 then
									v3710(0)
								end
							end
						end
					end

					task.wait()
				end

				if not (_G.LoopKickOwnershipV3 or u3706 ~= v3707) then
					u3706 = nil
					BlobPOwnerLastPos = nil
					task.wait()
					v3710(2)
				end
			end
		end,
		Save = false,
		Flag = "lkickownerspamv3_toggle"
	})
end

do
	FunctionsLoopKickSpamOwnership_Section:AddToggle({
		Name = "Ragdoll Player",
		Default = false,
		Callback = function(p982)
			_G.LoopKickSpamRagdoll = p982
		end
	})
end

FunctionsLoopKickSpamOwnership_Section:AddParagraph("⚠️ <font color='#f7f572'>Note</font>", "If you want to use this option at max potential, you'll need to have a fps above 100, or it won't work good! You can try increasing the speed if you're low fps!")
FunctionsLoopKickSpamOwnershipV3_Section:AddParagraph("⚠️ <font color='#f7f572'>Note</font>", "If you want to use this option at max potential, you'll need to have Auto Seatless Blobman enabled, or it won't work good! Click the button below to go to it!")

do
	FunctionsLoopKickSpamOwnershipV3_Section:AddButton({
		Name = "Go to Seatless Blobman",
		Callback = function()
			result:GoToTab("Config")
			result:ScrollTo("Config", "Blobman Config", true)
		end
	})
end

FunctionsLA_Section:AddToggle({
	Name = "Loop Snowball",
	Default = false,
	Callback = function(p983)
		_G.LoopRagdollSnowball = p983

		if p983 then
			while _G.LoopRagdollSnowball do
				for _, v in pairs(t11) do
					local v3733 = PS:FindFirstChild(v)

					if CheckPlayerWF(v3733) then
						local Character = v3733.Character
						local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
						local Humanoid = Character:FindFirstChildOfClass("Humanoid")
						local Ragdolled = Humanoid and Humanoid:FindFirstChild("Ragdolled")

						if HumanoidRootPart and Ragdolled and not Ragdolled.Value then
							ExplodeSnowball(HumanoidRootPart)
						end
					end
				end

				task.wait()
			end
		end
	end
})
loopRagdoll = FunctionsLA_Section:AddToggle({
	Name = "Loop Ragdoll" .. premium_text,
	Default = false,
	Callback = function(p984)
		_G.LoopRagdoll = p984

		if p984 then
			while _G.LoopRagdoll do
				if GetKey() ~= "Xana" then
					loopRagdoll:Set(false)
					_G.LoopRagdoll = false
					-- notify disabled

					break
				end

				for _, v in pairs(t11) do
					local v3740 = PS:FindFirstChild(v)

					if CheckPlayerWF(v3740) then
						local Character = v3740.Character
						local HumanoidRootPart = v3740.Character:FindFirstChild("HumanoidRootPart")
						local Ragdolled = Character:FindFirstChildOfClass("Humanoid"):FindFirstChild("Ragdolled")

						if HumanoidRootPart and Ragdolled and not Ragdolled.Value then
							Ragdoll(HumanoidRootPart)
							task.wait(0.015)
						end
					end
				end

				task.wait()
			end
		end
	end
})

do
	loopFire = FunctionsLA_Section:AddToggle({
		Name = "Loop Fire" .. premium_text,
		Default = false,
		Callback = function(p985)
			_G.LoopFire = p985

			if p985 then
				while _G.LoopFire do
					if GetKey() ~= "Xana" then
						loopFire:Set(false)
						_G.LoopFire = false
						-- notify disabled

						break
					end

					for _, v in pairs(t11) do
						local v3746 = PS:FindFirstChild(v)

						if CheckPlayerWF(v3746, nil, true) then
							local v3747 = v3746
							local HumanoidRootPart = v3747.Character:FindFirstChild("HumanoidRootPart")
							local Value

							if HumanoidRootPart:FindFirstChild("FirePlayerPart") then
								if HumanoidRootPart.FirePlayerPart:FindFirstChild("CanBurn") then
									Value = HumanoidRootPart.FirePlayerPart.CanBurn.Value
								end
							end

							if HumanoidRootPart and v3747 and not (IsPlayerInsideSafeZone(v3747) or Value) then
								Burn(HumanoidRootPart)
								task.wait(0.015)
							end
						end
					end

					task.wait()
				end
			end
		end
	})
end

LoopBang_BoolValue = Instance.new("BoolValue")
FunctionsBN_Section:AddToggle({
	Name = "Loop Bang",
	Default = false,
	Callback = function(p986)
		_G.LoopBang = p986
		LoopBang_BoolValue.Value = p986

		if p986 then
			local v3750 = MakeBangPart()
			local LoopBang_BoolValue_ = LoopBang_BoolValue

			while _G.LoopBang do
				u3601 = GetPlayerCFrame()

				for _, v in pairs(t11) do
					local v3754 = PS:FindFirstChild(v)

					if CheckPlayerForLoop(v3754, _G.LoopBang) then
						local v3755 = v3754
						local HumanoidRootPart = v3755.Character:FindFirstChild("HumanoidRootPart")
						local Head = v3755.Character:FindFirstChild("Head")

						v3755.Character:FindFirstChild("Humanoid")

						local Character = v3755.Character

						if v3755 and HumanoidRootPart and Head then
							for i = 0, 35 do
								noclip()
								SNOWshipPlayer(v3755)

								if CheckNetworkOwnerShipOnPlayer(v3755) then
									MakeBangConnection(Character, HumanoidRootPart, v3755, v3750, LoopBang_BoolValue_)

									break
								end

								if Getdistancefromcharacter(HumanoidRootPart.Position) > 30 then
									TeleportPlayer(CFrame.new(HumanoidRootPart.Position + Vector3.new(0, 5, -15)), 0, true, 0.5)
								end

								task.wait()
							end
						end
					end
				end

				clip()
				task.wait(0.2)
			end

			clip()
			print("End LoopBang")
		end
	end,
	Save = false,
	Flag = "lb_toggle"
})
FunctionsBN_Section:AddSlider({
	Name = "Speed",
	Min = 1,
	Max = 10,
	Default = 1,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 0.2,
	ValueName = "",
	Callback = function(p987)
		bang_speed = p987
	end,
	Save = true,
	Flag = "bangspeed_slider"
})
FunctionsBN_Section:AddSlider({
	Name = "Distance",
	Min = 2,
	Max = 15,
	Default = 5,
	Color = Color3.fromRGB(59, 122, 179),
	Increment = 1,
	ValueName = "",
	Callback = function(p988)
		bang_forwardDistance = p988
	end,
	Save = true,
	Flag = "bangforwardDistance_slider"
})

do
	GetBlobmanFunctions = function()
		local Parent = _G.UniversalPlayerHumanoid and _G.UniversalPlayerHumanoid.SeatPart and _G.UniversalPlayerHumanoid.SeatPart.Parent

		if CheckBlobman(BlobmanV2) and _G.UniversalPlayerHumanoid and _G.UniversalPlayerHumanoid.Health > 0 then
			return BlobmanV2, BlobmanV2.BlobmanSeatAndOwnerScript.CreatureGrab, BlobmanV2.BlobmanSeatAndOwnerScript.CreatureDrop, BlobmanV2.BlobmanSeatAndOwnerScript.CreatureRelease
		end

		if tostring(Parent) == "CreatureBlobman" and Parent:FindFirstChild("BlobmanSeatAndOwnerScript") then
			return Parent, Parent.BlobmanSeatAndOwnerScript.CreatureGrab, Parent.BlobmanSeatAndOwnerScript.CreatureDrop, Parent.BlobmanSeatAndOwnerScript.CreatureRelease
		end
	end
end

blobman_grab = nil

do
	blobman_grab = function(p989, p990)
		PS:FindFirstChild(p989)

		local Humanoid = LocalPlayer4.Character:FindFirstChildOfClass("Humanoid")
		local v3762 = GetPlayerCFrame()

		if not blobmanVerification() then
			for i = 0, 5 do
				for i2 = 0, 150 do
					if blobmanVerification() then
						break
					end

					SitOnBlobman(true)
					wait(0.05)
				end
			end
		end

		if blobmanVerification() then
			local v3765 = GetBlobmanFunctions()
			local v3768 = PS:FindFirstChild(p989)

			if v3768 and v3768.Character then
				if v3768.Character:FindFirstChild("HumanoidRootPart") and v3765 and not verifyDev(v3768) then
					local t134 = {
						v3765.LeftDetector,
						v3768.Character.HumanoidRootPart,
						v3765.LeftDetector.LeftWeld
					}

					GrabArgs2 = {
						v3765.RightDetector,
						v3768.Character.HumanoidRootPart,
						v3765.RightDetector.RightWeld
					}
					SilenceGrabArgs = {
						nil,
						v3768.Character.HumanoidRootPart,
						nil
					}

					if p990 == 1 then
						if v3765.Parent == u112 then
							task.wait(0.2)
							DeleteToyRE:FireServer(v3765)
						else
							result:MakeNotification({
								Name = "You need to be seated on Blobman",
								Content = "The Blobman needs to be your own toy",
								Image = "rbxassetid://4483345998",
								Time = 5
							})
						end
					elseif p990 == 2 then
						local Character = PS:FindFirstChild(p989).Character
						local HumanoidRootPart = Character.HumanoidRootPart

						Character:FindFirstChildOfClass("Humanoid")

						local exitTo

						for i = 0, 50 do
							if not blobmanVerification() then
								break
							end

							if verifyPlayerinBlobmanHand(v3768) then
								exitTo = 1

								break
							end

							TeleportPlayer(CFrame.new(HumanoidRootPart.CFrame.Position + Vector3.new(10, 0, 0)))
							CreatureGrab:FireServer(unpack(t134))
							task.wait(0.1)
						end

						if exitTo == 1 then
							for i = 0, 15 do
								TeleportPlayer(v3762)
								task.wait()
							end

							local Attachment0 = v3765.LeftDetector.LeftWeld.Attachment0

							v3765.LeftDetector.LeftWeld.Attachment0 = nil
							task.wait()
							Humanoid.Sit = false
							task.wait(0.5)
							v3765.LeftDetector.LeftWeld.Attachment0 = Attachment0
						end

						for i = 0, 15 do
							TeleportPlayer(v3762)
							task.wait()
						end
					elseif not (p990 or _G.BlobmanBringing) then
						local Character = PS:FindFirstChild(p989).Character
						local HumanoidRootPart = Character.HumanoidRootPart

						Character:FindFirstChildOfClass("Humanoid")

						local v3779 = GetPlayerCFrame()

						for i = 0, 50 do
							if verifyPlayerinBlobmanHand(v3768) or not blobmanVerification() then
								break
							end

							TeleportPlayer(CFrame.new(HumanoidRootPart.CFrame.Position + Vector3.new(10, 0, 0)))
							CreatureGrab:FireServer(unpack(t134))
							_G.BlobmanBringing = true
							task.wait(0.1)
						end

						_G.BlobmanBringing = false

						for i = 0, 15 do
							TeleportPlayer(v3779)
							task.wait()
						end
					end
				end
			end
		end
	end
end

BlobKickSavePos = nil
Blobman_Kick = function(p991)
	if CheckPlayerWF(p991, false) then
		if p991.Character:GetAttribute("Kicking") then
			return
		end

		local v3782, v3783 = GetBlobmanFunctions()

		if not v3782 then
			SitOnBlobman(true)
			task.wait()

			return
		end

		local v3784 = p991
		local Character = v3784.Character
		local HumanoidRootPart = Character.HumanoidRootPart

		HumanoidRootPart.Massless = false
		SetCollisionObjectOff(Character)

		local v3787 = Getdistancefromcharacter(HumanoidRootPart.Position)

		if not BlobKickSavePos then
			BlobKickSavePos = GetPlayerCFrame()
		end

		if IsPlayerInsideSafeZone(v3784) then
			local CFrame_ = HumanoidRootPart.CFrame
			local exitTo

			for i = 0, 10 do
				if BlobPOwner(p991) then
					exitTo = 1

					break
				end

				task.wait(0.25)
			end

			if exitTo == 1 then
				HumanoidRootPart.CFrame = CFrame.new(CFrame_.Position + Vector3.new(0, 125, 0))

				for i = 0, 15 do
					if IsPlayerInsideSafeZone(v3784) then
						task.wait(0.05)

						continue
					end

					break
				end
			end
		end

		if not CheckNetworkOwnerShipOnPlayer(v3784) and v3787 > 30 then
			TeleportPlayer(HumanoidRootPart.CFrame)
		end

		if CheckNetworkOwnerShipOnPlayer(v3784) then
			if IsPlayerInAir(v3784, 35) then
				for i = 0, 5 do
					if IsNetworkOwner(HumanoidRootPart) then
						HumanoidRootPart.CFrame = CFrame.new(_G.UniversalPlayerRoot.CFrame.Position + Vector3.new(0, 40, 0))
						task.wait(0.0025)
					end
				end

				for i = 0, 5 do
					v118:FireServer(HumanoidRootPart)
					task.wait(0.0025)
				end

				task.wait(0.01)
				v3783:FireServer(v3782.LeftDetector, HumanoidRootPart, v3782.LeftDetector.LeftWeld)
				TeleportPlayer(BlobKickSavePos)
				BlobKickSavePos = nil
				Character:SetAttribute("Kicking", true)
				task.delay(18, function()
					Character:SetAttribute("Kicking", nil)
				end)
			else
				HumanoidRootPart.CFrame = CFrame.new(_G.UniversalPlayerRoot.CFrame.Position + Vector3.new(0, 40, 0))
			end
		else
			SNOWshipPlayer(v3784)
		end
	end
end

do
	FunctionsLoopKick_Section:AddToggle({
		Name = "Loop Kick <font color='#590505'>「</font><font color='#db0909'>BLOBMAN</font><font color='#590505'>」</font>",
		Default = false,
		Callback = function(p992)
			_G.LoopKick = p992

			if p992 then
				while _G.LoopKick do
					for _, v in pairs(t11) do
						local v3796 = PS:FindFirstChild(v)
						local Character = v3796 and v3796.Character
						local attribute = Character and Character:GetAttribute("Kicking")

						if v3796 and Character and not attribute then
							while v3796.Parent and Character.Parent and not Character:GetAttribute("Kicking") and _G.LoopKick do
								Blobman_Kick(v3796)
								task.wait()
							end

							task.wait(1)
						end
					end

					task.wait()
				end
			end
		end,
		Save = false,
		Flag = "lkick_toggle"
	})
end

PlayerToSelect = LongReachGrab_Player:AddPlayersDropdown({
	Name = "Select Player",
	Default = "",
	MultipleSelection = false,
	SearchBar = true,
	Callback = function(p993)
		_G.PlayerToLongGrab = p993
	end
})
MakeSearchBar(PlayerToSelect, LongReachGrab_Player)
blobmankick_threads = {}

do
	CancelKicksInRow = function()
		for _, v in pairs(blobmankick_threads) do
			task.cancel(v)
			blobmanHandKickLabel:Set("Status:")
		end
	end
end

LongReachGrab_Player:AddButton({
	Name = "Lock",
	Callback = function()
		blobmanHandKickLabel:Set("Status: Locking!")
		blobman_grab(_G.PlayerToLongGrab, 2)
		blobmanHandKickLabel:Set("Status:")
	end
})
BlobmanBringOldPosition = nil
LongReachGrab_Player:AddButton({
	Name = "Bring",
	Callback = function()
		blobmanHandKickLabel:Set("Status: Bringing!")
		blobman_grab(_G.PlayerToLongGrab)
		blobmanHandKickLabel:Set("Status:")
	end
})
LongReachGrab_Player:AddButton({
	Name = "Kick",
	Callback = function()
		local thread = task.spawn(function()
			while true do
				blobmanHandKickLabel:Set("Status: Kicking")

				local _GPlayerToLongGrab = PS:FindFirstChild(_G.PlayerToLongGrab)

				if not _GPlayerToLongGrab then
					break
				end

				local Character = _GPlayerToLongGrab.Character
				local attribute = Character and Character:GetAttribute("Kicking")

				if Character and not attribute then
					while _GPlayerToLongGrab.Parent and Character.Parent and not Character:GetAttribute("Kicking") do
						Blobman_Kick(_GPlayerToLongGrab)
						task.wait()
					end

					task.wait(1)
				end

				task.wait()
			end

			notify(_G.PlayerToLongGrab .. " has been kicked from the game!")
		end)

		table.insert(blobmankick_threads, thread)
	end
})
blobmanHandKickLabel = LongReachGrab_Player:AddLabel("Status:")
LongReachGrab_Player:AddButton({
	Name = "Stop Kick",
	Callback = function()
		CancelKicksInRow()
	end
})
DestroyEverything = LongReachGrab_Player:AddSection({
	Name = "Destroy Everything"
})
DestroyServerTCycle = nil

do
	DestroyEverything:AddToggle({
		Name = "Destroy Server",
		Default = false,
		Callback = function(p994)
			_G.BringAllLongReach = p994

			if p994 then
				local u3805
				local u3806
				local u3807
				local u3808

				if not DoesPlayerHasThisToy("CreatureBlobman") and Coins() < 750 then
					result:MakeNotification({
						Name = "Destroy Server",
						Content = "You don't have a blobman in your inventory, the script is going to find a other player blobman",
						Image = "rbxassetid://16570630989",
						Time = 5
					})
				end

				task.spawn(function()
					while _G.BringAllLongReach do
						local v3809, v3810, v3811, v3812 = GetBlobmanFunctions()

						u3805 = v3809
						u3806 = v3810
						u3807 = v3811
						u3808 = v3812
						task.wait(0.025)
					end
				end)
				DestroyServerTCycle = task.spawn(function()
					while _G.BringAllLongReach do
						local v3813 = GetPlayerCFrame()
						local t135 = {}

						for _, player in ipairs(PS:GetPlayers()) do
							if player ~= LocalPlayer4 and not CheckFriendsWithCondition(player.Name, _G.WhitelistFriends2) then
								local Character = player.Character
								local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
								local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

								if Character and Humanoid and HumanoidRootPart then
									table.insert(t135, {
										Player = player,
										Character = Character,
										Humanoid = Humanoid,
										HumanoidRootPart = HumanoidRootPart
									})
								end
							end
						end

						for _, v in ipairs(t135) do
							for _, child in pairs(v.Character:GetChildren()) do
								if child:IsA("BasePart") and child.Massless then
									child.Massless = false
								end
							end
						end

						for _, v in ipairs(t135) do
							local Humanoid = v.Humanoid

							for i = 0, 25 do
								if BlobPOwner(v.Player) or Humanoid.Health <= 0 or not _G.BringAllLongReach then
									Humanoid.WalkSpeed = 0

									break
								end

								task.wait(0.025)
							end
						end

						local vector3 = Vector3.new(0, 100, 0)
						local v3829 = #t135
						local t136 = {}

						if v3829 == 0 then
							return
						end

						local u3831 = true

						task.spawn(function()
							repeat
								TeleportPlayer(CFrame.new(vector3))

								for i, v in ipairs(t135) do
									local v3834 = i / v3829 * math.pi * 2

									v.HumanoidRootPart.CFrame = CFrame.new(vector3 + Vector3.new(math.cos(v3834) * 25, 0, math.sin(v3834) * 25))
								end

								task.wait()
							until u3831 == false or not _G.BringAllLongReach
						end)

						for _, v in ipairs(t135) do
							task.spawn(function()
								local HumanoidRootPart = v.HumanoidRootPart

								for i = 0, 20 do
									if SNOWshipPlayer(v.Player) then
										v118:FireServer(HumanoidRootPart)
										task.wait(LocalPlayer4:GetNetworkPing())

										if u3806 then
											u3806:FireServer(u3805.RightDetector, HumanoidRootPart, u3805.RightDetector.RightWeld)
										end

										break
									end

									task.wait(0.015)
								end
							end)
						end

						task.delay(5, function()
							u3831 = false

							for _, v in ipairs(t136) do
								v:Destroy()
							end

							table.clear(t136)
							table.clear(t135)
							TeleportPlayer(v3813)
						end)
						task.wait(20)
					end
				end)
			elseif typeof(DestroyServerTCycle) == "thread" then
				task.cancel(DestroyServerTCycle)
				DestroyServerTCycle = nil
			end
		end,
		Save = false,
		Flag = "BringAllLongReach_toggle"
	})
end

do
	DestroyEverything:AddToggle({
		Name = "Whitelist Friends",
		Default = false,
		Callback = function(p995)
			_G.WhitelistFriends2 = p995
		end,
		Save = true,
		Flag = "Whitelistfreinds2_toggle"
	})
end

apagarfogo = W.Map.Hole.PoisonBigHole.ExtinguishPart
apagarfogo.Size = Vector3.new(0.5, 0.5, 0.5)
apagarfogo.Transparency = 1
apagarfogo.Tex.Transparency = 1
cooldownforgrabparts_original = nil
destroygrablinethread = nil

do
	ExecuteSSEffect = function(p996, p997)
		local t137 = { {
			Caster = game.Players.LocalPlayer,
			Command = "BlackFlashV2",
			Target = GetFullPath(p996),
			PlayerTarget = p997.Parent.Name
		} }

		if SuperStrengthEffectV2 then
			if EffectsChar == "Mahito" then
				BlackFlashSupremeVFXMahito(p997, _G.UniversalPlayerHead)
				t137[1].Command = "BlackFlashV2_Mahito"
			elseif EffectsChar == "Sukuna" then
				BlackFlashSupremeVFXSukuna(p997, _G.UniversalPlayerHead)
				t137[1].Command = "BlackFlashV2_Sukuna"
			else
				BlackFlashSupremeVFX(p997, _G.UniversalPlayerHead)
			end
		end

		v117:FireServer(unpack(t137))
	end
end

do
	W.ChildAdded:Connect(function(child)
		if child.Name == "GrabParts" then
			local Part1 = child.GrabPart.WeldConstraint.Part1

			if not child:GetAttribute("Fake") then
				if cooldownforgrabparts_original then
					task.cancel(cooldownforgrabparts_original)
				end

				_G.RealGrabParts = child
			end

			if Part1 then
				_G.RealGrabPartsHolding = Part1
				_G.GPartsHold = Part1

				if verifyDev(Part1.Parent) then
					if GetAdminState(Part1.Parent.Name, "AntiGrab") then
						child.DragPart.AlignOrientation.Enabled = false
						child.DragPart.AlignPosition.Enabled = false

						for i = 0, 50 do
							RS_.GrabEvents.EndGrabEarly:FireServer()
							v118:FireServer(Part1)
							wait()
						end

						print("Destroy Grab Line")
					end

					return
				end

				if _G.RemoveLimbsGrab then
					task.spawn(function()
						if Part1.Parent:FindFirstChildOfClass("Humanoid") then
							PS:GetPlayerFromCharacter(Part1.Parent)

							local HumanoidRootPart = Part1.Parent:FindFirstChild("HumanoidRootPart")
							local Head = Part1.Parent:FindFirstChild("Head")
							local Torso = Part1.Parent:FindFirstChild("Torso")
							local Humanoid = Part1.Parent:FindFirstChildOfClass("Humanoid")

							if HumanoidRootPart and Head and Torso and Humanoid then
								local function v3848()
									local Parent = Part1.Parent
									local v3850 = Torso
									local CFrame_ = Torso.CFrame
									local CFrame_2 = Head.CFrame
									local CFrame_3 = HumanoidRootPart.CFrame
									local n61 = -92
									local BodyVelocity = Instance.new("BodyVelocity", HumanoidRootPart)

									BodyVelocity.MaxForce = Vector3.new(1, 1, 1) * math.huge
									BodyVelocity.Velocity = Vector3.new(0, 0, 0)

									local BodyVelocity2 = Instance.new("BodyVelocity", Head)

									BodyVelocity2.MaxForce = Vector3.new(1, 1, 1) * math.huge
									BodyVelocity2.Velocity = Vector3.new(0, 0, 0)

									local BodyVelocity3 = Instance.new("BodyVelocity", Torso)

									BodyVelocity3.MaxForce = Vector3.new(1, 1, 1) * math.huge
									BodyVelocity3.Velocity = Vector3.new(0, 0, 0)

									local function v3858()
										for _, v in pairs(_G.LimbsToRemove) do
											if Part1.Parent:FindFirstChild(v) then
												Parent[v].CFrame = CFrame.new() + Vector3.new(10000, -102, 10000)
												v3850.CFrame = CFrame.new() + Vector3.new(10000, n61, 10000)
												Parent.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
												v3850.CFrame = CFrame.new() + Vector3.new(10000, n61, 10000)
												Parent.Head.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
												v3850.CFrame = CFrame.new() + Vector3.new(10000, n61, 10000)
												Parent.Head.CFrame = CFrame_2
												v3850.CFrame = CFrame.new() + Vector3.new(10000, n61, 10000)
												Parent.HumanoidRootPart.CFrame = CFrame_3
												v3850.CFrame = CFrame.new() + Vector3.new(10000, n61, 10000)
											end
										end
									end

									v3858()
									task.wait()
									v3850.CFrame = CFrame_
									task.wait(1)
									n61 = -100
									v3858()
									task.wait()
									Head.CFrame = CFrame_2
									Head.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
									Torso.CFrame = CFrame_
									Torso.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
									HumanoidRootPart.CFrame = CFrame_3
									HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
									DB:AddItem(BodyVelocity, 0.5)
									DB:AddItem(BodyVelocity2, 0.5)
									DB:AddItem(BodyVelocity3, 0.5)
								end

								while child.Parent and _G.RemoveLimbsGrab do
									local v3861 = true

									for _, v in pairs(_G.LimbsToRemove) do
										if not Part1.Parent:FindFirstChild(v) then
											continue
										end

										if not (Humanoid.Health < 1) then
											v3861 = false

											if Humanoid.Ragdolled.Value then
												W.FallenPartsDestroyHeight = -100
												v3848()

												if _G.AntiVoid then
													W.FallenPartsDestroyHeight = (0/0)
												end
											else
												for i = 0, 1, 0.3 do
													ColissionPallet(Head.Position:Lerp(Head.Position + Vector3.new(0, 2, 0), i))
													task.wait(0.01)
												end

												wait(0)
												ColissionPallet(Vector3.new(0, 1000, 0))
											end

											continue
										end

										break
									end

									if not v3861 then
										wait()

										continue
									end

									break
								end
							end
						end
					end)
				end

				if _G.InvisibleLine then
					v117:FireServer()
				end

				if _G.Ragdoll_Grab then
					task.spawn(function()
						if Part1.Parent:FindFirstChildOfClass("Humanoid") then
							local HumanoidRootPart = Part1.Parent.HumanoidRootPart
							local Humanoid = Part1.Parent:FindFirstChildOfClass("Humanoid")

							while child.Parent and _G.Ragdoll_Grab and not (Humanoid.Health < 1) do
								ColissionPallet(HumanoidRootPart.Position)
								wait()
								ColissionPallet(Vector3.new(0, 1000, 0))
							end
						end
					end)
				end

				_G.HoldingObjectGrabPart = Part1

				if _G.MasslessGrab then
					task.spawn(function()
						local AlignOrientation = child.DragPart.AlignOrientation
						local AlignPosition = child.DragPart.AlignPosition

						while _G.MasslessGrab do
							AlignOrientation.MaxTorque = 1e46
							AlignOrientation.Responsiveness = 20099
							AlignPosition.MaxForce = 1e51
							AlignPosition.Responsiveness = 20099
							task.wait(0.245)
						end

						AlignOrientation.MaxTorque = 600000
						AlignOrientation.Responsiveness = 30
						AlignPosition.MaxForce = 60000
						AlignPosition.Responsiveness = 40
					end)
				end

				if _G.NoclipGrab and not Part1.Anchored then
					task.spawn(function()
						if Part1.Parent then
							if Part1.Parent:IsA("Model") then
								local t138 = {}
								local descendants = Part1.Parent:GetDescendants()
								local Humanoid = Part1.Parent:FindFirstChildOfClass("Humanoid")

								for _, descendant in pairs(descendants) do
									if descendant:IsA("BasePart") or descendant:IsA("Part") or descendant:IsA("MeshPart") then
										t138[descendant] = descendant.CanCollide
									end
								end

								while child.Parent do
									for _, descendant in pairs(descendants) do
										if descendant:IsA("BasePart") or descendant:IsA("Part") or descendant:IsA("MeshPart") then
											descendant.CanCollide = false
										end
									end

									wait(0.214)
								end

								if Humanoid then
									task.wait(0.5)
								end

								for _, descendant in pairs(descendants) do
									if descendant:IsA("BasePart") or descendant:IsA("Part") or descendant:IsA("MeshPart") then
										descendant.CanCollide = t138[descendant]
									end
								end
							end
						end
					end)
				end

				if _G.PerspectiveGrab and not Part1.Anchored then
					task.spawn(function()
						local v3878 = GetPlayerCharacter()
						local Humanoid
						local HumanoidRootPart

						v117:FireServer()

						if v3878 then
							Humanoid = v3878:FindFirstChildOfClass("Humanoid")
							HumanoidRootPart = v3878:FindFirstChild("HumanoidRootPart")
						end

						local Part_ = Instance.new("Part", W)

						Part_.Anchored = true
						Part_.CanCollide = false
						Part_.Transparency = 1
						Part_.CanQuery = false
						Part_.Size = Vector3.new()
						Part_.CFrame = workspace.CurrentCamera.CFrame
						workspace.CurrentCamera.CameraType = Enum.CameraType.Follow
						workspace.CurrentCamera.CameraSubject = Part_

						if connection then
							connection:Disconnect()
						end

						if Humanoid and HumanoidRootPart then
							local v3882 = GetPlayerCFrame()

							turnPerspectiveMode(true)

							local u3883
							local CFrame_
							local CFrame_2
							local Position
							local Position2
							local Position3
							local u3889

							connection = R.Heartbeat:Connect(function(dt)
								u3883 = Humanoid.MoveDirection * (n45 * dt)
								CFrame_ = Part_.CFrame
								CFrame_2 = workspace.CurrentCamera.CFrame
								Position = CFrame_:ToObjectSpace(CFrame_2).Position
								CFrame_2 *= CFrame.new(-Position.X, -Position.Y, -Position.Z + 1)
								Position2 = CFrame_2.Position
								Position3 = CFrame_.Position
								u3889 = CFrame.new(Position2, Vector3.new(Position3.X, Position2.Y, Position3.Z)):VectorToObjectSpace(u3883)

								local v3890 = CFrame_2 - Position2

								Part_.CFrame = CFrame.new(Position3) * v3890 * CFrame.new(u3889)
								HumanoidRootPart.CFrame = CFrame.new(527, 123, -376)
							end)

							while child.Parent do
								task.wait()
							end

							local CFrame_3 = workspace.CurrentCamera.CFrame

							turnPerspectiveMode(false)
							workspace.CurrentCamera.CameraSubject = LocalPlayer4.Character:FindFirstChildOfClass("Humanoid")
							workspace.CurrentCamera.CameraType = Enum.CameraType.Custom

							if connection then
								connection:Disconnect()
							end

							if _G.PerspectiveTeleportToCameraPos then
								HumanoidRootPart.CFrame = CFrame_3
							else
								HumanoidRootPart.CFrame = v3882
							end
						end
					end)
				end

				task.spawn(function()
					local Parent
					local connection2
					local connection3

					if not LocalPlayer4.PlayerGui:FindFirstChild("ContextActionGui") then
						return
					end

					if Parent == nil and child.Parent then
						repeat
							for _, descendant in pairs(game.Players.LocalPlayer.PlayerGui.ContextActionGui:GetDescendants()) do
								if descendant:IsA("ImageLabel") and descendant.Image == "http://www.roblox.com/asset/?id=9603678090" then
									Parent = descendant.Parent
								end
							end

							task.wait()
						until Parent ~= nil or not child.Parent

						Parent.Active = true

						if Parent then
							connection2 = Parent.MouseButton1Down:Connect(function()
								if _G.SuperStrength then
									task.spawn(function()
										if Part1.Anchored then
											Part1.AssemblyLinearVelocity = Vector3.zero

											return
										end

										local lookVector = workspace.CurrentCamera.CFrame.lookVector

										for i = 0, 100 do
											if Part1.Anchored then
												Part1.AssemblyLinearVelocity = Vector3.zero

												break
											end

											Part1.AssemblyLinearVelocity = lookVector * _G.Strength
											task.wait(0.015)
										end

										Part1.AssemblyLinearVelocity = Vector3.zero
									end)

									local Head = Part1 and Part1.Parent:FindFirstChildOfClass("Humanoid") and Part1.Parent:FindFirstChild("Head")

									if Head then
										ExecuteSSEffect(Part1, Head)
									end
								end
							end)
						end
					else
						Parent.Active = true
					end

					connection3 = child:GetPropertyChangedSignal("Parent"):Connect(function()
						if not child.Parent then
							if connection2 then
								connection2:Disconnect()
							end

							connection3:Disconnect()
						end
					end)
				end)
				task.spawn(function()
					local connection2

					connection2 = child:GetPropertyChangedSignal("Parent"):Connect(function()
						if not child.Parent then
							if UserInputService:GetLastInputType() == Enum.UserInputType.MouseButton2 and _G.SuperStrength then
								task.spawn(function()
									if Part1.Anchored then
										Part1.AssemblyLinearVelocity = Vector3.zero

										return
									end

									local lookVector = workspace.CurrentCamera.CFrame.lookVector

									for i = 0, 100 do
										if Part1.Anchored then
											Part1.AssemblyLinearVelocity = Vector3.zero

											break
										end

										Part1.AssemblyLinearVelocity = lookVector * _G.Strength
										task.wait(0.015)
									end

									Part1.AssemblyLinearVelocity = Vector3.zero
								end)

								local Head = Part1 and Part1.Parent:FindFirstChildOfClass("Humanoid") and Part1.Parent:FindFirstChild("Head")

								if Head then
									ExecuteSSEffect(Part1, Head)
								end
							end

							connection2:Disconnect()
						end
					end)
				end)

				if _G.Burn_Grab then
					task.spawn(function()
						while child.Parent and _G.Burn_Grab do
							if Part1.Parent:FindFirstChildOfClass("Humanoid") then
								Burn(Part1.Parent.HumanoidRootPart)
							elseif Part1.Parent:FindFirstChild("FireDetector") then
								Burn(Part1.Parent.FireDetector)
							else
								Burn(Part1)
							end

							task.wait()
						end
					end)
				end

				if _G.Death_Grab then
					task.spawn(function()
						if Part1.Parent:FindFirstChildOfClass("Humanoid") then
							local HumanoidRootPart = Part1.Parent.HumanoidRootPart
							local Parent = HumanoidRootPart and HumanoidRootPart.Parent
							local playerFromCharacter = PS:GetPlayerFromCharacter(Parent)

							if not Parent or not HumanoidRootPart then
								return
							end

							while Parent.Parent and HumanoidRootPart.Parent do
								if CheckNetworkOwnerShipOnPlayer(playerFromCharacter) or IsNetworkOwner(HumanoidRootPart) then
									SetCollisionObjectOff(Parent)
									W.FallenPartsDestroyHeight = -50000
									HumanoidRootPart.CFrame = CFrame.new(0, -49900, 0)
									task.wait(0.1)
									HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, -1000000, 0)
									R:UnbindFromRenderStep("dragBinding")
									R:UnbindFromRenderStep("buttonDistanceMoving")
									child:Destroy()
								end

								task.wait()
							end
						end
					end)
				end
			end
		end
	end)
end

W.ChildRemoved:Connect(function(child)
	if child.Name == "GrabParts" and not child:GetAttribute("Fake") then
		_G.RealGrabPartsHolding = nil
		_G.GPartsHold = nil
		cooldownforgrabparts_original = task.spawn(function()
			wait()
			_G.RealGrabParts = nil
		end)
	end
end)
W.Plots.DescendantAdded:Connect(function(descendant)
	if descendant.Name == "TimeRemainingNum" and descendant.Parent.Value == LocalPlayer4.Name then
		_G.RemainingTimeInHouse = descendant
	end
end)

do
	W.ChildAdded:Connect(function(child)
		if child.Name == "Part" then
			for _, child2 in pairs(child:GetChildren()) do
				if child2:IsA("Sound") then
					if child2.SoundId == "rbxassetid://25270310" or child2.SoundId == "rbxassetid://3149249837" then
						child2.SoundGroup = BombsSound_Group
					elseif child2.SoundId == "rbxassetid://1837834122" then
						child2.SoundGroup = BombsSound_Group
					elseif child2.SoundId == "rbxassetid://3149249837" or child2.SoundId == "rbxassetid://3149249837" then
						child2.SoundGroup = BombsSound_Group
					elseif (child2.SoundId == "rbxassetid://26723422" or child2.SoundId == "rbxassetid://2959895271") and tostring(child2.Parent) == "Part" then
						child2.SoundGroup = BombsSound_Group
					elseif child2.SoundId == "rbxassetid://9114221264" then
						child2.SoundGroup = BombsSound_Group
					elseif child2.SoundId == "http://www.roblox.com/asset/?id=16433289" then
						child2.SoundGroup = BombsSound_Group
					end
				end
			end
		end
	end)
end

onHeadChild = function(p998)
	if p998.Name == "PartOwner" then
		local HumanoidRootPart = p998.Parent.Parent:FindFirstChild("HumanoidRootPart")

		if HumanoidRootPart:FindFirstChild("SkyVelocity") then
			HumanoidRootPart.SkyVelocity:Destroy()
		end

		if HumanoidRootPart:FindFirstChild("BringBody") then
			HumanoidRootPart.BringBody:Destroy()
		end
	end
end
onScreamSound = function(p999)
	if p999.Name == "Scream" then
		p999.SoundGroup = ScreamsSound_Group
	end
end

do
	task.spawn(function()
		for _, player in pairs(PS:GetPlayers()) do
			local Head = player.Character:WaitForChild("Head", 5)
			local HumanoidRootPart = player.Character:WaitForChild("HumanoidRootPart", 5)

			if Head then
				local PartOwner = Head:FindFirstChild("PartOwner")

				if PartOwner then
					onHeadChild(PartOwner)
				end

				Head.ChildAdded:Connect(onHeadChild)
			end

			if HumanoidRootPart then
				HumanoidRootPart.ChildAdded:Connect(onScreamSound)

				local Scream = HumanoidRootPart:FindFirstChild("Scream")

				if Scream then
					onScreamSound(Scream)
				end
			end

			player.CharacterAdded:Connect(function(character)
				local Head2 = character:WaitForChild("Head", 5)
				local HumanoidRootPart2 = character:WaitForChild("HumanoidRootPart", 5)

				if Head2 then
					local PartOwner = Head2:FindFirstChild("PartOwner")

					if PartOwner then
						onHeadChild(PartOwner)
					end

					Head2.ChildAdded:Connect(onHeadChild)
				end

				if HumanoidRootPart2 then
					local Scream = HumanoidRootPart2:FindFirstChild("Scream")

					if Scream then
						onScreamSound(Scream)
					end

					HumanoidRootPart2.ChildAdded:Connect(onScreamSound)
				end
			end)
		end
	end)
end

do
	PS.PlayerAdded:Connect(function(player)
		player.CharacterAdded:Connect(function(character)
			local Head = character:WaitForChild("Head", 5)
			local HumanoidRootPart = character:WaitForChild("HumanoidRootPart", 5)

			if Head then
				local PartOwner = Head:FindFirstChild("PartOwner")

				if PartOwner then
					onHeadChild(PartOwner)
				end

				Head.ChildAdded:Connect(onHeadChild)
			end

			if HumanoidRootPart then
				local Scream = HumanoidRootPart:FindFirstChild("Scream")

				if Scream then
					onScreamSound(Scream)
				end

				HumanoidRootPart.ChildAdded:Connect(onScreamSound)
			end
		end)
	end)
end

task.spawn(function()
	for _, descendant in pairs(workspace.Map.MapNoises:GetDescendants()) do
		if descendant:IsA("Sound") then
			descendant.SoundGroup = BGSound_Group
		end
	end
end)
task.spawn(function()
	for _, child in pairs(workspace:GetChildren()) do
		if child:IsA("Folder") then
			for _, child2 in pairs(child:GetChildren()) do
				if child2:IsA("Model") and child2:FindFirstChildOfClass("Humanoid") then
					for _, child3 in pairs(child2:GetChildren()) do
						local Scream = child3:FindFirstChild("Scream")

						if Scream then
							Scream.SoundGroup = ScreamsSound_Group
						end
					end
				end
			end
		end
	end

	for _, player in pairs(PS:GetPlayers()) do
		local Character = player.Character or player.CharacterAdded:Wait()

		if Character then
			local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

			if HumanoidRootPart then
				local Scream = HumanoidRootPart:FindFirstChild("Scream")

				if Scream then
					Scream.SoundGroup = ScreamsSound_Group
				end
			end
		end
	end
end)

do
	if BeingHeld then
		BeingHeld.Changed:Connect(function(p1000)
			if p1000 == true and _G.AntiGrab then
				local v3938 = PS:FindFirstChild(PlayerWhoIsHolding)

				if not v3938 then
					return
				end

				if _G.AntiGrabWF and IsFriend(v3938.Name) then
					return
				end

				if verifyDev(v3938) then
					return
				end

				local Character = LocalPlayer4.Character or LocalPlayer4.CharacterAdded:Wait()
				local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart", 5)
				local Humanoid = Character:WaitForChild("Humanoid", 5)
				local Ragdolled = Humanoid and Humanoid:FindFirstChild("Ragdolled")

				if not HumanoidRootPart or not Humanoid or not Ragdolled then
					return
				end

				if BeingHeld.Value then
					if typeof(AntiGrabC) == "RBXScriptConnection" then
						return
					end

					local n62 = 0
					local connection2 = R.RenderStepped:Connect(function(dt)
						local MoveDirection = Humanoid.MoveDirection

						if MoveDirection.Magnitude > 0 then
							HumanoidRootPart.CFrame += MoveDirection * 16 * dt
						end
					end)

					AntiGrabC = R.Heartbeat:Connect(function()
						if BeingHeld.Value then
							HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
							HumanoidRootPart.Anchored = true
							Humanoid.Sit = false
							Humanoid.AutoRotate = true
							Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
							Ragdolled.Value = false
							CAS:UnbindAction("JumpRemover")

							if math.clamp(LocalPlayer4:GetNetworkPing() * 2, 0, 0.1) <= os.clock() - n62 then
								if StruggleEvent then
									StruggleEvent:FireServer(LocalPlayer4)
								end

								if v134 then
									v134:FireServer(HumanoidRootPart, 0)
								end

								n62 = os.clock()
							end
						else
							HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
							HumanoidRootPart.Anchored = false
							AntiGrabC:Disconnect()
							connection2:Disconnect()
							AntiGrabC = nil
							connection2 = nil
						end
					end)
				end
			end
		end)
	end
end

checkIfPlayerInRagdollAntiExplosion = function()
	return _G.IsCharacterInRagdoll and _G.AntiExplosion
end
setMasslessFalse = function(p1001)
	for _, descendant in ipairs(p1001:GetDescendants()) do
		if descendant:IsA("BasePart") then
			descendant.Massless = false
		end
	end
end
enforceMasslessFalse = function(p1002)
	p1002.DescendantAdded:Connect(function(descendant)
		if descendant:IsA("BasePart") then
			descendant:GetPropertyChangedSignal("Massless"):Connect(function()
				if descendant.Massless then
					descendant.Massless = false
				end
			end)
		end
	end)

	for _, descendant in ipairs(p1002:GetDescendants()) do
		if descendant:IsA("BasePart") then
			descendant:GetPropertyChangedSignal("Massless"):Connect(function()
				if descendant.Massless then
					descendant.Massless = false
				end
			end)
		end
	end
end
bangAnim = Instance.new("Animation")
bangAnim.AnimationId = "rbxassetid://148840371"
StartAnimSarrar = function()
	if not _G.SarradaAnim.IsPlaying then
		_G.SarradaAnim:Play()
	end
end

do
	local t139 = {
		Head = true,
		["Right Arm"] = true,
		["Left Arm"] = true,
		["Left Leg"] = true,
		["Right Leg"] = true,
		Torso = true
	}

	makeModelInvisible = function(p1003)
		for _, descendant in ipairs(p1003:GetDescendants()) do
			if descendant:IsA("BasePart") then
				descendant.Transparency = 1

				if descendant:FindFirstChildOfClass("Decal") then
					descendant:FindFirstChildOfClass("Decal").Transparency = 1
				end
			end
		end
	end
	resetCloneHumanoid = function(p1004)
		if not p1004 or not p1004.Parent then
			return
		end

		p1004.Sit = false
		p1004.PlatformStand = false
		p1004:ChangeState(Enum.HumanoidStateType.GettingUp)
	end
	saveCameraSubjectBeforeClone = function()
		local CameraSubject = W.CurrentCamera.CameraSubject

		if CameraSubject and CameraSubject ~= _G.CloneHumanoid then
			_G.PreCloneCameraSubject = CameraSubject
		end
	end
	restoreCameraSubjectAfterClone = function()
		_G.PreCloneCameraSubject = nil

		if _G.PreCloneCameraSubject and _G.PreCloneCameraSubject.Parent then
			W.CurrentCamera.CameraSubject = _G.PreCloneCameraSubject
		else
			W.CurrentCamera.CameraSubject = _G.UniversalPlayerHumanoid
		end
	end
	makeAcloneyourself = function()
		if _G.CloneChar and _G.CloneSourceChar ~= _G.UniverChar then
			deleteClone()
		end

		if _G.CloneChar and (not _G.CloneChar or _G.CloneChar.Parent) then
			if _G.CloneChar and _G.CloneChar.Parent and _G.CloneDisabled then
				_G.CloneDisabled = false
				_G.CloneHRP.Anchored = false

				local CFrame_ = _G.UniversalPlayerRoot.CFrame

				if _G.LastReturnTime and tick() - _G.LastReturnTime < 1 then
					CFrame_ = _G.LastReturnCFrame
				end

				_G.CloneHRP.CFrame = CFrame_
				_G.CloneHRP.AssemblyLinearVelocity = _G.UniversalPlayerRoot.AssemblyLinearVelocity
				resetCloneHumanoid(_G.CloneHumanoid)
				saveCameraSubjectBeforeClone()
				W.CurrentCamera.CameraSubject = _G.CloneHumanoid

				if UserInputService:IsKeyDown(Enum.KeyCode.Space) and _G.CloneHumanoid and _G.CloneHumanoid.Parent then
					task.defer(function()
						if _G.CloneHumanoid and _G.CloneHumanoid.Parent then
							_G.CloneHumanoid.Jump = true
						end
					end)
				end
			end
		else
			local UniverChar = _G.UniverChar

			UniverChar.Archivable = true

			local Humanoid = UniverChar:FindFirstChild("Humanoid")

			if UniverChar:FindFirstChild("HumanoidRootPart") and Humanoid and Humanoid.Health > 0 then
				local clone = UniverChar:Clone()

				clone.Name = "YourClone"
				clone.Parent = workspace.PlotItems.PlayersInPlots

				local Humanoid2 = clone:FindFirstChildOfClass("Humanoid")
				local HumanoidRootPart = clone:FindFirstChild("HumanoidRootPart")

				_G.CloneChar = clone
				_G.CloneHRP = HumanoidRootPart
				_G.CloneHumanoid = Humanoid2
				_G.CloneSourceChar = UniverChar
				_G.CloneDisabled = false

				if Humanoid2 then
					Humanoid2.JumpPower = math.max(Humanoid2.JumpPower, 50)
					Humanoid2.JumpHeight = math.max(Humanoid2.JumpHeight, 7.2)
				end

				for _, descendant in ipairs(clone:GetDescendants()) do
					if descendant:IsA("BodyVelocity") or descendant:IsA("BodyPosition") or descendant:IsA("BodyForce") or descendant:IsA("BodyAngularVelocity") or descendant:IsA("VectorForce") or descendant:IsA("LinearVelocity") then
						descendant:Destroy()
					end
				end

				for _, descendant in ipairs(clone:GetDescendants()) do
					if descendant:IsA("Motor6D") then
						descendant.Enabled = true
					end
				end

				resetCloneHumanoid(Humanoid2)

				for _, descendant in ipairs(clone:GetDescendants()) do
					if descendant:IsA("LocalScript") or descendant:IsA("Script") then
						descendant.Disabled = false
					end
				end

				saveCameraSubjectBeforeClone()
				W.CurrentCamera.CameraSubject = Humanoid2
				print("Camera -> Clone")
				makeModelInvisible(UniverChar)
				makeModelInvisible(clone)

				if _G.CloneMoveConn then
					_G.CloneMoveConn:Disconnect()
				end

				if _G.CloneJumpConn then
					_G.CloneJumpConn:Disconnect()
				end

				_G.CloneMoveConn = Humanoid.Changed:Connect(function(p1005)
					if p1005 == "MoveDirection" and not _G.CloneDisabled then
						Humanoid2:Move(Humanoid.MoveDirection)
					end
				end)
				_G.CloneJumpConn = UserInputService.JumpRequest:Connect(function()
					if not _G.CloneDisabled and Humanoid2 and Humanoid2.Parent and Humanoid2.FloorMaterial ~= Enum.Material.Air then
						Humanoid2.Jump = true
					end
				end)

				if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
					task.defer(function()
						if Humanoid2 and Humanoid2.Parent then
							Humanoid2.Jump = true
						end
					end)
				end

				print("Novo corpo!")
			end
		end
	end
	disableClone = function()
		if not _G.CloneChar or not _G.CloneChar.Parent then
			return
		end

		_G.CloneDisabled = true

		local CFrame_ = _G.CloneHRP.CFrame
		local now = tick()

		_G.LastReturnCFrame = CFrame_
		_G.LastReturnTime = now

		if _G.UniversalPlayerHumanoid and _G.UniversalPlayerHumanoid.SeatPart and tostring(_G.UniversalPlayerHumanoid.SeatPart.Parent) ~= "CreatureBlobman" then
			local SeatWeld = _G.UniversalPlayerHumanoid.SeatPart:FindFirstChild("SeatWeld")

			if SeatWeld then
				SeatWeld:Destroy()
			end

			_G.UniversalPlayerHumanoid.Sit = false
		end

		_G.UniversalPlayerRoot.CFrame = CFrame_
		task.spawn(function()
			for i = 1, 15 do
				task.wait(0.03)

				if not _G.CloneDisabled or _G.LastReturnTime ~= now or TeleportId ~= TeleportId then
					return
				end

				local UniversalPlayerRoot = _G.UniversalPlayerRoot

				if not UniversalPlayerRoot or not UniversalPlayerRoot.Parent then
					return
				end

				if (UniversalPlayerRoot.Position - CFrame_.Position).Magnitude > 15 then
					UniversalPlayerRoot.CFrame = CFrame_
					UniversalPlayerRoot.AssemblyLinearVelocity = Vector3.zero
				end
			end
		end)
		restoreCameraSubjectAfterClone()
		_G.UniversalPlayerRoot.AssemblyLinearVelocity = _G.CloneHRP.AssemblyLinearVelocity

		if _G.IsCharacterInRagdoll and _G.UniverChar then
			for _, child in ipairs(_G.UniverChar:GetChildren()) do
				if t139[child.Name] and child:IsA("BasePart") then
					child.CFrame = _G.UniversalPlayerRoot.CFrame
				end
			end
		end

		if _G.CloneHumanoid then
			_G.CloneHumanoid:Move(Vector3.zero)
		end

		_G.CloneHRP.CFrame = CFrame.new(0, 1000, 0)
		_G.CloneHRP.AssemblyLinearVelocity = Vector3.zero
		_G.CloneHRP.Anchored = true
		print("Camera -> Original")
	end
end

do
	deleteClone = function()
		W.CurrentCamera.CameraSubject = _G.UniversalPlayerHumanoid

		if _G.CloneMoveConn then
			_G.CloneMoveConn:Disconnect()
			_G.CloneMoveConn = nil
		end

		if _G.CloneJumpConn then
			_G.CloneJumpConn:Disconnect()
			_G.CloneJumpConn = nil
		end

		if _G.CloneChar then
			_G.CloneChar:Destroy()
			_G.CloneChar = nil
			_G.CloneHRP = nil
			_G.CloneHumanoid = nil
			_G.CloneSourceChar = nil
		end

		_G.PreCloneCameraSubject = nil
		_G.CloneDisabled = true
	end
end

reconnectConns = {}

do
	reconnect = function()
		DisconnectAll(reconnectConns)

		local Character = LocalPlayer4.Character or LocalPlayer4.CharacterAdded:Wait()
		local Humanoid = Character:FindFirstChildWhichIsA("Humanoid") or Character:WaitForChild("Humanoid")
		local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
		local Head = Character:WaitForChild("Head")
		local Torso = Character:WaitForChild("Torso")

		_G.IsCharacterInRagdoll = false
		CharacterRaycastFilter.FilterDescendantsInstances[1] = Character
		COAroundPParams.FilterDescendantsInstances[1] = Character

		local Attachment = Instance.new("Attachment", HumanoidRootPart)

		Attachment.Name = "PianoAttach"
		Attachment.CFrame = CFrame.new(0, -2, -5) * CFrame.Angles(0, math.rad(180), 0)
		grabbingScript_oc = os.clock()
		_G.PianoAttachment = Attachment
		_G.UniversalPlayerRoot = HumanoidRootPart
		_G.UniversalPlayerHead = Head
		_G.UniversalPlayerHumanoid = Humanoid
		_G.UniverChar = Character
		_G.Torso = Torso

		local GrabbingScript = Character:WaitForChild("GrabbingScript")

		if HumanoidRootPart then
			local RootAttachment = HumanoidRootPart:FindFirstChild("RootAttachment")

			if RootAttachment then
				DeleteRootAttachment(RootAttachment)
			end
		end

		reconnectConns[#reconnectConns + 1] = Humanoid:GetPropertyChangedSignal("Sit"):Connect(function()
			if Humanoid.Sit then
				_G.IsGodModeOn = false
			end
		end)

		if anticreatelinelocalscript then
			anticreatelinelocalscript.Parent = LocalPlayer4.PlayerScripts
		end

		reconnectConns[#reconnectConns + 1] = GrabbingScript:GetPropertyChangedSignal("Enabled"):Connect(function()
			local Enabled = GrabbingScript.Enabled

			if anticreatelinelocalscript then
				anticreatelinelocalscript.Parent = LocalPlayer4.PlayerScripts
			end

			local GrabParts = workspace:FindFirstChild("GrabParts")
			local CamPart = Character:FindFirstChild("CamPart")

			if GrabParts then
				endGrab(GrabParts)
			end

			if Enabled then
				local RootAttachment = HumanoidRootPart:FindFirstChild("RootAttachment")

				grabbingScript_oc = os.clock()

				if not RootAttachment then
					local Attachment2 = Instance.new("Attachment", HumanoidRootPart)

					Attachment2.Name = "RootAttachment"
					DeleteRootAttachment(Attachment2)
				end
			elseif CamPart then
				CamPart:Destroy()
			end
		end)
		reconnectConns[#reconnectConns + 1] = HumanoidRootPart.ChildAdded:Connect(function(child)
			if child.Name == "RootAttachment" and HumanoidRootPart then
				local RootAttachment = HumanoidRootPart:FindFirstChild("RootAttachment")

				if RootAttachment then
					DeleteRootAttachment(RootAttachment)
				end
			end
		end)
		scriptToGetSenv = GrabbingScript

		if scriptToGetSenv and getsenv then
			senv = getsenv(scriptToGetSenv)
		end

		local CanBurn = HumanoidRootPart:WaitForChild("FirePlayerPart"):WaitForChild("CanBurn")
		local Ragdolled = Humanoid:WaitForChild("Ragdolled")

		setMasslessFalse(Character)
		enforceMasslessFalse(Character)

		if h_hConnection then
			h_hConnection:Disconnect()
			h_hConnection = nil
		end

		local BodyPosition = Instance.new("BodyPosition", HumanoidRootPart)
		local BodyVelocity = Instance.new("BodyVelocity", Torso)

		BodyPosition.MaxForce = Vector3.new(0, 0, 0)
		BodyVelocity.MaxForce = Vector3.new(0, 0, 0)
		_G.AntiExplosionVelocity = BodyVelocity
		Humanoid.JumpPower = _G.InfiniteJumpPower

		if _G.NoclipToggle then
			noclip()
		end

		local t140 = {}
		local t141 = {}
		local u3993 = false

		reconnectConns[#reconnectConns + 1] = Character.DescendantAdded:Connect(function(descendant)
			if not _G.AntiOwnershipSpam then
				return
			end

			if descendant.Name ~= "PartOwner" or not descendant:IsA("StringValue") or u3993 then
				return
			end

			local Value = descendant.Value
			local now = os.clock()

			if t140[Value] then
				if now - t140[Value] < 0.05 then
					t141[Value] = (t141[Value] or 0) + 1

					if t141[Value] >= 15 then
						u3993 = true
						t141[Value] = 0
						warn(Value .. " provável autoclicker")

						local v3996 = PS:FindFirstChild(Value)
						local Character2 = v3996.Character
						local Humanoid2 = Character2 and Character2:FindFirstChildOfClass("Humanoid")
						local HumanoidRootPart2 = Character2 and Character2:FindFirstChild("HumanoidRootPart")

						if Character2 and Humanoid2 then
							for i = 0, 20 do
								if IsNetworkOwner(HumanoidRootPart2) and CheckNetworkOwnerShipOnPlayer(v3996) then
									SetCollisionObjectOff(Character2)
									W.FallenPartsDestroyHeight = -50000
									HumanoidRootPart2.CFrame = CFrame.new(0, -49900, 0)
									task.wait(0.1)
									HumanoidRootPart2.AssemblyLinearVelocity = Vector3.new(0, -1000000, 0)
								end

								if i == 5 or i == 10 or i == 15 then
									DestroyGucci(v3996)
								end

								v119:FireServer(HumanoidRootPart2, HumanoidRootPart2.CFrame)
								wait(0.015)
							end
						end

						u3993 = false
					end
				else
					t141[Value] = 0
				end
			end

			t140[Value] = now
		end)

		local n63 = 0

		reconnectConns[#reconnectConns + 1] = Character.DescendantAdded:Connect(function(descendant)
			if descendant.Name == "PartOwner" then
				PlayerWhoIsHolding = tostring(descendant.Value)

				if _G.AutoAttacker then
					local v4002 = PS:FindFirstChild(PlayerWhoIsHolding)

					if v4002 and verifyDev(v4002) == false and v4002 ~= LocalPlayer4 then
						if not (math.clamp(LocalPlayer4:GetNetworkPing() * 2, 0.05, 0.1) <= os.clock() - n63) then
							return
						end

						n63 = os.clock()
						ExecuteCounterAttack(v4002, _G.CounterMode)
					end
				end
			end
		end)
		reconnectConns[#reconnectConns + 1] = CanBurn.Changed:Connect(function(p1006)
			if p1006 and _G.AntiBurn then
				while CanBurn.Value do
					if firetouchinterest then
						firetouchinterest(HumanoidRootPart.FirePlayerPart, apagarfogo, 0)
						task.wait()
						firetouchinterest(HumanoidRootPart.FirePlayerPart, apagarfogo, 1)
					else
						apagarfogo.CFrame = HumanoidRootPart.FirePlayerPart.CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
						task.wait()
						apagarfogo.Position = Vector3.new(0, -100, 0)
					end
				end
			end
		end)
		reconnectConns[#reconnectConns + 1] = Ragdolled.Changed:Connect(function(p1007)
			_G.IsCharacterInRagdoll = p1007

			if p1007 then
				_G.IsGodModeOn = false
			end

			if p1007 and _G.AntiExplosion then
				_G.AntiExplosionVelocity.MaxForce = Vector3.new(math.huge, 0, math.huge)
				HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

				while Ragdolled.Value do
					if HumanoidRootPart.Velocity.Magnitude > 50 then
						HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
					end

					Humanoid.Sit = false
					Humanoid.AutoRotate = true
					Humanoid.PlatformStand = false
					Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					Character.Head.CanCollide = false

					if Character:FindFirstChild("Right Arm") then
						Character["Right Arm"].RagdollLimbPart.CanCollide = false
					end

					if Character:FindFirstChild("Right Leg") then
						Character["Right Leg"].RagdollLimbPart.CanCollide = false
					end

					if Character:FindFirstChild("Left Arm") then
						Character["Left Arm"].RagdollLimbPart.CanCollide = false
					end

					if Character:FindFirstChild("Left Leg") then
						Character["Left Leg"].RagdollLimbPart.CanCollide = false
					end

					CAS:UnbindAction("JumpRemover")
					task.wait()
				end

				Humanoid.AutoRotate = true
				_G.AntiExplosionVelocity.MaxForce = Vector3.new(0, 0, 0)
			end
		end)
		reconnectConns[#reconnectConns + 1] = Humanoid.Changed:Connect(function(p1008)
			if p1008 == "Sit" and Humanoid.Sit == true then
				if Humanoid.SeatPart ~= nil and tostring(Humanoid.SeatPart.Parent) == "CreatureBlobman" then
					if _G.RockBlobman then
						BodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						BodyPosition.Position = HumanoidRootPart.Position
					end
				elseif Humanoid.SeatPart == nil and _G.AntiGrab and BeingHeld.Value then
					Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					Humanoid.Sit = false
				end
			end

			if p1008 == "SeatPart" and Humanoid.SeatPart == nil then
				ResetCharacterStats()

				if HumanoidRootPart:FindFirstChild("BodyPositionFloat") then
					HumanoidRootPart.BodyPositionFloat:Destroy()
				end

				BodyPosition.MaxForce = Vector3.new(0, 0, 0)
			end

			if p1008 == "MoveDirection" and _G.RockBlobman and blobmanVerification() then
				BodyPosition.Position = HumanoidRootPart.Position

				if Humanoid.MoveDirection.Magnitude > 0 then
					BodyPosition.MaxForce = Vector3.new(0, 0, 0)
				end
			end

			if p1008 == "MoveDirection" then
				BodyVelocity.Velocity = Humanoid.MoveDirection * 20
			end
		end)
		reconnectConns[#reconnectConns + 1] = Humanoid.Died:Connect(function()
			if _G.ActualFakeGrabParts then
				_G.ActualFakeGrabParts:Destroy()
			end

			if not RS_.GrabEvents:FindFirstChild("EndGrabEarly") then
				Instance.new("RemoteEvent", RS_.GrabEvents).Name = "EndGrabEarly"
			end

			deleteClone()
			_G.IsGodModeOn = false

			if gucci_toy then
				DeleteToyRE:FireServer(gucci_toy)
			end
		end)
		_G.SarradaAnim = Humanoid:LoadAnimation(bangAnim)

		if Humanoid then
			local Animator = Humanoid:WaitForChild("Animator", 1)

			if Animator then
				TypeAnimation = Animator:LoadAnimation(typeAnimation)
				FlailAnimation = Animator:LoadAnimation(flailAnimation)
			end
		end
	end
end

UserInputService.JumpRequest:Connect(function()
	if _G.InfiniteJump then
		LocalPlayer4.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
	end
end)
R.Heartbeat:Connect(function()
	if _G.SuperSpeed and not checkIfPlayerInRagdollAntiExplosion() then
		if _G.CloneChar and _G.CloneChar.Parent and not _G.CloneDisabled and _G.CloneHRP then
			_G.CloneHRP.CFrame += (_G.UniversalPlayerHumanoid and _G.UniversalPlayerHumanoid.MoveDirection or Vector3.zero) * Multiplier
		else
			local HumanoidRootPart = LocalPlayer4.Character and LocalPlayer4.Character:FindFirstChild("HumanoidRootPart")
			local Humanoid = LocalPlayer4.Character and LocalPlayer4.Character:FindFirstChildOfClass("Humanoid")

			if HumanoidRootPart and Humanoid then
				HumanoidRootPart.CFrame += Humanoid.MoveDirection * Multiplier
			end
		end
	end
end)

do
	task.spawn(function()
		reconnect()
	end)
end

do
	PS.PlayerAdded:Connect(function(player)
		local ok, result2 = pcall(function()
			return player:IsFriendsWith(LocalPlayer4.UserId)
		end)

		if ok and result2 then
			if _G.AutoWLFriends then
				v3197:Set(player.Name, true)
			end
		end
	end)
end

do
	task.spawn(function()
		for _, player in pairs(PS:GetPlayers()) do
			if player:IsFriendsWith(LocalPlayer4.UserId) then
				local ok, result2 = pcall(function()
					return player:IsFriendsWith(LocalPlayer4.UserId)
				end)

				if ok and result2 then
					v3197:Set(player.Name, true)
				end
			end
		end
	end)
end

Wl_Flags = {
	"antigrabgucci_toggle",
	"PacketSender_toggle",
	"lagserver_toggle",
	"invisible_toggle",
	"antikickpcld",
	"antigrab_toggle",
	"antilag_toggle",
	"antikick_toggle",
	"lkickownerspam_toggle",
	"lk_toggle"
}
LocalPlayer4.CharacterAdded:Connect(reconnect)
CABM_script(false)
result:Init()

do
	local t142 = {
		{
			id = "remove_floor_collision",
			tab = "Misc",
			name = "Remove Collision",
			section = "Remove Floor Collision",
			added = "2026-10-25"
		},
		{
			id = "make_floor_unstable",
			tab = "Misc",
			name = "Make Unstable [PREMIUM] 👑",
			added = "2026-10-25"
		},
		{
			id = "spider_legs",
			tab = "Auras",
			name = "Spider Legs",
			added = "2026-10-25"
		},
		{
			id = "wings_maker_options",
			tab = "Auras",
			name = "Wings Maker",
			added = "2026-10-25"
		},
		{
			id = "seatless_blobman",
			tab = "Config",
			name = "Auto Seatless Blobman",
			added = "2026-10-25"
		},
		{
			id = "loop_kick_v3_rework",
			tab = "Loop Players",
			name = "Loop Kick 〔SPAM BLOBMAN〕",
			added = "2026-10-25"
		},
		{
			id = "remove_gucci_variant",
			tab = "Keybinds",
			name = "Remove Gucci",
			section = "Remove Gucci",
			added = "2026-10-25"
		},
		{
			id = "config_presets",
			tab = "Config",
			name = "Select Preset",
			section = "Config Presets",
			added = "2026-10-25"
		},
		{
			id = "lag_server_v3_sticky",
			tab = "Custom Line",
			name = "Lag Server 「STICKY」 [SUPER PREMIUM] 💎",
			added = "2026-10-25"
		},
		{
			id = "punish_grab_spam",
			tab = "Config",
			name = "Punish Grab Spam",
			added = "2026-10-25"
		},
		{
			id = "telekenesis_shapes",
			tab = "Auras",
			name = "Shape",
			added = "2026-10-25"
		},
		{
			id = "shutdownbind_toggle",
			tab = "Keybinds",
			name = "Shutdown",
			added = "2026-10-25"
		},
		{
			id = "mechmaker_toggle",
			tab = "Auras",
			name = "Mech Suit",
			added = "2026-10-25"
		},
		{
			id = "ABPCLD_Toggle",
			tab = "Loop Players",
			name = "Auto Break Auto PCLD",
			added = "2026-10-25"
		},
		{
			id = "third_person_keybind",
			tab = "Keybinds",
			name = "Third Person Keybind",
			added = "2026-10-25"
		}
	}

	task.spawn(function()
		local TextService = game:GetService("TextService")
		local t143 = {}

		if isfile and isfile("FTAPConfig/seen_features.json") then
			local ok, result2 = pcall(function()
				return HttpService:JSONDecode(readfile("FTAPConfig/seen_features.json"))
			end)

			if ok and type(result2) == "table" then
				t143 = result2
			end
		end

		local function v4017()
			if not writefile then
				return
			end

			if makefolder and isfolder and not isfolder("FTAPConfig") then
				pcall(makefolder, "FTAPConfig")
			end

			pcall(writefile, "FTAPConfig/seen_features.json", HttpService:JSONEncode(t143))
		end
		local function v4018(p1009)
			local match, v4020, v4021 = tostring(p1009):match("^(%d+)-(%d+)-(%d+)$")

			if not match then
				return true
			end

			local now = os.time({
				year = tonumber(match),
				month = tonumber(v4020),
				day = tonumber(v4021),
				hour = 12
			})

			return os.time() - now < 604800
		end
		local function v4023(p1010)
			return tostring(p1010):gsub("<[^>]->", ""):gsub("%s+", " "):match("^%s*(.-)%s*$")
		end

		local t144 = {}
		local t145 = {}

		for _, v in ipairs(t142) do
			if not t143[v.id] and v4018(v.added) then
				t144[v.tab] = t144[v.tab] or {}
				table.insert(t144[v.tab], v)

				local v4028 = v4023(v.name)

				t145[v4028] = t145[v4028] or {}
				table.insert(t145[v4028], v)
			end
		end

		if next(t144) == nil then
			return
		end

		task.wait(0.5)

		local OrionBliz = game.CoreGui:FindFirstChild("OrionBliz") or gethui and gethui():FindFirstChild("OrionBliz")

		if not OrionBliz then
			return
		end

		local TweenService3 = game:GetService("TweenService")

		local function v4031()
			local v4032 = result.Themes[result.SelectedTheme] or {}
			local Accent = v4032.Accent or v4032.Main

			if Accent then
				local v4034, v4035 = Accent:ToHSV()

				if v4035 >= 0.15 then
					local v4036 = math.clamp(v4035 * 1.6, 0.55, 0.8)

					return Color3.fromHSV(v4034, v4036, 0.92), Color3.fromHSV((v4034 + 0.07) % 1, v4036, 0.88), Color3.fromHSV(v4034, 0.4, 1)
				end
			end

			return Color3.fromRGB(236, 64, 112), Color3.fromRGB(245, 128, 40), Color3.fromRGB(255, 120, 110)
		end

		local obj = setmetatable({}, {
			__mode = "k"
		})

		local function v4038(p1011)
			local v4039, v4040, v4041 = v4031()
			local UIGradient = p1011:FindFirstChildOfClass("UIGradient")

			if UIGradient then
				UIGradient.Color = ColorSequence.new(v4039, v4040)
			end

			local UIStroke = p1011:FindFirstChildOfClass("UIStroke")

			if UIStroke then
				UIStroke.Color = v4041
			end
		end

		local SetTheme = result.SetTheme

		result.SetTheme = function(p1012, ...)
			SetTheme(p1012, ...)

			for k, v in pairs(obj) do
				if k.Parent then
					v(k)
				end
			end
		end

		local function v4047(p1013)
			local UIScale = Instance.new("UIScale")

			UIScale.Scale = 0
			UIScale.Parent = p1013
			TweenService3:Create(UIScale, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
				Scale = 1
			}):Play()
		end
		local function createFrame(p1014, p1015, p1016, p1017)
			local Frame = Instance.new("Frame")

			Frame.Name = "NewBadge"
			Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame.BorderSizePixel = 0
			Frame.Size = p1015
			Frame.AnchorPoint = p1017
			Frame.Position = p1016
			Frame.ZIndex = p1014.ZIndex + 2
			Instance.new("UICorner", Frame).CornerRadius = UDim.new(1, 0)

			local UIGradient = Instance.new("UIGradient")

			UIGradient.Rotation = 20
			UIGradient.Parent = Frame

			local UIStroke = Instance.new("UIStroke")

			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Thickness = 1
			UIStroke.Transparency = 0.3
			UIStroke.Parent = Frame
			TweenService3:Create(UIStroke, TweenInfo.new(0.9, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
				Transparency = 0.9,
				Thickness = 2.5
			}):Play()
			v4038(Frame)
			obj[Frame] = v4038
			Frame.Parent = p1014

			return Frame
		end
		local function v4053(p1018, p1019)
			local v4054 = createFrame(p1018, UDim2.new(0, 30, 0, 14), p1019, Vector2.new(0, 0.5))
			local TextLabel = Instance.new("TextLabel")

			TextLabel.Name = "Label"
			TextLabel.BackgroundTransparency = 1
			TextLabel.Size = UDim2.new(1, 0, 1, 0)
			TextLabel.Text = "NEW"
			TextLabel.Font = Enum.Font.GothamBlack
			TextLabel.TextSize = 9
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.ZIndex = v4054.ZIndex + 1
			TextLabel.Parent = v4054
			v4047(v4054)

			return v4054
		end
		local function v4056(p1020)
			v4038(p1020)
			p1020.UIStroke.Color = v4031()
		end
		local function v4057(p1021)
			local v4058 = createFrame(p1021, UDim2.new(0, 7, 0, 7), UDim2.new(1, 1, 0, -1), Vector2.new(0.5, 0.5))
			local UIStroke = v4058.UIStroke

			UIStroke.Transparency = 0.6
			TweenService3:Create(UIStroke, TweenInfo.new(0.9, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
				Transparency = 1,
				Thickness = 3
			}):Play()
			v4056(v4058)
			obj[v4058] = v4056

			return v4058
		end

		local t146 = {}
		local t147 = {}
		local t148 = {}
		local u4063

		for _, descendant in ipairs(OrionBliz:GetDescendants()) do
			if descendant:IsA("TextButton") and descendant:FindFirstChild("Title") and descendant:FindFirstChild("Ico") and not descendant:FindFirstAncestor("ItemContainer") then
				local Text = descendant.Title.Text

				t148[Text] = descendant

				if descendant.Title.Font == Enum.Font.GothamBlack then
					u4063 = Text
				end

				if t144[Text] then
					t146[Text] = v4057(descendant.Ico)
				end
			elseif descendant:IsA("TextLabel") and descendant.Name == "Content" and descendant:FindFirstAncestor("ItemContainer") then
				local v4067 = v4023(descendant.Text)
				local Holder = descendant:FindFirstAncestor("Holder")
				local Parent = Holder and Holder.Parent and v4023(Holder.Parent.Name)
				local ipairs_ = ipairs
				local v4071 = t145[v4067] or {}

				for _, v in ipairs_(v4071) do
					if not v.section or v4023(v.section) == Parent then
						local X = TextService:GetTextSize(v4067, descendant.TextSize, descendant.Font, Vector2.new(10000, 100)).X

						t147[v] = t147[v] or {}
						table.insert(t147[v], {
							frame = descendant.Parent,
							badge = v4053(descendant.Parent, UDim2.new(0, descendant.Position.X.Offset + X + 8, 0.5, 0))
						})
					end
				end
			end
		end

		local function v4075(p1022)
			local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			local UIScale = p1022:FindFirstChildOfClass("UIScale")

			if UIScale then
				TweenService3:Create(UIScale, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
					Scale = 0
				}):Play()
			end

			for _, descendant in ipairs(p1022:GetDescendants()) do
				if descendant:IsA("TextLabel") then
					TweenService3:Create(descendant, tweenInfo, {
						TextTransparency = 1
					}):Play()
				elseif descendant:IsA("Frame") then
					TweenService3:Create(descendant, tweenInfo, {
						BackgroundTransparency = 1
					}):Play()
				elseif descendant:IsA("UIStroke") then
					TweenService3:Create(descendant, tweenInfo, {
						Transparency = 1
					}):Play()
				end
			end

			if p1022.BackgroundTransparency < 1 then
				TweenService3:Create(p1022, tweenInfo, {
					BackgroundTransparency = 1
				}):Play()
			end

			task.delay(0.3, function()
				p1022:Destroy()
			end)
		end

		local t149 = {}

		local function v4081(p1023)
			t143[p1023.id] = true
			v4017()
			t149[p1023.tab] = t149[p1023.tab] or {}

			local v4082 = t147[p1023] or {}

			for _, v in ipairs(v4082) do
				table.insert(t149[p1023.tab], v.badge)
			end

			t147[p1023] = nil

			local v4085 = t144[p1023.tab]

			if v4085 then
				local v4086 = table.find(v4085, p1023)

				if v4086 then
					table.remove(v4085, v4086)
				end

				if #v4085 == 0 then
					t144[p1023.tab] = nil
				end
			end
		end
		local function v4087(p1024)
			local v4088 = t149[p1024] or {}

			for _, v in ipairs(v4088) do
				v4075(v)
			end

			t149[p1024] = nil

			if not t144[p1024] and t146[p1024] then
				v4075(t146[p1024])
				t146[p1024] = nil
			end
		end
		local function v4091(p1025)
			local Y = p1025.AbsolutePosition.Y
			local v4093 = p1025.AbsolutePosition.Y + p1025.AbsoluteSize.Y
			local v4094 = v4093 - Y

			if v4094 <= 0 then
				return 0
			end

			local Parent = p1025

			while Parent and Parent:IsA("GuiObject") do
				if not Parent.Visible then
					return 0
				end

				if Parent ~= p1025 and (Parent.ClipsDescendants or Parent:IsA("ScrollingFrame")) then
					Y = math.max(Y, Parent.AbsolutePosition.Y)
					v4093 = math.min(v4093, Parent.AbsolutePosition.Y + Parent.AbsoluteSize.Y)
				end

				Parent = Parent.Parent
			end

			if Parent and Parent:IsA("ScreenGui") and not Parent.Enabled then
				return 0
			end

			return math.max(0, v4093 - Y) / v4094
		end

		local t150 = {}

		task.spawn(function()
			while next(t147) do
				for k, v in pairs(t147) do
					local v4099 = false

					for _, v2 in ipairs(v) do
						if v2.frame.Parent and v4091(v2.frame) >= 0.6 then
							v4099 = true

							break
						end
					end

					local v4102 = v4099

					if v4102 then
						v4102 = (t150[k] or 0) + 0.25
					end

					t150[k] = v4102 or 0

					if t150[k] >= 1 then
						v4081(k)
					end
				end

				task.wait(0.25)
			end
		end)

		local n64 = 0

		local function v4104(p1026)
			if u4063 and u4063 ~= p1026 then
				v4087(u4063)
			end

			u4063 = p1026
			n64 += 1

			local v4105 = n64

			if t144[p1026] then
				task.delay(2, function()
					if not (n64 == v4105 and t144[p1026]) then
						return
					end

					for _, v in ipairs(table.clone(t144[p1026])) do
						if not t147[v] then
							v4081(v)
						end
					end
				end)
			end
		end

		for k, v in pairs(t148) do
			v.MouseButton1Click:Connect(function()
				v4104(k)
			end)
		end

		if u4063 then
			v4104(u4063)
		end
	end)
end

newtoggles = {}
task.spawn(function()
	for k, v4111 in pairs(result.Flags) do
		if v4111.Type == "Toggle" and table.find(Wl_Flags, k) then
			AllTogglesOpt[v4111.Name] = v4111
			table.insert(newtoggles, v4111.Name)

			for k2, v in pairs(AllTogglesOptTgglO) do
				if k2 == v4111.Name then
					if v then
						local connection2 = v4111.Event:GetAttributeChangedSignal("Value"):Connect(function()
							v:Set(v4111.Event:GetAttribute("Value"))
						end)

						v:Set(v4111.Event:GetAttribute("Value"))
						v:AddConn(connection2)
					end
				end
			end
		end
	end

	TogglesKeys:Refresh(newtoggles, true)
end)
task.spawn(function()
	for _, v in pairs(RegularWLToggles) do
		local v4117 = result.Flags[v]

		if v4117 then
			v4117.Event:GetAttributeChangedSignal("Value"):Connect(function()
				RegularWLTogglesVls[v4117.FlagName] = v4117.Event:GetAttribute("Value")
			end)
		end
	end
end)
Window:AddConfigTab()