-- by: wenc

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TextChatService = game:GetService("TextChatService")
local TweenService = game:GetService("TweenService")
local Debris = game:GetService("Debris")
local SoundService = game:GetService("SoundService")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local RandomGenerator = Random.new()

local function SendChatMessage(message)
    local success = false
    if TextChatService then
        local rbxGeneral = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
        if rbxGeneral then
            pcall(function()
                rbxGeneral:SendAsync(message)
                success = true
            end)
        end
    end
    if not success then
        local chatEvents = ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")
        if chatEvents then
            local sayMessageRequest = chatEvents:FindFirstChild("SayMessageRequest")
            if sayMessageRequest then
                pcall(function()
                    sayMessageRequest:FireServer(message, "All")
                    success = true
                end)
            end
        end
    end
    if not success then
        print("[Aloe Hub] " .. message)
    end
end

local function ShowLoadingScreen()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game:GetService("CoreGui")
    screenGui.DisplayOrder = 1000000
    screenGui.IgnoreGuiInset = true

    local backgroundFrame = Instance.new("Frame")
    backgroundFrame.Size = UDim2.new(1, 0, 1, 0)
    backgroundFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
    backgroundFrame.BorderSizePixel = 0
    backgroundFrame.Parent = screenGui

    local loadingSound = Instance.new("Sound")
    loadingSound.SoundId = "rbxassetid://6097367958"
    loadingSound.Volume = 3
    loadingSound.Parent = SoundService
    loadingSound:Play()

    local spinnerFrame = Instance.new("Frame")
    spinnerFrame.Size = UDim2.new(0, 200, 0, 200)
    spinnerFrame.Position = UDim2.new(0.5, 0, 0.4, 0)
    spinnerFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    spinnerFrame.BackgroundTransparency = 1
    spinnerFrame.Parent = backgroundFrame

    for i = 1, 8 do
        local dot = Instance.new("Frame")
        dot.Size = UDim2.new(0, 8, 0, 8)
        dot.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
        dot.BorderSizePixel = 0
        dot.Position = UDim2.new(i <= 4 and 0 or 1, 0, i % 2 == 0 and 0 or 1, 0)
        dot.Parent = spinnerFrame
        Instance.new("UICorner", dot).CornerRadius = UDim.new(1, 0)
    end

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, 0, 0, 50)
    titleLabel.Position = UDim2.new(0, 0, 0.65, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = "ALOE HUB! | v2.3.1 BOOT"
    titleLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
    titleLabel.TextSize = 30
    titleLabel.Font = Enum.Font.Code
    titleLabel.Parent = backgroundFrame

    local loadingLabel = Instance.new("TextLabel")
    loadingLabel.Size = UDim2.new(1, 0, 0, 30)
    loadingLabel.Position = UDim2.new(0, 0, 0.75, 0)
    loadingLabel.BackgroundTransparency = 1
    loadingLabel.Text = "LOADING..."
    loadingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    loadingLabel.TextSize = 18
    loadingLabel.Font = Enum.Font.Code
    loadingLabel.Parent = backgroundFrame

    task.spawn(function()
        local rotationTween = TweenService:Create(
            spinnerFrame,
            TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1),
            { Rotation = 360 }
        )
        rotationTween:Play()

        for i = 1, 12 do
            task.spawn(function()
                for j = 1, 10 do
                    local particle = Instance.new("Frame")
                    particle.Size = UDim2.new(0, 5, 0, 5)
                    particle.Position = UDim2.new(0.5, 0, 0.4, 0)
                    particle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    particle.Parent = backgroundFrame

                    local angle = RandomGenerator:NextNumber(0, math.pi * 2)
                    local distance = RandomGenerator:NextInteger(200, 500)

                    local particleTween = TweenService:Create(
                        particle,
                        TweenInfo.new(0.5),
                        {
                            Position = UDim2.new(
                                0.5 + math.cos(angle) * distance / 1920,
                                0,
                                0.4 + math.sin(angle) * distance / 1080,
                                0
                            ),
                            BackgroundTransparency = 1
                        }
                    )
                    particleTween:Play()
                    task.delay(0.5, function()
                        particle:Destroy()
                    end)
                end
            end)
            task.wait(0.43)
        end

        local fadeTween = TweenService:Create(
            backgroundFrame,
            TweenInfo.new(0.5),
            { BackgroundTransparency = 1 }
        )
        fadeTween:Play()
        task.wait(0.5)
        screenGui:Destroy()
    end)
end

local function LoadOrionLib()
    print("Loading OrionLib...")
    local OrionLib = nil
    for attempt = 1, 20 do
        local success, result = pcall(function()
            return loadstring(game:HttpGet("https://raw.githubusercontent.com/jadpy/suki/refs/heads/main/orion"))()
        end)
        if success and result then
            OrionLib = result
            print("OrionLib loaded!")
            return OrionLib
        end
        task.wait(0.5)
    end
    warn("OrionLib failed to load")
    return nil
end

ShowLoadingScreen()

local OrionLib = LoadOrionLib()
if not OrionLib then return end

task.wait(2)

local raycastParams = RaycastParams.new()
raycastParams.FilterType = Enum.RaycastFilterType.Exclude
local minimapZoom = 500
local minimapGridSize = 12

local sparklerConfig = {
    Radius = 22,
    Height = 6,
    Speed = 18,
    CurrentShape = "Wing",
    FlapStrength = 2.5,
    Responsiveness = 0.06
}

local trackedSparklers = {}

local televisionConfig = {
    Radius = 22,
    Height = 6,
    Speed = 18,
    CurrentShape = "Wing",
    FlapStrength = 2.5,
    Smoothness = 0.15
}

local trackedTelevisions = {}
local televisionFollowing = false

local function SetupSparkler(part, trackedList)
    if not part:IsA("BasePart") then
        part = part.PrimaryPart or part:FindFirstChildWhichIsA("BasePart", true)
    end
    if not part then return end

    pcall(function()
        if part.CanSetNetworkOwnership() then
            part:SetNetworkOwner(LocalPlayer)
        end
    end)

    part.Anchored = false

    for _, child in pairs(part:GetChildren()) do
        if child.Name == "AloeBP" or child.Name == "AloeBG" then
            child:Destroy()
        end
    end

    local bodyPosition = Instance.new("BodyPosition", part)
    bodyPosition.Name = "AloeBP"
    bodyPosition.MaxForce = Vector3.new(1, 1, 1) * 1000000000
    bodyPosition.P = 45000
    bodyPosition.D = 1200

    local bodyGyro = Instance.new("BodyGyro", part)
    bodyGyro.Name = "AloeBG"
    bodyGyro.MaxTorque = Vector3.new(1, 1, 1) * 1000000000

    for _, descendant in pairs(part:GetDescendants()) do
        if descendant:IsA("BasePart") then
            descendant.CanCollide = false
            descendant.CanTouch = false
        end
    end

    if not table.find(trackedList, part) then
        table.insert(trackedList, part)
    end
end

local function CalculateSparklerPosition(index, totalCount, time, config, centerPart)
    local radius = config.Radius
    local speed = config.Speed
    local height = config.Height
    local side = index % 2 == 0 and 1 or -1
    local halfIndex = math.ceil(index / 2)
    local angle = index * math.pi * 2 / totalCount + time * speed / 5
    local shape = config.CurrentShape

    if shape == "VerticalHeart" then
        local t = index / totalCount * math.pi * 2
        return centerPart.CFrame:VectorToWorldSpace(Vector3.new(
            16 * math.sin(t) ^ 3 * radius / 25 * (1 + math.sin(time * speed / 4) * 0.1),
            (13 * math.cos(t) - 5 * math.cos(2 * t) - 2 * math.cos(3 * t) - math.cos(4 * t)) * radius / 25 + height,
            4
        ))
    end

    if shape == "Wing" then
        return centerPart.CFrame:VectorToWorldSpace(Vector3.new(
            side * 1.5 + side * halfIndex * radius / 15,
            height + math.sin(time * speed / 4 - halfIndex * 0.3) * (config.FlapStrength or 2.5),
            1.5
        ))
    end

    if shape == "DNA" then
        local t = index / totalCount * radius - radius / 2
        local a = t * 0.4 + time * speed / 3
        return centerPart.CFrame:VectorToWorldSpace(Vector3.new(
            math.cos(a + side * math.pi) * 5,
            t + height,
            math.sin(a + side * math.pi) * 5
        ))
    end

    if shape == "Circle" then
        return centerPart.CFrame:VectorToWorldSpace(Vector3.new(
            math.cos(angle) * radius,
            height,
            math.sin(angle) * radius
        ))
    end

    if shape == "Lotus" then
        local r = radius * (0.7 + 0.3 * math.sin(time * speed / 3 + index))
        return centerPart.CFrame:VectorToWorldSpace(Vector3.new(
            math.cos(angle) * r,
            height + math.sin(time * speed / 2 + index) * 3,
            math.sin(angle) * r
        ))
    end

    if shape == "Planet" then
        local r = radius * (0.8 + 0.2 * math.sin(time * speed / 5))
        return centerPart.CFrame:VectorToWorldSpace(Vector3.new(
            math.cos(angle) * r,
            height + math.sin(time * speed / 3 + index) * 2,
            math.sin(angle) * r
        ))
    end

    return Vector3.new(math.cos(angle) * radius, height, math.sin(angle) * radius)
end

local function SetupTelevision(instance)
    if not instance then return end
    local part = instance:IsA("BasePart") and instance or (instance.PrimaryPart or instance:FindFirstChildWhichIsA("BasePart", true))
    if not part then return end

    part.Anchored = true
    part.CanCollide = false
    part.CanTouch = false
    part.CanQuery = false

    for _, child in pairs(part:GetChildren()) do
        if child.Name:find("Aloe") then
            child:Destroy()
        end
    end

    if not table.find(trackedTelevisions, instance) then
        table.insert(trackedTelevisions, instance)
    end
end

local minimapFrame = Instance.new("Frame")
minimapFrame.Size = UDim2.new(0, 180, 0, 180)
minimapFrame.Position = UDim2.new(0.01, 0, 0.02, 0)
minimapFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
minimapFrame.BorderColor3 = Color3.fromRGB(255, 105, 180)
minimapFrame.BorderSizePixel = 2
minimapFrame.ClipsDescendants = true
minimapFrame.Visible = false
minimapFrame.Active = true
minimapFrame.Parent = Instance.new("ScreenGui", game:GetService("CoreGui"))

local minimapGrid = {}
for x = 1, minimapGridSize do
    minimapGrid[x] = {}
    for y = 1, minimapGridSize do
        local cell = Instance.new("Frame", minimapFrame)
        cell.Size = UDim2.new(1 / minimapGridSize, 0, 1 / minimapGridSize, 0)
        cell.Position = UDim2.new((x - 1) / minimapGridSize, 0, (y - 1) / minimapGridSize, 0)
        cell.BorderSizePixel = 0
        cell.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        minimapGrid[x][y] = cell
    end
end

local playerMarkers = {}

local bongoCatFrame = Instance.new("Frame")
bongoCatFrame.Size = UDim2.new(0, 150, 0, 120)
bongoCatFrame.Position = UDim2.new(0.01, 0, 0.75, 0)
bongoCatFrame.BackgroundTransparency = 1
bongoCatFrame.Visible = false
bongoCatFrame.Parent = Instance.new("ScreenGui", game:GetService("CoreGui"))

local function CreateBongoImage(imageId, zIndex)
    local image = Instance.new("ImageLabel", bongoCatFrame)
    image.Size = UDim2.new(1, 0, 1, 0)
    image.BackgroundTransparency = 1
    image.Image = "rbxassetid://" .. imageId
    image.ZIndex = zIndex
    image.ResampleMode = Enum.ResamplerMode.Pixelated
    return image
end

CreateBongoImage("13583091924", 500)
local bongoKeyImage = CreateBongoImage("13583103443", 501)
local bongoSpaceImage = CreateBongoImage("13583115456", 501)
bongoKeyImage.Visible = false
bongoSpaceImage.Visible = false

local window = OrionLib:MakeWindow({
    Name = "Aloe Hub Ftap",
    HidePremium = true
})

local mainTab = window:MakeTab({
    Name = "Main / Chat / Cat"
})

mainTab:AddTextbox({
    Name = "Spam Chat",
    Default = "",
    TextDisappear = true,
    Callback = function(text)
        if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
            local rbxGeneral = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
            if rbxGeneral then
                rbxGeneral:SendAsync(text)
            end
        end
    end
})

mainTab:AddToggle({
    Name = "Show Bongo Cat",
    Default = false,
    Callback = function(state)
        bongoCatFrame.Visible = state
    end
})

mainTab:AddButton({
    Name = "Unlock Camera",
    Callback = function()
        LocalPlayer.CameraMaxZoomDistance = 10000
    end
})

local minimapTab = window:MakeTab({
    Name = "Minimap TP"
})

minimapTab:AddToggle({
    Name = "Show Minimap",
    Default = false,
    Callback = function(state)
        minimapFrame.Visible = state
    end
})

minimapTab:AddSlider({
    Name = "Zoom Level",
    Min = 50,
    Max = 1000,
    Default = 500,
    Callback = function(value)
        minimapZoom = value
    end
})

minimapTab:AddParagraph("Info", "Click on map to teleport, drag to move UI.")

local cosmosTab = window:MakeTab({
    Name = "Cosmos Control"
})

cosmosTab:AddButton({
    Name = "Sync Sparkler (FireworkSparkler)",
    Callback = function()
        for _, obj in pairs(Workspace:GetDescendants()) do
            if obj.Name:find("FireworkSparkler") then
                SetupSparkler(obj, trackedSparklers)
            end
        end
    end
})

cosmosTab:AddSlider({
    Name = "Radius / Size",
    Min = 2,
    Max = 300,
    Default = sparklerConfig.Radius,
    Callback = function(value)
        sparklerConfig.Radius = value
    end
})

cosmosTab:AddSlider({
    Name = "Height",
    Min = -50,
    Max = 100,
    Default = sparklerConfig.Height,
    Callback = function(value)
        sparklerConfig.Height = value
    end
})

cosmosTab:AddSlider({
    Name = "Rotation Speed",
    Min = 0,
    Max = 100,
    Default = sparklerConfig.Speed,
    Callback = function(value)
        sparklerConfig.Speed = value
    end
})

cosmosTab:AddSlider({
    Name = "Wing Strength (Wing Only)",
    Min = 0,
    Max = 20,
    Default = 2.5,
    Callback = function(value)
        sparklerConfig.FlapStrength = value
    end
})

for _, shapeName in pairs({"Wing", "VerticalHeart", "DNA", "Circle", "Lotus", "Planet"}) do
    cosmosTab:AddButton({
        Name = "Shape: " .. shapeName,
        Callback = function()
            sparklerConfig.CurrentShape = shapeName
        end
    })
end

local isDragging = false
local dragStartPos
local frameStartPos
local dragConnection

minimapFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = true
        dragStartPos = input.Position
        frameStartPos = minimapFrame.Position

        dragConnection = UserInputService.InputChanged:Connect(function(inputChanged)
            if inputChanged.UserInputType == Enum.UserInputType.MouseMovement and isDragging then
                local delta = inputChanged.Position - dragStartPos
                minimapFrame.Position = UDim2.new(
                    frameStartPos.X.Scale,
                    frameStartPos.X.Offset + delta.X,
                    frameStartPos.Y.Scale,
                    frameStartPos.Y.Offset + delta.Y
                )
            end
        end)

        local endConnection
        endConnection = UserInputService.InputEnded:Connect(function(inputEnded)
            if inputEnded.UserInputType == Enum.UserInputType.MouseButton1 then
                isDragging = false
                dragConnection:Disconnect()
                endConnection:Disconnect()

                local clickDistance = (inputEnded.Position - dragStartPos).Magnitude
                if clickDistance < 5 and LocalPlayer.Character then
                    local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local targetX = hrp.Position.X + ((inputEnded.Position.X - minimapFrame.AbsolutePosition.X) / minimapFrame.AbsoluteSize.X - 0.5) * minimapZoom
                        local targetZ = hrp.Position.Z + ((inputEnded.Position.Y - minimapFrame.AbsolutePosition.Y) / minimapFrame.AbsoluteSize.Y - 0.5) * minimapZoom

                        local rayResult = Workspace:Raycast(
                            Vector3.new(targetX, 1000, targetZ),
                            Vector3.new(0, -2000, 0),
                            raycastParams
                        )
                        local targetY = rayResult and rayResult.Position.Y or hrp.Position.Y
                        hrp.CFrame = CFrame.new(targetX, targetY + 4, targetZ)
                    end
                end
            end
        end)
    end
end)

local lastMinimapUpdate = Vector3.new(0, 0, 0)

RunService.Heartbeat:Connect(function()
    local character = LocalPlayer.Character
    local hrp = character and character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    if minimapFrame.Visible and (hrp.Position - lastMinimapUpdate).Magnitude > 4 then
        lastMinimapUpdate = hrp.Position
        raycastParams.FilterDescendantsInstances = {character}

        for x = 1, minimapGridSize do
            for y = 1, minimapGridSize do
                local rayResult = Workspace:Raycast(
                    hrp.Position + Vector3.new(
                        ((x - 1) / (minimapGridSize - 1) - 0.5) * minimapZoom,
                        100,
                        ((y - 1) / (minimapGridSize - 1) - 0.5) * minimapZoom
                    ),
                    Vector3.new(0, -200, 0),
                    raycastParams
                )

                if rayResult then
                    local heightFactor = math.clamp((rayResult.Position.Y - hrp.Position.Y + 20) / 40, 0, 1)
                    minimapGrid[x][y].BackgroundColor3 = Color3.fromRGB(
                        30 + heightFactor * 40,
                        60 + heightFactor * 80,
                        30 + heightFactor * 40
                    )
                else
                    minimapGrid[x][y].BackgroundColor3 = Color3.fromRGB(10, 10, 15)
                end
            end
        end
    end

    if minimapFrame.Visible then
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character then
                local playerHrp = player.Character:FindFirstChild("HumanoidRootPart")
                if playerHrp then
                    local marker = playerMarkers[player.Name]
                    if not marker then
                        marker = Instance.new("Frame", minimapFrame)
                        marker.Size = UDim2.new(0, 6, 0, 6)
                        marker.ZIndex = 10
                        Instance.new("UICorner", marker).CornerRadius = UDim.new(1, 0)
                        playerMarkers[player.Name] = marker
                    end

                    local relX = (playerHrp.Position.X - hrp.Position.X) / minimapZoom
                    local relZ = (playerHrp.Position.Z - hrp.Position.Z) / minimapZoom

                    marker.Position = UDim2.new(0.5 + relX, -3, 0.5 + relZ, -3)
                    marker.BackgroundColor3 = player == LocalPlayer and Color3.fromRGB(0, 255, 255) or Color3.fromRGB(255, 50, 50)
                    marker.Visible = math.abs(relX) < 0.5 and math.abs(relZ) < 0.5
                end
            end
        end
    end

    local velocity = hrp.AssemblyLinearVelocity * sparklerConfig.Responsiveness
    for index, sparkler in pairs(trackedSparklers) do
        if sparkler:IsA("BasePart") then
            local bp = sparkler:FindFirstChild("AloeBP")
            local bg = sparkler:FindFirstChild("AloeBG")
            if bp and bg then
                sparkler.Position = hrp.Position + velocity + CalculateSparklerPosition(
                    index, #trackedSparklers, tick(), sparklerConfig, hrp
                )
                sparkler.CFrame = CFrame.new(sparkler.Position, hrp.Position + Vector3.new(0, 2, 0))
            end
        end
    end
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    local keyName = input.KeyCode.Name
    if keyName:match("[WASD]") then
        bongoKeyImage.Visible = true
    elseif input.KeyCode == Enum.KeyCode.Space then
        bongoSpaceImage.Visible = true
    end
end)

UserInputService.InputEnded:Connect(function(input)
    local keyName = input.KeyCode.Name
    if keyName:match("[WASD]") then
        bongoKeyImage.Visible = false
    elseif input.KeyCode == Enum.KeyCode.Space then
        bongoSpaceImage.Visible = false
    end
end)

local tvTab = window:MakeTab({
    Name = "Television Mirror"
})

tvTab:AddSection({ Name = "Television Control" })

tvTab:AddToggle({
    Name = "Television Follow",
    Default = false,
    Callback = function(state)
        televisionFollowing = state
    end
})

tvTab:AddButton({
    Name = "Sync Television (Ghost)",
    Callback = function()
        for _, obj in pairs(Workspace:GetDescendants()) do
            if obj.Name == "Television" or obj:FindFirstChild("Screen") then
                SetupTelevision(obj)
            end
        end
    end
})

tvTab:AddSection({ Name = "TV Config" })

tvTab:AddSlider({
    Name = "Radius",
    Min = 2,
    Max = 300,
    Default = 22,
    Callback = function(value)
        televisionConfig.Radius = value
    end
})

tvTab:AddSlider({
    Name = "Height",
    Min = -50,
    Max = 100,
    Default = 6,
    Callback = function(value)
        televisionConfig.Height = value
    end
})

tvTab:AddSlider({
    Name = "Rotation Speed",
    Min = 0,
    Max = 100,
    Default = 18,
    Callback = function(value)
        televisionConfig.Speed = value
    end
})

tvTab:AddSlider({
    Name = "Wing Strength",
    Min = 0,
    Max = 20,
    Default = 2.5,
    Callback = function(value)
        televisionConfig.FlapStrength = value
    end
})

for _, shapeName in pairs({"Wing", "VerticalHeart", "DNA", "Circle", "Lotus", "Planet"}) do
    tvTab:AddButton({
        Name = "Shape: " .. shapeName,
        Callback = function()
            televisionConfig.CurrentShape = shapeName
        end
    })
end

local grabLoopActive = false
local autoKillActive = false
local killAllLoopActive = false
local selectedVictim = ""
local victimDropdown

local function GetBlobmanMount()
    local character = LocalPlayer.Character
    if not character then return nil end
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid or not humanoid.SeatPart then return nil end
    local seat = humanoid.SeatPart
    if seat:IsA("VehicleSeat") and seat.Parent and seat.Parent.Name == "CreatureBlobman" then
        return seat.Parent
    end
    return nil
end

local function TeleportToPlayer(playerName)
    local targetPlayer = Players:FindFirstChild(playerName)
    if not targetPlayer or not targetPlayer.Character then return false end
    local targetHrp = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
    local myHrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if targetHrp and myHrp then
        myHrp.CFrame = targetHrp.CFrame * CFrame.new(0, 0, 2.5)
        return true
    end
    return false
end

local function KillPlayer(playerName)
    local targetPlayer = Players:FindFirstChild(playerName)
    if targetPlayer and targetPlayer.Character then
        local humanoid = targetPlayer.Character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.Health = 0
            return true
        end
    end
    return false
end

local function GetPlayerList()
    local list = {}
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(list, player.DisplayName .. " (@" .. player.Name .. ")")
        end
    end
    return list
end

local function StartGrabLoop(playerName)
    local blobman = GetBlobmanMount()
    if not blobman or grabLoopActive then return end
    local targetPlayer = Players:FindFirstChild(playerName)
    if not targetPlayer or not targetPlayer.Character then return end

    local seatScript = blobman:FindFirstChild("BlobmanSeatAndOwnerScript")
    local creatureGrab = seatScript and seatScript:FindFirstChild("CreatureGrab")
    local creatureRelease = seatScript and seatScript:FindFirstChild("CreatureRelease")
    local leftDetector = blobman:FindFirstChild("LeftDetector")
    local leftWeld = leftDetector and leftDetector:FindFirstChild("LeftWeld")
    local targetHrp = targetPlayer.Character:FindFirstChild("HumanoidRootPart")

    if not (creatureGrab and creatureRelease and leftDetector and leftWeld and targetHrp) then
        OrionLib:MakeNotification({
            Name = "Error",
            Content = "Parts or events not found",
            Time = 3
        })
        return
    end

    grabLoopActive = true
    TeleportToPlayer(playerName)
    task.wait(0.1)

    task.spawn(function()
        while grabLoopActive do
            if not targetPlayer.Character or not targetHrp.Parent then break end
            creatureGrab:FireServer(leftDetector, targetHrp, leftWeld)
            RunService.Heartbeat:Wait()
            creatureRelease:FireServer(leftWeld, targetHrp)
            RunService.Heartbeat:Wait()
        end
        grabLoopActive = false
    end)
end

local function QuickKill(playerName)
    local blobman = GetBlobmanMount()
    if not blobman then return end

    local seatScript = blobman:FindFirstChild("BlobmanSeatAndOwnerScript")
    local creatureGrab = seatScript and seatScript:FindFirstChild("CreatureGrab")
    local creatureRelease = seatScript and seatScript:FindFirstChild("CreatureRelease")
    local leftDetector = blobman:FindFirstChild("LeftDetector")
    local leftWeld = leftDetector and leftDetector:FindFirstChild("LeftWeld")

    local targetPlayer = Players:FindFirstChild(playerName)
    local targetHrp = targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")

    if not (creatureGrab and creatureRelease and leftDetector and leftWeld and targetHrp) then return end

    TeleportToPlayer(playerName)
    task.wait(0.18)
    KillPlayer(playerName)

    for i = 1, 4 do
        creatureGrab:FireServer(leftDetector, targetHrp, leftWeld)
        RunService.Heartbeat:Wait()
        creatureRelease:FireServer(leftWeld, targetHrp)
        RunService.Heartbeat:Wait()
    end

    local myHrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if myHrp then
        myHrp.CFrame = targetHrp.CFrame
    end
end

local function SpawnBlobman()
    local character = LocalPlayer.Character
    local hrp = character and character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local menuToys = ReplicatedStorage:FindFirstChild("MenuToys")
    local spawnRemote = menuToys and menuToys:FindFirstChild("SpawnToyRemoteFunction")
    if spawnRemote then
        spawnRemote:InvokeServer("CreatureBlobman", hrp.CFrame * CFrame.new(0, 5, -5), Vector3.new(0, 27.4, 0))
    end
end

local blobmanTab = window:MakeTab({
    Name = "Blobman",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

blobmanTab:AddSection({ Name = "Target Settings" })

victimDropdown = blobmanTab:AddDropdown({
    Name = "Select Victim",
    Default = "",
    Options = GetPlayerList(),
    Callback = function(selected)
        if selected and selected ~= "" then
            selectedVictim = selected:match("%@(.*)%)")
        end
    end
})

blobmanTab:AddButton({
    Name = "Refresh Player List",
    Callback = function()
        victimDropdown:Refresh(GetPlayerList(), true)
    end
})

blobmanTab:AddSection({ Name = "Execution Commands" })

blobmanTab:AddButton({
    Name = "Teleport",
    Callback = function()
        if selectedVictim ~= "" then
            TeleportToPlayer(selectedVictim)
        end
    end
})

blobmanTab:AddButton({
    Name = "Start Fast Grab Loop",
    Callback = function()
        if selectedVictim ~= "" then
            StartGrabLoop(selectedVictim)
        end
    end
})

blobmanTab:AddButton({
    Name = "Stop Grab Loop",
    Callback = function()
        grabLoopActive = false
    end
})

blobmanTab:AddSection({ Name = "Fast Kill" })

blobmanTab:AddButton({
    Name = "Kill",
    Callback = function()
        if selectedVictim ~= "" then
            QuickKill(selectedVictim)
        end
    end
})

task.spawn(function()
    while true do
        task.wait(0.5)
        if autoKillActive and selectedVictim ~= "" then
            local targetPlayer = Players:FindFirstChild(selectedVictim)
            if targetPlayer and targetPlayer.Character then
                local humanoid = targetPlayer.Character:FindFirstChild("Humanoid")
                if humanoid and humanoid.Health > 0 then
                    QuickKill(selectedVictim)
                end
            end
        end
    end
end)

local blobmanKillActive = false

local function CreateBlobmanAtPosition()
    local character = LocalPlayer.Character
    local hrp = character and character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local menuToys = ReplicatedStorage:FindFirstChild("MenuToys")
    local spawnRemote = menuToys and menuToys:FindFirstChild("SpawnToyRemoteFunction")
    if spawnRemote then
        spawnRemote:InvokeServer("CreatureBlobman", hrp.CFrame * CFrame.new(0, 5, -5), Vector3.new(0, 27.4, 0))
    end
end

blobmanTab:AddSection({ Name = "Spawner" })

blobmanTab:AddButton({
    Name = "Spawn Blobman",
    Callback = function()
        CreateBlobmanAtPosition()
        OrionLib:MakeNotification({
            Name = "Blobman",
            Content = "Spawned! Ride it!",
            Time = 3
        })
    end
})

blobmanTab:AddToggle({
    Name = "Blobman Kill Player",
    Default = false,
    Callback = function(state)
        blobmanKillActive = state
        if state then
            if selectedVictim == "" then
                OrionLib:MakeNotification({
                    Name = "Error",
                    Content = "Select target in dropdown!",
                    Time = 3
                })
                blobmanKillActive = false
                return
            end
            task.spawn(function()
                OrionLib:MakeNotification({
                    Name = "Lock On",
                    Content = "Hunting " .. selectedVictim,
                    Time = 3
                })
                while blobmanKillActive do
                    local targetPlayer = Players:FindFirstChild(selectedVictim)
                    if targetPlayer and targetPlayer.Character then
                        local targetHrp = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local targetHumanoid = targetPlayer.Character:FindFirstChild("Humanoid")
                        if targetHrp and targetHumanoid and targetHumanoid.Health > 0 then
                            local myHrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            if myHrp then
                                myHrp.CFrame = targetHrp.CFrame * CFrame.new(0, 0, 2.5)
                            end
                            task.wait(0.05)
                            QuickKill(selectedVictim)
                            task.wait(0.5)
                        end
                    else
                        blobmanKillActive = false
                        OrionLib:MakeNotification({
                            Name = "Info",
                            Content = "Target escaped",
                            Time = 3
                        })
                        break
                    end
                end
            end)
        end
    end
})

local killAllLoopActive2 = false

blobmanTab:AddSection({ Name = "Kill All Loop" })

blobmanTab:AddToggle({
    Name = "Kill All Loop",
    Default = false,
    Callback = function(state)
        killAllLoopActive2 = state
        if state then
            task.spawn(function()
                OrionLib:MakeNotification({
                    Name = "System",
                    Content = "Dismember mode started",
                    Time = 3
                })
                while killAllLoopActive2 do
                    if not GetBlobmanMount() then
                        killAllLoopActive2 = false
                        break
                    end
                    for _, player in pairs(Players:GetPlayers()) do
                        if player ~= LocalPlayer and player.Character then
                            local targetHrp = player.Character:FindFirstChild("HumanoidRootPart")
                            local targetHumanoid = player.Character:FindFirstChildOfClass("Humanoid")
                            if targetHrp and targetHumanoid and targetHumanoid.Health > 0 then
                                targetHumanoid.BreakJointsOnDeath = false
                                local myHrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                if myHrp then
                                    myHrp.CFrame = targetHrp.CFrame * CFrame.new(0, 0, 3)
                                end
                                task.wait(0.05)
                                for i = 1, 100 do
                                    local blobman = GetBlobmanMount()
                                    if blobman then
                                        local seatScript = blobman:FindFirstChild("BlobmanSeatAndOwnerScript")
                                        local creatureGrab = seatScript and seatScript:FindFirstChild("CreatureGrab")
                                        local leftDetector = blobman:FindFirstChild("LeftDetector")
                                        local leftWeld = leftDetector and leftDetector:FindFirstChild("LeftWeld")
                                        if creatureGrab and leftWeld then
                                            creatureGrab:FireServer(leftDetector, targetHrp, leftWeld)
                                        end
                                    end
                                    if i % 25 == 0 then task.wait() end
                                end
                                targetHumanoid.Health = 0
                                targetHumanoid:ChangeState(Enum.HumanoidStateType.Dead)
                                task.delay(3, function()
                                    if player.Character then
                                        for _, part in pairs(player.Character:GetDescendants()) do
                                            if part:IsA("BasePart") then
                                                part:Destroy()
                                            end
                                        end
                                    end
                                end)
                                task.wait(0.15)
                            end
                        end
                    end
                    task.wait(0.5)
                end
            end)
        end
    end
})

local killTornadoActive = false
local killTornadoPart = nil

blobmanTab:AddToggle({
    Name = "🌪️ Kill Tornado",
    Default = false,
    Callback = function(state)
        killTornadoActive = state
        if state then
            killTornadoPart = Instance.new("Part")
            killTornadoPart.Shape = Enum.PartType.Ball
            killTornadoPart.Size = Vector3.new(6, 6, 6)
            killTornadoPart.Material = Enum.Material.Neon
            killTornadoPart.BrickColor = BrickColor.new("Deep orange")
            killTornadoPart.CanCollide = false
            killTornadoPart.Anchored = true
            killTornadoPart.Parent = workspace
            task.spawn(function()
                while killTornadoActive do
                    local character = LocalPlayer.Character
                    local hrp = character and character:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local angle = tick() * 0.3
                        killTornadoPart.CFrame = hrp.CFrame * CFrame.new(math.cos(angle) * 6, 6, math.sin(angle) * 6)
                        for _, player in pairs(Players:GetPlayers()) do
                            if player ~= LocalPlayer and player.Character then
                                local targetHrp = player.Character:FindFirstChild("HumanoidRootPart")
                                if targetHrp and (killTornadoPart.Position - targetHrp.Position).Magnitude < 8 then
                                    local humanoid = player.Character:FindFirstChild("Humanoid")
                                    if humanoid and humanoid.Health > 0 then
                                        humanoid.BreakJointsOnDeath = false
                                        humanoid.Health = 0
                                        humanoid:ChangeState(Enum.HumanoidStateType.Dead)
                                    end
                                end
                            end
                        end
                    end
                    task.wait()
                end
                if killTornadoPart then
                    killTornadoPart:Destroy()
                end
            end)
        else
            if killTornadoPart then
                killTornadoPart:Destroy()
            end
        end
    end
})

local blackHoleCount = 0
local blackHoleDetected = {}
local placementShape = "circle"
local circleRadius = 25
local doubleRadius1 = 15
local doubleRadius2 = 35
local spiralRadius1 = 10
local spiralRadius2 = 40
local heavenHeight = 100
local spawnHeight = 100

local function GetOtherPlayers()
    local list = {}
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(list, player)
        end
    end
    return list
end

local function GetOtherPlayerNames()
    local list = {}
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(list, player.Name)
        end
    end
    return list
end

local function GetMyHrp()
    local character = LocalPlayer.Character
    if character then
        return character:FindFirstChild("HumanoidRootPart")
    end
    return nil
end

local function GetMyBlobman()
    for _, obj in pairs(Workspace:GetDescendants()) do
        if obj.Name == "CreatureBlobman" then
            local seat = obj:FindFirstChild("VehicleSeat")
            local seatWeld = seat and seat:FindFirstChild("SeatWeld")
            if seatWeld then
                local part1 = seatWeld.Part1
                if part1 and part1:IsDescendantOf(LocalPlayer.Character) then
                    return obj
                end
            end
        end
    end
    return nil
end

local function SpawnAndSitBlobman()
    for i = 1, 30 do
        task.wait(0.1)
        local spawnedToys = workspace:FindFirstChild(LocalPlayer.Name .. "SpawnedInToys")
        if spawnedToys then
            local blobman = spawnedToys:FindFirstChild("CreatureBlobman")
            if blobman then
                local vehicleSeat = blobman:FindFirstChild("VehicleSeat")
                if vehicleSeat then
                    local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        vehicleSeat:Sit(humanoid)
                        task.wait(0.2)
                        if humanoid.SeatPart == vehicleSeat then
                            return blobman
                        end
                    end
                end
            end
        end
    end
    return nil
end

local function SpawnBlobmanAndSit()
    local hrp = GetMyHrp()
    if not hrp then return nil end
    local spawnPos = hrp.CFrame * CFrame.new(0, 0, -8)
    local menuToys = ReplicatedStorage:FindFirstChild("MenuToys")
    if menuToys then
        pcall(function()
            menuToys.SpawnToyRemoteFunction:InvokeServer("CreatureBlobman", spawnPos, Vector3.new(0, 27.4, 0))
        end)
    end
    return SpawnAndSitBlobman()
end

local function CircleFormation(center, radius, count)
    local positions = {}
    if count == 0 then return positions end
    for i = 1, count do
        local angle = (i - 1) * math.pi * 2 / count
        table.insert(positions, {
            x = center.X + radius * math.cos(angle),
            z = center.Z + radius * math.sin(angle)
        })
    end
    return positions
end

local function DoubleCircleFormation(center, radius1, radius2, count)
    local positions = {}
    if count == 0 then return positions end
    local half = math.floor(count / 2)
    local angleStep = math.pi * 2 / math.max(half, 1)
    for i = 1, half do
        local angle = (i - 1) * angleStep
        table.insert(positions, {
            x = center.X + radius1 * math.cos(angle),
            z = center.Z + radius1 * math.sin(angle)
        })
    end
    for i = 1, count - half do
        local angle = (i - 1) * math.pi * 2 / math.max(count - half, 1) + math.pi / (count - half)
        table.insert(positions, {
            x = center.X + radius2 * math.cos(angle),
            z = center.Z + radius2 * math.sin(angle)
        })
    end
    return positions
end

local function SpiralFormation(center, radius1, radius2, count)
    local positions = {}
    if count == 0 then return positions end
    for i = 1, count do
        local r = radius1 + (radius2 - radius1) * (i - 1) / (count - 1)
        local angle = (i - 1) * math.pi * 2 / count * 3
        table.insert(positions, {
            x = center.X + r * math.cos(angle),
            z = center.Z + r * math.sin(angle)
        })
    end
    return positions
end

local function SetNetworkOwner(part)
    if not part then return end
    local grabEvents = ReplicatedStorage:FindFirstChild("GrabEvents")
    if grabEvents then
        local setOwner = grabEvents:FindFirstChild("SetNetworkOwner")
        if setOwner then
            pcall(function()
                setOwner:FireServer(part, part.CFrame)
            end)
        end
    end
end

local function DestroyGrabLine(part)
    if not part then return false end
    local grabEvents = ReplicatedStorage:FindFirstChild("GrabEvents")
    if not grabEvents then return false end
    pcall(function()
        local setOwner = grabEvents:FindFirstChild("SetNetworkOwner")
        if setOwner then
            setOwner:FireServer(part, CFrame.new(part.Position))
        end
        local destroyLine = grabEvents:FindFirstChild("DestroyGrabLine")
        if destroyLine then
            destroyLine:FireServer(part)
        end
    end)
    return true
end

local function AnchorAllParts(instance)
    if not instance then return end
    for _, part in ipairs(instance:GetDescendants()) do
        if part:IsA("BasePart") then
            pcall(function()
                part.Anchored = true
            end)
        end
    end
end

local function UnanchorAllParts(instance)
    if not instance then return end
    for _, part in ipairs(instance:GetDescendants()) do
        if part:IsA("BasePart") then
            pcall(function()
                part.Anchored = false
            end)
        end
    end
end

local function ApplyFormation(players, centerX, centerZ, height, formationFunc, ...)
    local positions = formationFunc({ X = centerX, Z = centerZ }, ...)
    for i, player in ipairs(players) do
        if player.Character and positions[i] then
            local hrp = player.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                hrp.CFrame = CFrame.new(positions[i].x, height + heavenHeight, positions[i].z)
            end
        end
    end
end

local function DetectBlackHole(child)
    if child.Name == "BlackHoleKick" and not blackHoleDetected[child] then
        blackHoleCount = blackHoleCount + 1
        blackHoleDetected[child] = true
        OrionLib:MakeNotification({
            Name = "BlackHoleKick Detected",
            Content = "Number " .. blackHoleCount,
            Time = 5
        })
    end
end

for _, child in pairs(workspace:GetChildren()) do
    DetectBlackHole(child)
end
workspace.ChildAdded:Connect(DetectBlackHole)

local omniTab = window:MakeTab({
    Name = "Omni / Kick All"
})

omniTab:AddSection({ Name = "BlackHole Detection" })

omniTab:AddButton({
    Name = "Reset BlackHole Counter",
    Callback = function()
        blackHoleCount = 0
        blackHoleDetected = {}
        OrionLib:MakeNotification({
            Name = "Reset",
            Content = "BlackHole counter reset",
            Time = 2
        })
    end
})

omniTab:AddSection({ Name = "Placement Mode" })

omniTab:AddDropdown({
    Name = "Player Formation",
    Default = "Circle (Single)",
    Options = {
        "Circle (Single)",
        "Double Circle",
        "Spiral"
    },
    Callback = function(selected)
        if selected == "Circle (Single)" then
            placementShape = "circle"
        elseif selected == "Double Circle" then
            placementShape = "double"
        elseif selected == "Spiral" then
            placementShape = "spiral"
        end
    end
})

omniTab:AddSection({ Name = "Target Selection" })

local targetPlayer = nil
local targetDropdown = omniTab:AddDropdown({
    Name = "Select Target",
    Default = "",
    Options = GetOtherPlayerNames(),
    Callback = function(selected)
        targetPlayer = Players:FindFirstChild(selected)
        if targetPlayer then
            OrionLib:MakeNotification({
                Name = "Selected",
                Content = selected,
                Time = 1.5
            })
        end
    end
})

omniTab:AddButton({
    Name = "Refresh Player List",
    Callback = function()
        targetDropdown:Refresh(GetOtherPlayerNames(), true)
    end
})

omniTab:AddButton({
    Name = "Single Kick",
    Callback = function()
        local myBlobman = GetMyBlobman()
        if not myBlobman then
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Run KICK ALL first",
                Time = 3
            })
            return
        end
        if not targetPlayer then
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Select target first",
                Time = 2
            })
            return
        end
        local targetHrp = targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not targetHrp then
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Target not found",
                Time = 2
            })
            return
        end
        local myHrp = GetMyHrp()
        if myHrp then
            myHrp.CFrame = targetHrp.CFrame
            task.wait(0.02)
        end
        SetNetworkOwner(targetHrp)
        for i = 1, 3 do
            if myBlobman then
                local seatScript = myBlobman:FindFirstChild("BlobmanSeatAndOwnerScript")
                if seatScript then
                    local grab = seatScript:FindFirstChild("CreatureGrab")
                    local leftDetector = myBlobman:FindFirstChild("LeftDetector")
                    local leftWeld = leftDetector and leftDetector:FindFirstChild("LeftWeld")
                    if grab and leftWeld then
                        pcall(function()
                            grab:FireServer(leftDetector, targetHrp, leftWeld)
                        end)
                    end
                end
            end
            if i < 3 then task.wait(0.08) end
        end
        OrionLib:MakeNotification({
            Name = "Done",
            Content = "Kicked " .. targetPlayer.Name,
            Time = 2
        })
    end
})

omniTab:AddButton({
    Name = "Spam (100x)",
    Callback = function()
        if not targetPlayer then
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Select target first",
                Time = 2
            })
            return
        end
        local myBlobman = GetMyBlobman()
        if not myBlobman then
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Run KICK ALL first",
                Time = 3
            })
            return
        end
        OrionLib:MakeNotification({
            Name = "Spam Start",
            Content = "100x on " .. targetPlayer.Name,
            Time = 2
        })
        task.spawn(function()
            for i = 1, 100 do
                local targetHrp = targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                if targetHrp and myBlobman then
                    local seatScript = myBlobman:FindFirstChild("BlobmanSeatAndOwnerScript")
                    if seatScript then
                        local grab = seatScript:FindFirstChild("CreatureGrab")
                        local leftDetector = myBlobman:FindFirstChild("LeftDetector")
                        local rightDetector = myBlobman:FindFirstChild("RightDetector")
                        local leftWeld = leftDetector and leftDetector:FindFirstChild("LeftWeld")
                        local rightWeld = rightDetector and rightDetector:FindFirstChild("RightWeld")
                        if grab and leftWeld and rightWeld then
                            pcall(function()
                                grab:FireServer(leftDetector, targetHrp, leftWeld)
                                grab:FireServer(rightDetector, targetHrp, rightWeld)
                            end)
                        end
                    end
                end
                task.wait(0.02)
            end
            OrionLib:MakeNotification({
                Name = "Spam Done",
                Content = "100x complete",
                Time = 2
            })
        end)
    end
})

omniTab:AddButton({
    Name = "KICK ALL",
    Callback = function()
        local otherPlayers = GetOtherPlayers()
        if #otherPlayers == 0 then
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "No other players",
                Time = 2
            })
            return
        end
        if blackHoleCount > 0 then
            OrionLib:MakeNotification({
                Name = "Warning",
                Content = "Detected BlackHoles: " .. blackHoleCount,
                Time = 3
            })
        end
        local myBlobman = SpawnBlobmanAndSit()
        if not myBlobman then
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Could not ride Blobman",
                Time = 3
            })
            return
        end
        OrionLib:MakeNotification({
            Name = "Success",
            Content = "Mounted Blobman",
            Time = 1.5
        })
        task.wait(0.3)
        local myHrp = GetMyHrp()
        if not myHrp then return end

        for _, player in ipairs(otherPlayers) do
            local targetHrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
            if targetHrp then
                myHrp.CFrame = targetHrp.CFrame
                task.wait(0.02)
                SetNetworkOwner(targetHrp)
                for i = 1, 3 do
                    local blobman = GetMyBlobman()
                    if blobman then
                        local seatScript = blobman:FindFirstChild("BlobmanSeatAndOwnerScript")
                        if seatScript then
                            local grab = seatScript:FindFirstChild("CreatureGrab")
                            local leftDetector = blobman:FindFirstChild("LeftDetector")
                            local leftWeld = leftDetector and leftDetector:FindFirstChild("LeftWeld")
                            if grab and leftWeld then
                                pcall(function()
                                    grab:FireServer(leftDetector, targetHrp, leftWeld)
                                end)
                            end
                        end
                    end
                    if i < 3 then task.wait(0.08) end
                end
            end
        end
        myHrp.CFrame = CFrame.new(0, spawnHeight, 0)
        task.wait(0.1)
        AnchorAllParts(myBlobman)
        task.wait(0.1)
        if placementShape == "circle" then
            ApplyFormation(otherPlayers, 0, 0, 0, function(center, ...)
                return CircleFormation(center, circleRadius, ...)
            end, #otherPlayers)
        elseif placementShape == "double" then
            ApplyFormation(otherPlayers, 0, 0, 0, function(center, ...)
                return DoubleCircleFormation(center, doubleRadius1, doubleRadius2, ...)
            end, #otherPlayers)
        elseif placementShape == "spiral" then
            ApplyFormation(otherPlayers, 0, 0, 0, function(center, ...)
                return SpiralFormation(center, spiralRadius1, spiralRadius2, ...)
            end, #otherPlayers)
        end
        task.wait(0.1)
        for _, player in ipairs(otherPlayers) do
            local targetHrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
            if targetHrp then
                DestroyGrabLine(targetHrp)
            end
        end
        task.wait(0.1)
        for _, player in ipairs(otherPlayers) do
            local targetHrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
            if targetHrp then
                DestroyGrabLine(targetHrp)
            end
        end
        task.wait(0.3)
        for i = 1, 3 do
            for _, player in ipairs(GetOtherPlayers()) do
                local blobman = GetMyBlobman()
                if blobman and player.Character then
                    local targetHrp = player.Character:FindFirstChild("HumanoidRootPart")
                    if targetHrp then
                        local seatScript = blobman:FindFirstChild("BlobmanSeatAndOwnerScript")
                        if seatScript then
                            local grab = seatScript:FindFirstChild("CreatureGrab")
                            local leftDetector = blobman:FindFirstChild("LeftDetector")
                            local rightDetector = blobman:FindFirstChild("RightDetector")
                            local leftWeld = leftDetector and leftDetector:FindFirstChild("LeftWeld")
                            local rightWeld = rightDetector and rightDetector:FindFirstChild("RightWeld")
                            if grab and leftWeld and rightWeld then
                                pcall(function()
                                    grab:FireServer(leftDetector, targetHrp, leftWeld)
                                    grab:FireServer(rightDetector, targetHrp, rightWeld)
                                end)
                            end
                        end
                    end
                end
            end
            if i < 3 then task.wait(0.08) end
        end
        task.wait(0.1)
        UnanchorAllParts(GetMyBlobman())
        OrionLib:MakeNotification({
            Name = "Kick All Complete",
            Content = #otherPlayers .. " players kicked",
            Time = 4
        })
    end
})

omniTab:AddSection({ Name = "Destroy Server" })

local destroyHeightMode = "Spawn"

local function GetGrabEvents()
    return ReplicatedStorage:FindFirstChild("GrabEvents")
end

local function SetNetworkOwnerSimple(part)
    if not part then return end
    local grabEvents = GetGrabEvents()
    if not grabEvents then return end
    local setOwner = grabEvents:FindFirstChild("SetNetworkOwner")
    if setOwner then
        pcall(function()
            setOwner:FireServer(part, part.CFrame)
        end)
    end
end

local function TeleportToTarget(myHrp, targetHrp)
    if not myHrp or not targetHrp then return end
    pcall(function()
        myHrp.CFrame = targetHrp.CFrame * CFrame.new(0, 5, 5)
        myHrp.AssemblyLinearVelocity = Vector3.zero
    end)
end

local function DestroyTargetGrabLine(targetHrp)
    if not targetHrp then return end
    local grabEvents = GetGrabEvents()
    if not grabEvents then return end
    local createLine = grabEvents:FindFirstChild("CreateGrabLine")
    local destroyLine = grabEvents:FindFirstChild("DestroyGrabLine")
    if not createLine or not destroyLine then return end
    pcall(function()
        createLine:FireServer(targetHrp, CFrame.new(0, 1000000000, 0))
        task.wait()
        destroyLine:FireServer(targetHrp)
    end)
end

local lineLagActive = false
local lineLagCoroutine = nil

local function StartLineLag()
    if lineLagActive then return end
    lineLagActive = true
    lineLagCoroutine = coroutine.create(function()
        local grabEvents = GetGrabEvents()
        if not grabEvents then return end
        local createLine = grabEvents:FindFirstChild("CreateGrabLine")
        if not createLine then return end
        while lineLagActive do
            local spawnLocation = workspace:FindFirstChild("SpawnLocation")
            if spawnLocation then end
            task.wait()
        end
    end)
    coroutine.resume(lineLagCoroutine)
end

local function StopLineLag()
    if not lineLagActive then return end
    lineLagActive = false
    if lineLagCoroutine then
        coroutine.close(lineLagCoroutine)
    end
end

omniTab:AddDropdown({
    Name = "Height Mode",
    Default = "Spawn (Ground)",
    Options = {
        "Spawn (Ground)",
        "Heaven (Sky)"
    },
    Callback = function(selected)
        destroyHeightMode = selected == "Heaven (Sky)" and "Heaven" or "Spawn"
        OrionLib:MakeNotification({
            Name = "Height Mode",
            Content = selected,
            Time = 2
        })
    end
})

omniTab:AddButton({
    Name = "Destroy Server",
    Callback = function()
        task.spawn(function()
            local height = destroyHeightMode == "Heaven" and 1000000000 or 35
            StartLineLag()
            task.wait(1)
            local otherPlayers = GetOtherPlayers()
            if #otherPlayers == 0 then
                StopLineLag()
                OrionLib:MakeNotification({
                    Name = "Destroy",
                    Content = "No target players",
                    Time = 3
                })
                return
            end
            OrionLib:MakeNotification({
                Name = "Destroy",
                Content = #otherPlayers .. " players found",
                Time = 2
            })
            local myHrp = GetMyHrp()
            if not myHrp then
                StopLineLag()
                OrionLib:MakeNotification({
                    Name = "Destroy",
                    Content = "You have no character",
                    Time = 3
                })
                return
            end
            local targets = {}
            for _, player in ipairs(otherPlayers) do
                local targetHrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                if targetHrp then
                    table.insert(targets, { player = player, hrp = targetHrp })
                end
            end
            for _, target in ipairs(targets) do
                TeleportToTarget(myHrp, target.hrp)
                task.wait(0.2)
                SetNetworkOwnerSimple(target.hrp)
                task.wait()
            end
            for i, target in ipairs(targets) do
                local angle = (i - 1) * math.pi * 2 / #targets
                local x = math.cos(angle) * 40
                local z = math.sin(angle) * 40
                pcall(function()
                    target.hrp.CFrame = CFrame.new(x, height, z)
                    target.hrp.AssemblyLinearVelocity = Vector3.zero
                    target.hrp.Velocity = Vector3.zero
                end)
                local bp = Instance.new("BodyPosition")
                bp.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                bp.P = 50000000
                bp.Position = Vector3.new(x, height, z)
                bp.Parent = target.hrp
                task.delay(2, function()
                    pcall(function()
                        bp:Destroy()
                    end)
                end)
                task.wait()
            end
            OrionLib:MakeNotification({
                Name = "Destroy",
                Content = "Breaking lines...",
                Time = 2
            })
            for i = 1, 8 do
                for _, target in ipairs(targets) do
                    DestroyTargetGrabLine(target.hrp)
                end
                task.wait(0.3)
            end
            OrionLib:MakeNotification({
                Name = "Destroy",
                Content = "Complete!",
                Time = 2
            })
            task.wait(6)
            StopLineLag()
        end)
    end
})

omniTab:AddSection({ Name = "Single" })

local singleHeightMode = "Spawn"

omniTab:AddDropdown({
    Name = "Single Height Mode",
    Default = "Spawn (Ground)",
    Options = {
        "Spawn (Ground)",
        "Heaven (Sky)"
    },
    Callback = function(selected)
        singleHeightMode = selected == "Heaven (Sky)" and "Heaven" or "Spawn"
        OrionLib:MakeNotification({
            Name = "Height Mode (Single)",
            Content = selected,
            Time = 2
        })
    end
})

omniTab:AddButton({
    Name = "Single",
    Callback = function()
        if not targetPlayer then
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Select target first",
                Time = 3
            })
            return
        end
        local targetHrp = targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not targetHrp then
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Target character not found",
                Time = 3
            })
            return
        end
        local myHrp = GetMyHrp()
        if not myHrp then
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "You have no character",
                Time = 3
            })
            return
        end
        local height = singleHeightMode == "Heaven" and 1000000000 or 35
        StartLineLag()
        task.wait(1)
        TeleportToTarget(myHrp, targetHrp)
        task.wait(0.2)
        SetNetworkOwnerSimple(targetHrp)
        task.wait()
        pcall(function()
            targetHrp.CFrame = CFrame.new(0, height, 0)
            targetHrp.AssemblyLinearVelocity = Vector3.zero
            targetHrp.Velocity = Vector3.zero
        end)
        local bp = Instance.new("BodyPosition")
        bp.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
        bp.P = 50000000
        bp.Position = Vector3.new(0, height, 0)
        bp.Parent = targetHrp
        task.delay(2, function()
            pcall(function()
                bp:Destroy()
            end)
        end)
        OrionLib:MakeNotification({
            Name = "Destroy Single",
            Content = "Breaking lines...",
            Time = 2
        })
        for i = 1, 8 do
            DestroyTargetGrabLine(targetHrp)
            task.wait(0.3)
        end
        OrionLib:MakeNotification({
            Name = "Destroy Single",
            Content = targetPlayer.Name .. " destroyed!",
            Time = 2
        })
        task.wait(6)
        StopLineLag()
    end
})

omniTab:AddSection({ Name = "Blobman Spam" })

local rotationSpamActive = false
local rotationAngle = 0
local rotationTarget = ""
local rotationSpeed = 0.5
local rotationSpeedRad = 2 * math.pi / rotationSpeed
local rotationConnection = nil

local function GetSpawnedToys()
    return workspace:FindFirstChild(LocalPlayer.Name .. "SpawnedInToys")
end

local function GetMyBlobmanToy()
    local toys = GetSpawnedToys()
    if toys then
        return toys:FindFirstChild("CreatureBlobman")
    end
    return nil
end

local function MakePartsMassless(instance)
    if not instance then return end
    for _, part in ipairs(instance:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = false
            part.Massless = true
        end
    end
end

local function SpawnBlobmanAtPlayer()
    local character = LocalPlayer.Character
    local hrp = character and character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local spawnPos = hrp.CFrame * CFrame.new(0, 0, -5)
    pcall(function()
        local menuToys = ReplicatedStorage:FindFirstChild("MenuToys")
        if menuToys then
            local spawnRemote = menuToys:FindFirstChild("SpawnToyRemoteFunction")
            if spawnRemote then
                spawnRemote:InvokeServer("CreatureBlobman", spawnPos, Vector3.new(0, 90, 0))
            end
        end
    end)
end

local function DestroyMyBlobman()
    local blobman = GetMyBlobmanToy()
    if blobman then
        pcall(function()
            local menuToys = ReplicatedStorage:FindFirstChild("MenuToys")
            if menuToys then
                local destroyToy = menuToys:FindFirstChild("DestroyToy")
                if destroyToy then
                    destroyToy:FireServer(blobman)
                end
            end
        end)
    end
end

local function GrabTarget(blobman, targetHrp)
    if not blobman or not targetHrp then return end
    local seatScript = blobman:FindFirstChild("BlobmanSeatAndOwnerScript")
    if not seatScript then return end
    local grab = seatScript:FindFirstChild("CreatureGrab")
    local release = seatScript:FindFirstChild("CreatureRelease")
    local detector = blobman:FindFirstChild("LeftDetector") or blobman:FindFirstChild("RightDetector")
    local weld = detector and (detector:FindFirstChild("LeftWeld") or detector:FindFirstChild("RightWeld"))
    if not (grab and release and detector and weld) then return end
    pcall(function()
        grab:FireServer(detector, targetHrp, weld)
        release:FireServer(weld, targetHrp)
    end)
end

local function NudgeCharacter(player)
    if not player or not player.Character then return end
    local pcld = player.Character:FindFirstChild("PCLD")
    if pcld and pcld:IsA("BasePart") then
        pcld.Position = pcld.Position + Vector3.new(math.random(-2, 2), math.random(-1, 1), math.random(-2, 2))
    end
end

local function GetRotationTargetList()
    local list = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(list, player.DisplayName .. " (@" .. player.Name .. ")")
        end
    end
    return list
end

local rotationDropdown = omniTab:AddDropdown({
    Name = "Rotation Target",
    Default = "",
    Options = GetRotationTargetList(),
    Callback = function(selected)
        rotationTarget = selected:match("@([%w_%.]+)") or ""
    end
})

task.spawn(function()
    while true do
        rotationDropdown:Refresh(GetRotationTargetList(), true)
        task.wait(5)
    end
end)

omniTab:AddSlider({
    Name = "Rotation Speed",
    Min = 0.001,
    Max = 5,
    Default = 0.5,
    Increment = 0.05,
    Callback = function(value)
        rotationSpeed = value
        rotationSpeedRad = 2 * math.pi / rotationSpeed
        OrionLib:MakeNotification({
            Name = "Speed changed",
            Content = "Now " .. value .. " sec/circle",
            Time = 1
        })
    end
})

omniTab:AddToggle({
    Name = "Rotation Spam",
    Default = false,
    Callback = function(state)
        rotationSpamActive = state
        if state then
            if rotationConnection then
                rotationConnection:Disconnect()
            end
            rotationAngle = 0
            local targetPlayer = Players:FindFirstChild(rotationTarget)
            if not targetPlayer then
                OrionLib:MakeNotification({
                    Name = "Error",
                    Content = "Target not found",
                    Time = 2
                })
                rotationSpamActive = false
                return
            end
            local myBlobman = GetMyBlobmanToy()
            if not myBlobman then
                SpawnBlobmanAtPlayer()
                task.wait(0.5)
                myBlobman = GetMyBlobmanToy()
            end
            if not myBlobman then
                OrionLib:MakeNotification({
                    Name = "Error",
                    Content = "Could not get Blobman",
                    Time = 2
                })
                rotationSpamActive = false
                return
            end
            local character = LocalPlayer.Character
            local humanoid = character and character:FindFirstChild("Humanoid")
            local seat = myBlobman:FindFirstChildOfClass("VehicleSeat") or myBlobman:FindFirstChildOfClass("Seat")
            if seat and character then
                seat:Sit(character)
            end
            local targetChar = targetPlayer.Character
            local targetHrp = targetChar and targetChar:FindFirstChild("HumanoidRootPart")
            local targetHumanoid = targetChar and targetChar:FindFirstChild("Humanoid")
            if not (targetHrp and targetHumanoid and targetHumanoid.Health > 0) then
                OrionLib:MakeNotification({
                    Name = "Error",
                    Content = "Target invalid",
                    Time = 2
                })
                rotationSpamActive = false
                return
            end
            local centerPos = Vector3.new(targetHrp.Position.X, targetHrp.Position.Y + 23, targetHrp.Position.Z)
            pcall(function()
                local grabEvents = GetGrabEvents()
                if grabEvents then
                    local setOwner = grabEvents:FindFirstChild("SetNetworkOwner")
                    if setOwner then
                        setOwner:FireServer(targetHrp, targetHrp.CFrame)
                    end
                end
                targetHrp.CFrame = CFrame.new(centerPos)
                targetHumanoid.PlatformStand = true
            end)
            rotationConnection = RunService.RenderStepped:Connect(function(dt)
                if not rotationSpamActive then return end
                local tp = Players:FindFirstChild(rotationTarget)
                if not tp or not tp.Character then
                    OrionLib:MakeNotification({
                        Name = "Stopped",
                        Content = "Target lost",
                        Time = 2
                    })
                    rotationSpamActive = false
                    if rotationConnection then
                        rotationConnection:Disconnect()
                    end
                    return
                end
                local tChar = tp.Character
                local tHrp = tChar:FindFirstChild("HumanoidRootPart")
                local tHumanoid = tChar:FindFirstChild("Humanoid")
                if not tHrp or not tHumanoid or tHumanoid.Health <= 0 then
                    OrionLib:MakeNotification({
                        Name = "Stopped",
                        Content = "Target died",
                        Time = 2
                    })
                    rotationSpamActive = false
                    if rotationConnection then
                        rotationConnection:Disconnect()
                    end
                    return
                end
                tHrp.CFrame = CFrame.new(centerPos)
                rotationAngle = rotationAngle + rotationSpeedRad * dt
                if rotationAngle > 2 * math.pi then
                    rotationAngle = rotationAngle - 2 * math.pi
                end
                if myBlobman and myBlobman.PrimaryPart then
                    myBlobman.PrimaryPart.CFrame = CFrame.lookAt(
                        centerPos + Vector3.new(math.cos(rotationAngle) * 30, 0, math.sin(rotationAngle) * 30),
                        centerPos
                    )
                    myBlobman.PrimaryPart.Velocity = Vector3.zero
                end
                GrabTarget(myBlobman, tHrp)
                pcall(function()
                    local grabEvents = GetGrabEvents()
                    if grabEvents then
                        local setOwner = grabEvents:FindFirstChild("SetNetworkOwner")
                        if setOwner then
                            setOwner:FireServer(tHrp, tHrp.CFrame)
                        end
                        local destroyLine = grabEvents:FindFirstChild("DestroyGrabLine")
                        if destroyLine then
                            destroyLine:FireServer(tHrp)
                        end
                    end
                end)
                NudgeCharacter(tp)
            end)
            OrionLib:MakeNotification({
                Name = "Rotation",
                Content = "Started: " .. (tp and tp.DisplayName or rotationTarget),
                Time = 2
            })
        else
            if rotationConnection then
                rotationConnection:Disconnect()
            end
            DestroyMyBlobman()
            OrionLib:MakeNotification({
                Name = "Rotation",
                Content = "Stopped",
                Time = 1
            })
        end
    end
})

local grabTab = window:MakeTab({
    Name = "Grab",
    Icon = "rbxassetid://73570431850302",
    PremiumOnly = false
})

local function GetGrabbedCharacter()
    local grabParts = workspace:FindFirstChild("GrabParts")
    if not grabParts then return nil end
    local grabPart = grabParts:FindFirstChild("GrabPart")
    if not grabPart then return nil end
    local weld = grabPart:FindFirstChild("WeldConstraint")
    if not weld then return nil end
    return weld.Part1
end

local function GetGrabbedPlayerCharacter()
    local part = GetGrabbedCharacter()
    if not part then return nil end
    local parent = part.Parent
    while parent do
        if parent:FindFirstChild("Humanoid") then
            return parent
        end
        parent = parent.Parent
    end
    return nil
end

local poisonGrabActive = false
local radioactiveGrabActive = false
local burnGrabActive = false
local noclipGrabActive = false
local grabKillActive = false
local throwPower = 400
local throwConnection = nil

grabTab:AddSlider({
    Name = "Throw Power",
    Min = 100,
    Max = 5000,
    Default = throwPower,
    Callback = function(value)
        throwPower = value
    end
})

grabTab:AddToggle({
    Name = "Throw (Left Click)",
    Default = false,
    Callback = function(state)
        if state then
            throwConnection = workspace.ChildAdded:Connect(function(child)
                if child.Name == "GrabParts" then
                    task.wait(0.05)
                    local grabPart = child:FindFirstChild("GrabPart")
                    local weld = grabPart and grabPart:FindFirstChild("WeldConstraint")
                    if weld then
                        local part1 = weld.Part1
                        if part1 then
                            local bodyVelocity = Instance.new("BodyVelocity", part1)
                            child:GetPropertyChangedSignal("Parent"):Connect(function()
                                if not child.Parent then
                                    local inputType = UserInputService:GetLastInputType()
                                    if inputType == Enum.UserInputType.MouseButton2 or inputType == Enum.UserInputType.Touch then
                                        bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                        bodyVelocity.Velocity = workspace.CurrentCamera.CFrame.LookVector * throwPower
                                        Debris:AddItem(bodyVelocity, 1)
                                    else
                                        bodyVelocity:Destroy()
                                    end
                                end
                            end)
                        end
                    end
                end
            end)
        else
            if throwConnection then
                throwConnection:Disconnect()
            end
        end
    end
})

grabTab:AddToggle({
    Name = "Poison Grab",
    Default = false,
    Callback = function(state)
        if state then
            poisonGrabActive = true
            task.spawn(function()
                while poisonGrabActive do
                    local char = GetGrabbedPlayerCharacter()
                    if char then
                        local humanoid = char:FindFirstChild("Humanoid")
                        if humanoid and humanoid.Health > 0 then
                            humanoid.Health = humanoid.Health - 5
                        end
                    end
                    task.wait(0.5)
                end
            end)
        else
            poisonGrabActive = false
        end
    end
})

grabTab:AddToggle({
    Name = "Radioactive Grab",
    Default = false,
    Callback = function(state)
        if state then
            radioactiveGrabActive = true
            task.spawn(function()
                while radioactiveGrabActive do
                    local char = GetGrabbedPlayerCharacter()
                    if char then
                        for _, part in pairs(char:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.Color = Color3.fromRGB(0, 255, 0)
                                part.Material = Enum.Material.Neon
                            end
                        end
                    end
                    task.wait(0.1)
                end
            end)
        else
            radioactiveGrabActive = false
            local char = GetGrabbedPlayerCharacter()
            if char then
                for _, part in pairs(char:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.Color = Color3.fromRGB(255, 255, 255)
                        part.Material = Enum.Material.Plastic
                    end
                end
            end
        end
    end
})

grabTab:AddToggle({
    Name = "Burn Grab",
    Default = false,
    Callback = function(state)
        if state then
            burnGrabActive = true
            task.spawn(function()
                while burnGrabActive do
                    local char = GetGrabbedPlayerCharacter()
                    if char then
                        for _, part in pairs(char:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.Color = Color3.fromRGB(255, 0, 0)
                                part.Material = Enum.Material.Neon
                            end
                        end
                        local humanoid = char:FindFirstChild("Humanoid")
                        if humanoid then
                            humanoid.Health = humanoid.Health - 3
                        end
                    end
                    task.wait(0.3)
                end
            end)
        else
            burnGrabActive = false
            local char = GetGrabbedPlayerCharacter()
            if char then
                for _, part in pairs(char:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.Color = Color3.fromRGB(255, 255, 255)
                        part.Material = Enum.Material.Plastic
                    end
                end
            end
        end
    end
})

grabTab:AddToggle({
    Name = "Noclip Grab",
    Default = false,
    Callback = function(state)
        if state then
            noclipGrabActive = true
            task.spawn(function()
                while noclipGrabActive do
                    local char = GetGrabbedPlayerCharacter()
                    if char then
                        for _, part in pairs(char:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = false
                                part.CanTouch = false
                            end
                        end
                    end
                    task.wait()
                end
            end)
        else
            noclipGrabActive = false
            local char = GetGrabbedPlayerCharacter()
            if char then
                for _, part in pairs(char:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                        part.CanTouch = true
                    end
                end
            end
        end
    end
})

grabTab:AddToggle({
    Name = "Grab Kill",
    Default = false,
    Callback = function(state)
        grabKillActive = state
        if state then
            task.spawn(function()
                while grabKillActive do
                    local char = GetGrabbedPlayerCharacter()
                    if char then
                        local humanoid = char:FindFirstChild("Humanoid")
                        if humanoid and humanoid.Health > 0 then
                            pcall(function()
                                humanoid.BreakJointsOnDeath = false
                                humanoid.Health = 0
                                humanoid:ChangeState(Enum.HumanoidStateType.Dead)
                                local hrp = char:FindFirstChild("HumanoidRootPart")
                                if hrp then
                                    hrp.Velocity = Vector3.zero
                                    hrp.AssemblyLinearVelocity = Vector3.zero
                                    hrp.AssemblyAngularVelocity = Vector3.zero
                                end
                                for _, part in pairs(char:GetDescendants()) do
                                    if part:IsA("BasePart") then
                                        part.Velocity = Vector3.zero
                                        part.AssemblyLinearVelocity = Vector3.zero
                                    end
                                end
                            end)
                        end
                    end
                    task.wait(0.1)
                end
            end)
            OrionLib:MakeNotification({
                Name = "Grab Kill",
                Content = "ON",
                Time = 1
            })
        else
            OrionLib:MakeNotification({
                Name = "Grab Kill",
                Content = "OFF",
                Time = 1
            })
        end
    end
})

local defenceTab = window:MakeTab({
    Name = "Defence"
})

local antiGrabActive = false

defenceTab:AddSection({ Name = "Auto Defense System" })

defenceTab:AddToggle({
    Name = "Anti Grab",
    Default = false,
    Callback = function(state)
        antiGrabActive = state
        if state then
            task.spawn(function()
                while antiGrabActive do
                    local characterEvents = ReplicatedStorage:FindFirstChild("CharacterEvents")
                    if characterEvents then
                        local struggle = characterEvents:FindFirstChild("Struggle")
                        if struggle then
                            struggle:FireServer()
                        end
                    end
                    task.wait(0.03)
                end
            end)
            OrionLib:MakeNotification({
                Name = "Anti Grab",
                Content = "ON",
                Time = 1
            })
        else
            OrionLib:MakeNotification({
                Name = "Anti Grab",
                Content = "OFF",
                Time = 1
            })
        end
    end
})

local antiExplosionActive = false
local antiExplosionConnection = nil
local antiExplosionRagdollConnection = nil

local function SetupAntiExplosion(character)
    if not antiExplosionActive then return end
    local humanoid = character:WaitForChild("Humanoid", 5)
    local ragdolled = humanoid and humanoid:FindFirstChild("Ragdolled")
    if ragdolled then
        if antiExplosionRagdollConnection then
            antiExplosionRagdollConnection:Disconnect()
        end
        antiExplosionRagdollConnection = ragdolled:GetPropertyChangedSignal("Value"):Connect(function()
            if not antiExplosionActive then return end
            if ragdolled.Value then
                for _, part in ipairs(character:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.Anchored = true
                    end
                end
            else
                for _, part in ipairs(character:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.Anchored = false
                    end
                end
            end
        end)
    end
end

defenceTab:AddToggle({
    Name = "Anti Explosion",
    Default = false,
    Callback = function(state)
        antiExplosionActive = state
        if state then
            if LocalPlayer.Character then
                SetupAntiExplosion(LocalPlayer.Character)
            end
            antiExplosionConnection = LocalPlayer.CharacterAdded:Connect(SetupAntiExplosion)
            task.spawn(function()
                repeat task.wait() until not antiExplosionActive
                antiExplosionConnection:Disconnect()
                if antiExplosionRagdollConnection then
                    antiExplosionRagdollConnection:Disconnect()
                end
                if LocalPlayer.Character then
                    for _, part in ipairs(LocalPlayer.Character:GetChildren()) do
                        if part:IsA("BasePart") then
                            part.Anchored = false
                        end
                    end
                end
            end)
        else
            if antiExplosionRagdollConnection then
                antiExplosionRagdollConnection:Disconnect()
            end
        end
    end
})

local playerTab = window:MakeTab({
    Name = "Player"
})

local speedEnabled = false
local walkSpeed = 16
local jumpPower = 50
local infiniteJumpActive = false

local function ApplyWalkSpeed(value)
    local character = LocalPlayer.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.WalkSpeed = value
    end
end

playerTab:AddSlider({
    Name = "Walk Speed",
    Min = 16,
    Max = 300,
    Default = 16,
    Callback = function(value)
        if speedEnabled then
            ApplyWalkSpeed(value)
        end
        walkSpeed = value
    end
})

playerTab:AddToggle({
    Name = "Enable Speed Change",
    Default = false,
    Callback = function(state)
        speedEnabled = state
        local character = LocalPlayer.Character
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
        if state then
            if humanoid then
                humanoid.WalkSpeed = walkSpeed
            end
            OrionLib:MakeNotification({
                Name = "Speed Change",
                Content = "ON - " .. walkSpeed,
                Time = 1
            })
        else
            if humanoid then
                humanoid.WalkSpeed = 16
            end
            OrionLib:MakeNotification({
                Name = "Speed Change",
                Content = "OFF",
                Time = 1
            })
        end
    end
})

playerTab:AddSection({ Name = "Jump Settings" })

playerTab:AddSlider({
    Name = "Jump Power",
    Min = 1,
    Max = 300,
    Default = 50,
    Callback = function(value)
        jumpPower = value
        local character = LocalPlayer.Character
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.JumpPower = value
        end
    end
})

playerTab:AddToggle({
    Name = "Infinite Jump",
    Default = false,
    Callback = function(state)
        infiniteJumpActive = state
        if state then
            OrionLib:MakeNotification({
                Name = "Infinite Jump",
                Content = "ON - can jump in air",
                Time = 1.5
            })
        else
            OrionLib:MakeNotification({
                Name = "Infinite Jump",
                Content = "OFF",
                Time = 1
            })
        end
    end
})

UserInputService.JumpRequest:Connect(function()
    if not infiniteJumpActive then return end
    local character = LocalPlayer.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

LocalPlayer.CharacterAdded:Connect(function(character)
    task.wait(0.5)
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        if speedEnabled then
            humanoid.WalkSpeed = walkSpeed
        end
        humanoid.JumpPower = jumpPower
    end
end)

playerTab:AddButton({
    Name = "Reset to Default",
    Callback = function()
        local character = LocalPlayer.Character
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
        walkSpeed = 16
        jumpPower = 50
        if humanoid then
            humanoid.WalkSpeed = 16
            humanoid.JumpPower = 50
        end
        speedEnabled = false
        infiniteJumpActive = false
        OrionLib:MakeNotification({
            Name = "Reset",
            Content = "Speed 16 / Jump 50 restored",
            Time = 2
        })
    end
})

playerTab:AddSection({ Name = "Flight" })

local flightActive = false
local flightSpeed = 50
local flightBodyVelocity = nil
local flightBodyGyro = nil
local flightConnection = nil

local function StartFlight()
    local character = LocalPlayer.Character
    if not character then return end
    local hrp = character:FindFirstChild("HumanoidRootPart")
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not hrp or not humanoid then return end

    humanoid.PlatformStand = true

    flightBodyVelocity = Instance.new("BodyVelocity")
    flightBodyVelocity.MaxForce = Vector3.new(1, 1, 1) * 1000000
    flightBodyVelocity.Parent = hrp

    flightBodyGyro = Instance.new("BodyGyro")
    flightBodyGyro.MaxTorque = Vector3.new(1, 1, 1) * 100000000
    flightBodyGyro.P = 20000
    flightBodyGyro.D = 1000
    flightBodyGyro.Parent = hrp

    flightConnection = RunService.RenderStepped:Connect(function()
        if not flightActive or not hrp.Parent then return end
        local camera = workspace.CurrentCamera.CFrame
        flightBodyGyro.CFrame = camera

        local direction = Vector3.zero
        if UserInputService:IsKeyDown(Enum.KeyCode.W) then
            direction = direction + camera.LookVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then
            direction = direction - camera.LookVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then
            direction = direction - camera.RightVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then
            direction = direction + camera.RightVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
            direction = direction + Vector3.new(0, 1, 0)
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
            direction = direction - Vector3.new(0, 1, 0)
        end

        if direction.Magnitude > 0 then
            flightBodyVelocity.Velocity = direction.Unit * flightSpeed
        else
            flightBodyVelocity.Velocity = Vector3.zero
        end
    end)
end

local function StopFlight()
    if flightConnection then
        flightConnection:Disconnect()
    end
    if flightBodyVelocity then
        flightBodyVelocity:Destroy()
    end
    if flightBodyGyro then
        flightBodyGyro:Destroy()
    end
    local character = LocalPlayer.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.PlatformStand = false
    end
end

playerTab:AddToggle({
    Name = "Flight Mode",
    Default = false,
    Callback = function(state)
        flightActive = state
        if state then
            StartFlight()
            OrionLib:MakeNotification({
                Name = "Flight",
                Content = "ON - body follows camera",
                Time = 1.5
            })
        else
            StopFlight()
            OrionLib:MakeNotification({
                Name = "Flight",
                Content = "OFF",
                Time = 1
            })
        end
    end
})

playerTab:AddSlider({
    Name = "Flight Speed",
    Min = 20,
    Max = 200,
    Default = 50,
    Callback = function(value)
        flightSpeed = value
    end
})
