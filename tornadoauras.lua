local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

local Rayfield = nil
local loadSuccess, loadErr = pcall(function()
    return loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
end)
if loadSuccess then Rayfield = loadErr end

if not Rayfield then
    loadSuccess, loadErr = pcall(function()
        return loadstring(game:HttpGet('https://raw.githubusercontent.com/SiriusSoftwareLTD/Rayfield/main/source.lua'))()
    end)
    if loadSuccess then Rayfield = loadErr end
end

if not Rayfield then
    warn("[Tornado Script Error]: Could not load Rayfield UI library.")
    warn("Details: " .. tostring(loadErr))
    return
end

local Window = Rayfield:CreateWindow({
    Name = "🌪️ tarekscripter tornado script v5",
    LoadingTitle = "tarekscripter tornado script v5 Loading...",
    LoadingSubtitle = "by TarekScripter",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = "TornadoV5",
        FileName = "Config"
    },
    Discord = {
        Enabled = false
    },
    KeySystem = false
})

local isActive = false
local isCircleActive = false
local isSaturnActive = false
local isOrbitActive = false
local isAntiGrabActive = false
local isAntiExplosionActive = false
local isCompressing = false

local waitForNextShape = false
local isUnlockGrabActive = false

local customSpeed = 16
local customJumpPower = 50
local enableCustomSpeed = false
local enableCustomJump = false
local enableInfiniteJump = false

local activeProps = {}
local explodedBlacklist = {}
local globalItemCount = 0
local saturnCenterPos = Vector3.new(0, 100, 0)
local wanderTimer = 0
local randomWanderPos = Vector3.new(0, 50, 0)

local selectedTarget = "Me"
local playerMap = {}

local grabEventsFolder = ReplicatedStorage:FindFirstChild("GrabEvents")
local setNetworkOwnerEvent = grabEventsFolder and grabEventsFolder:FindFirstChild("SetNetworkOwner")
local destroyGrabLineEvent = grabEventsFolder and grabEventsFolder:FindFirstChild("DestroyGrabLine")

task.spawn(function()
    if not grabEventsFolder then
        grabEventsFolder = ReplicatedStorage:WaitForChild("GrabEvents", 5)
    end
    if grabEventsFolder then
        setNetworkOwnerEvent = setNetworkOwnerEvent or grabEventsFolder:WaitForChild("SetNetworkOwner", 3)
        destroyGrabLineEvent = destroyGrabLineEvent or grabEventsFolder:WaitForChild("DestroyGrabLine", 3)
    end
end)

local struggleEvent, ragdollRemoteEvent
local isHeldValue = LocalPlayer:WaitForChild("IsHeld")

pcall(function()
    local charEvents = ReplicatedStorage:FindFirstChild("CharacterEvents")
    if charEvents then
        struggleEvent = charEvents:FindFirstChild("Struggle")
        ragdollRemoteEvent = charEvents:FindFirstChild("RagdollRemote")
    end
end)

local function claimOwnership(part)
    if not part or not part:IsA("BasePart") then return end
    task.spawn(function()
        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        local targetCFrame = hrp and hrp.CFrame or part.CFrame

        for i = 1, 3 do
            if not part or not part.Parent then break end
            pcall(function()
                if destroyGrabLineEvent then destroyGrabLineEvent:FireServer(part) end
                if setNetworkOwnerEvent then setNetworkOwnerEvent:FireServer(part, targetCFrame) end
                part:SetNetworkOwner(LocalPlayer)
            end)
            task.wait(0.03)
        end
    end)
end

local function isValidProp(part)
    if not part or not part:IsA("BasePart") or part.Anchored then return false end
    if part:IsA("Terrain") then return false end
    if explodedBlacklist[part] then return false end

    local myChar = LocalPlayer.Character
    if myChar and part:IsDescendantOf(myChar) then return false end

    for _, plr in ipairs(Players:GetPlayers()) do
        local pChar = plr.Character
        if pChar and part:IsDescendantOf(pChar) then
            return false
        end
    end

    local ancestorModel = part:FindFirstAncestorOfClass("Model")
    if ancestorModel then
        if ancestorModel:FindFirstChildOfClass("Humanoid") then return false end
        if Players:GetPlayerFromCharacter(ancestorModel) then return false end
    end

    if part.Parent and part.Parent:FindFirstChildOfClass("Humanoid") then return false end

    return true
end

local function removePropPhysics(part)
    if activeProps[part] then
        pcall(function()
            if activeProps[part].AP then activeProps[part].AP:Destroy() end
            if activeProps[part].AO then activeProps[part].AO:Destroy() end
            if activeProps[part].Attachment then activeProps[part].Attachment:Destroy() end
        end)
        activeProps[part] = nil
    end

    if part and part:IsDescendantOf(Workspace) then
        pcall(function()
            part:SetNetworkOwner(nil)
        end)
    end
end

local function clearAllProps()
    for part, _ in pairs(activeProps) do
        removePropPhysics(part)
    end
    activeProps = {}
    globalItemCount = 0
end

local function checkShapeState()
    local anyActive = isActive or isCircleActive or isSaturnActive or isOrbitActive
    if not anyActive and not waitForNextShape then
        clearAllProps()
    end
end

local function attachPhysicsToProp(part)
    if isUnlockGrabActive then return end
    if activeProps[part] or not isValidProp(part) then return end
    if part:FindFirstChild("GrabbedAtt") or part:FindFirstChild("TornadoAttachment") or part:FindFirstChild("TornadoAlignPos") then
        return
    end

    claimOwnership(part)

    local att = Instance.new("Attachment")
    att.Name = "GrabbedAtt"
    att.Parent = part

    local ao = Instance.new("AlignOrientation")
    ao.Name = "TornadoAlignOrient"
    ao.Mode = Enum.OrientationAlignmentMode.OneAttachment
    ao.Attachment0 = att
    ao.MaxTorque = math.huge
    ao.Responsiveness = 100
    ao.CFrame = part.CFrame
    ao.Parent = part

    local ap = Instance.new("AlignPosition")
    ap.Name = "TornadoAlignPos"
    ap.Mode = Enum.PositionAlignmentMode.OneAttachment
    ap.Attachment0 = att
    ap.MaxForce = math.huge
    ap.MaxVelocity = 1200
    ap.Responsiveness = 90
    ap.Parent = part

    globalItemCount = globalItemCount + 1

    local section = ((globalItemCount - 1) % 3) + 1
    local subSlot = math.floor((globalItemCount - 1) / 3) % 10

    activeProps[part] = {
        Attachment = att,
        AP = ap,
        AO = ao,
        Section = section,
        SubSlot = subSlot,
        AngleOffset = (globalItemCount * 0.5)
    }
end

Workspace.ChildAdded:Connect(function(child)
    if not (isActive or isCircleActive or isSaturnActive or isOrbitActive) then return end

    if child.Name == "GrabParts" then
        task.spawn(function()
            local success, grabbedPart = pcall(function()
                local grabPart = child:WaitForChild("GrabPart", 1.5)
                local weld = grabPart:WaitForChild("WeldConstraint", 1.5)
                return weld.Part1
            end)

            if success and grabbedPart and isValidProp(grabbedPart) then
                attachPhysicsToProp(grabbedPart)
            end
        end)
    end
end)

Workspace.DescendantAdded:Connect(function(descendant)
    if not (isActive or isCircleActive or isSaturnActive or isOrbitActive) then return end
    if descendant:IsA("WeldConstraint") or descendant:IsA("Weld") or descendant:IsA("Motor6D") then
        local char = LocalPlayer.Character
        if char then
            local p0Descendant = descendant.Part0 and descendant.Part0:IsDescendantOf(char)
            local p1Descendant = descendant.Part1 and descendant.Part1:IsDescendantOf(char)

            if p0Descendant or p1Descendant then
                local grabbedPart = p0Descendant and descendant.Part1 or descendant.Part0
                if grabbedPart and isValidProp(grabbedPart) then
                    attachPhysicsToProp(grabbedPart)
                end
            end
        end
    end
end)

local function getTargetPosition()
    if selectedTarget == "Me" then
        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        return hrp and hrp.Position or Vector3.new(0, 0, 0)
    elseif selectedTarget == "Random Map" then
        return randomWanderPos
    else
        local targetPlayer = playerMap[selectedTarget]
        if targetPlayer and targetPlayer.Character then
            local hrp = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
            if hrp then return hrp.Position end
        end
        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        return hrp and hrp.Position or Vector3.new(0, 0, 0)
    end
end

local targetDropdown = nil

local function getDropdownOptions()
    local options = {"Me", "Random Map"}
    playerMap = {}

    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then
            local formattedName = string.format("%s (@%s)", plr.DisplayName, plr.Name)
            table.insert(options, formattedName)
            playerMap[formattedName] = plr
        end
    end
    return options
end

local function refreshTargetDropdown()
    if targetDropdown then
        targetDropdown:Refresh(getDropdownOptions(), true)
    end
end

Players.PlayerAdded:Connect(refreshTargetDropdown)
Players.PlayerRemoving:Connect(refreshTargetDropdown)

local function setupCharacterReset(character)
    if not character then return end
    local humanoid = character:WaitForChild("Humanoid", 5)
    local hrp = character:WaitForChild("HumanoidRootPart", 5)

    if humanoid then
        humanoid.Died:Connect(function()
            if hrp then
                hrp.Anchored = false
                hrp.AssemblyLinearVelocity = Vector3.zero
                hrp.AssemblyAngularVelocity = Vector3.zero
            end
        end)
    end
end

if LocalPlayer.Character then setupCharacterReset(LocalPlayer.Character) end
LocalPlayer.CharacterAdded:Connect(function(newChar)
    setupCharacterReset(newChar)
    local hrp = newChar:WaitForChild("HumanoidRootPart", 5)
    local humanoid = newChar:WaitForChild("Humanoid", 5)
    if hrp and humanoid then
        hrp.Anchored = false
        humanoid:ChangeState(Enum.HumanoidStateType.Running)
    end
end)

RunService.RenderStepped:Connect(function(deltaTime)
    if not enableCustomSpeed then return end

    local char = LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local humanoid = char:FindFirstChildOfClass("Humanoid")
    if not hrp or not humanoid or humanoid.Health <= 0 then return end

    local moveDir = humanoid.MoveDirection
    if moveDir.Magnitude > 0 then
        local targetVelocity = moveDir * customSpeed
        hrp.AssemblyLinearVelocity = Vector3.new(targetVelocity.X, hrp.AssemblyLinearVelocity.Y, targetVelocity.Z)
    end
end)

UserInputService.JumpRequest:Connect(function()
    if enableInfiniteJump then
        local char = LocalPlayer.Character
        local humanoid = char and char:FindFirstChildOfClass("Humanoid")
        local hrp = char and char:FindFirstChild("HumanoidRootPart")

        if humanoid and hrp and humanoid.Health > 0 then
            if enableCustomJump then
                hrp.AssemblyLinearVelocity = Vector3.new(hrp.AssemblyLinearVelocity.X, customJumpPower, hrp.AssemblyLinearVelocity.Z)
            else
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end
end)

local function setupJumpOverride(character)
    if not character then return end
    local humanoid = character:WaitForChild("Humanoid", 5)
    if not humanoid then return end

    humanoid.Jumping:Connect(function()
        if enableCustomJump and humanoid.Health > 0 then
            local hrp = character:FindFirstChild("HumanoidRootPart")
            if hrp then
                task.wait()
                hrp.AssemblyLinearVelocity = Vector3.new(hrp.AssemblyLinearVelocity.X, customJumpPower, hrp.AssemblyLinearVelocity.Z)
            end
        end
    end)
end

if LocalPlayer.Character then setupJumpOverride(LocalPlayer.Character) end
LocalPlayer.CharacterAdded:Connect(setupJumpOverride)

local function setupAntiGrabV1()
    isHeldValue.Changed:Connect(function(isBeingHeld)
        if isBeingHeld and isAntiGrabActive then
            local hrp = (LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
            local lastFire = 0
            local conn
            conn = RunService.Heartbeat:Connect(function()
                if isHeldValue.Value and isAntiGrabActive then
                    local now = tick()
                    if now - lastFire < 0.1 then return end
                    lastFire = now
                    hrp.Velocity = Vector3.new()
                    hrp.Anchored = true
                    if struggleEvent then struggleEvent:FireServer(LocalPlayer) end
                    if ragdollRemoteEvent then ragdollRemoteEvent:FireServer(hrp, 0) end
                else
                    hrp.Velocity = Vector3.new()
                    hrp.Anchored = false
                    conn:Disconnect()
                end
            end)
        end
    end)
end
setupAntiGrabV1()

local antiExplosionConnection = nil

local function setupAntiExplosion(character)
    if not character then return end
    local humanoid = character:WaitForChild("Humanoid", 5)
    local hrp = character:WaitForChild("HumanoidRootPart", 5)
    if not humanoid or not hrp then return end

    if antiExplosionConnection then antiExplosionConnection:Disconnect() end

    antiExplosionConnection = Workspace.ChildAdded:Connect(function(model)
        if not isAntiExplosionActive then return end
        local char = LocalPlayer.Character
        local h = char and char:FindFirstChild("Humanoid")
        local r = char and char:FindFirstChild("HumanoidRootPart")
        if not h or not r or h.Health <= 0 then return end

        if model:IsA("BasePart") and (model.Position - r.Position).Magnitude <= 20 then
            if h.SeatPart ~= nil then
                r.Anchored = true
                task.wait(0.03)
                r.AssemblyLinearVelocity = Vector3.zero
                r.AssemblyAngularVelocity = Vector3.zero
                r.Anchored = false
            else
                r.Anchored = true
                task.wait()
                h:ChangeState(Enum.HumanoidStateType.Running)
                r.Anchored = false
                h.AutoRotate = true
                for _, limb in ipairs(char:GetDescendants()) do
                    if limb:IsA("BasePart") and limb.Name == "RagdollLimbPart" then
                        limb.CanCollide = false
                    end
                end
            end
        end
    end)
end

if LocalPlayer.Character then setupAntiExplosion(LocalPlayer.Character) end
LocalPlayer.CharacterAdded:Connect(setupAntiExplosion)

local function triggerCompressAndBlast()
    if isCompressing then return end
    isCompressing = true

    local centerPos = getTargetPosition() + Vector3.new(0, 50, 0)

    for part, data in pairs(activeProps) do
        if part and part:IsDescendantOf(Workspace) and not part.Anchored then
            if data.AP then data.AP.Position = centerPos end
        end
    end

    task.wait(1.0)

    local propsToBlast = {}
    for part, _ in pairs(activeProps) do
        table.insert(propsToBlast, part)
    end

    for _, part in ipairs(propsToBlast) do
        if part and part:IsDescendantOf(Workspace) and not part.Anchored then
            removePropPhysics(part)

            local directionHorizontal = Vector3.new(math.random(-100, 100), 0, math.random(-100, 100))
            if directionHorizontal.Magnitude == 0 then
                directionHorizontal = Vector3.new(1, 0, 0)
            else
                directionHorizontal = directionHorizontal.Unit
            end

            local blastVelocity = (directionHorizontal * math.random(180, 300)) + Vector3.new(0, math.random(250, 450), 0)
            part.AssemblyLinearVelocity = blastVelocity
            part.AssemblyAngularVelocity = Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        end
    end

    activeProps = {}
    globalItemCount = 0
    isCompressing = false
end

local TornadoTab = Window:CreateTab("🌀 Tornado Modes", 4483362458)
local DefenseTab = Window:CreateTab("🛡️ Defense System", 4483362458)
local PlayerTab = Window:CreateTab("👤 Player", 4483362458)

targetDropdown = TornadoTab:CreateDropdown({
    Name = "Target Selector 🎯",
    Options = getDropdownOptions(),
    CurrentOption = {"Me"},
    MultipleOptions = false,
    Flag = "TargetDropdown",
    Callback = function(Option)
        local val = type(Option) == "table" and Option[1] or Option
        if val and val ~= "" then
            selectedTarget = val
        end
    end
})

TornadoTab:CreateToggle({
    Name = "Wait For Shape ⏳",
    CurrentValue = false,
    Flag = "WaitForShapeToggle",
    Callback = function(Value)
        waitForNextShape = Value
        checkShapeState()
    end
})

TornadoTab:CreateToggle({
    Name = "Unlock Grab 🔓 (Ignore New Items)",
    CurrentValue = false,
    Flag = "UnlockGrabToggle",
    Callback = function(Value)
        isUnlockGrabActive = Value
    end
})

TornadoTab:CreateToggle({
    Name = "Activate Tornado 🌪️",
    CurrentValue = false,
    Flag = "TornadoToggle",
    Callback = function(Value)
        if Value then
            isActive = true
            isCircleActive = false
            isSaturnActive = false
            isOrbitActive = false
        else
            isActive = false
            checkShapeState()
        end
    end
})

TornadoTab:CreateToggle({
    Name = "Sphere Mode 🔮",
    CurrentValue = false,
    Flag = "BallToggle",
    Callback = function(Value)
        if Value then
            isCircleActive = true
            isActive = false
            isSaturnActive = false
            isOrbitActive = false
        else
            isCircleActive = false
            checkShapeState()
        end
    end
})

TornadoTab:CreateToggle({
    Name = "Saturn Mode 🪐",
    CurrentValue = false,
    Flag = "SaturnToggle",
    Callback = function(Value)
        if Value then
            isSaturnActive = true
            isActive = false
            isCircleActive = false
            isOrbitActive = false
            local char = LocalPlayer.Character
            local hrp = char and char:FindFirstChild("HumanoidRootPart")
            saturnCenterPos = hrp and (hrp.Position + Vector3.new(0, 100, 0)) or Vector3.new(0, 100, 0)
        else
            isSaturnActive = false
            checkShapeState()
        end
    end
})

TornadoTab:CreateToggle({
    Name = "Ring Orbit Mode ⭕",
    CurrentValue = false,
    Flag = "OrbitToggle",
    Callback = function(Value)
        if Value then
            isOrbitActive = true
            isActive = false
            isCircleActive = false
            isSaturnActive = false
        else
            isOrbitActive = false
            checkShapeState()
        end
    end
})

TornadoTab:CreateButton({
    Name = "Compress and Blast 💥",
    Callback = function()
        task.spawn(triggerCompressAndBlast)
    end
})

DefenseTab:CreateToggle({
    Name = "Enable Anti-Grab V1 🛡️",
    CurrentValue = false,
    Flag = "AntiGrabToggle",
    Callback = function(Value)
        isAntiGrabActive = Value
    end
})

DefenseTab:CreateToggle({
    Name = "Enable Anti-Explosion 💥",
    CurrentValue = false,
    Flag = "AntiExplosionToggle",
    Callback = function(Value)
        isAntiExplosionActive = Value
    end
})

DefenseTab:CreateButton({
    Name = "Manual Escape / Break Free 🏃",
    Callback = function()
        pcall(function()
            if struggleEvent then struggleEvent:FireServer(LocalPlayer) end
            local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if ragdollRemoteEvent and hrp then ragdollRemoteEvent:FireServer(hrp, 0) end
        end)
    end
})

PlayerTab:CreateToggle({
    Name = "Enable Player Speed 🏃‍♂️",
    CurrentValue = false,
    Flag = "EnableSpeedToggle",
    Callback = function(Value)
        enableCustomSpeed = Value
    end
})

PlayerTab:CreateSlider({
    Name = "Custom Movement Speed",
    Range = {16, 300},
    Increment = 1,
    Suffix = "Studs/s",
    CurrentValue = 16,
    Flag = "SpeedSlider",
    Callback = function(Value)
        customSpeed = Value
    end
})

PlayerTab:CreateToggle({
    Name = "Enable Jump Power 🦘",
    CurrentValue = false,
    Flag = "EnableJumpToggle",
    Callback = function(Value)
        enableCustomJump = Value
    end
})

PlayerTab:CreateSlider({
    Name = "Custom Jump Power",
    Range = {50, 500},
    Increment = 5,
    Suffix = "Velocity",
    CurrentValue = 50,
    Flag = "JumpSlider",
    Callback = function(Value)
        customJumpPower = Value
    end
})

PlayerTab:CreateToggle({
    Name = "Infinite Jump 🦘",
    CurrentValue = false,
    Flag = "InfJumpToggle",
    Callback = function(Value)
        enableInfiniteJump = Value
    end
})

RunService.Heartbeat:Connect(function(deltaTime)
    local anyModeActive = isActive or isCircleActive or isSaturnActive or isOrbitActive
    if not anyModeActive or isCompressing then return end

    local timeSeconds = Workspace.DistributedGameTime

    if selectedTarget == "Random Map" and not isSaturnActive then
        wanderTimer = wanderTimer + deltaTime
        if wanderTimer > 1.2 then
            wanderTimer = 0
            randomWanderPos = Vector3.new(math.random(-400, 400), math.random(15, 60), math.random(-400, 400))
        end
    end

    local targetPos = getTargetPosition()
    local totalParts = 0
    for _ in pairs(activeProps) do totalParts = totalParts + 1 end
    if totalParts == 0 then return end

    local index = 0
    for part, data in pairs(activeProps) do
        if not part or not part:IsDescendantOf(Workspace) or part.Anchored or not isValidProp(part) then
            removePropPhysics(part)
        else
            index = index + 1

            if isActive then
                local angle = (timeSeconds * 3.5) + data.AngleOffset
                local baseHeight, sectionLength, startRadius, endRadius = 10, 50, 15, 35

                if data.Section == 2 then
                    baseHeight, sectionLength, startRadius, endRadius = 60, 75, 35, 75
                elseif data.Section == 3 then
                    baseHeight, sectionLength, startRadius, endRadius = 135, 100, 75, 130
                end

                local slotProgress = (data.SubSlot + 0.5) / 10
                local height = baseHeight + (slotProgress * sectionLength)
                local radius = startRadius + (slotProgress * (endRadius - startRadius))

                local targetPosCalc = targetPos + Vector3.new(math.cos(angle) * radius, height, math.sin(angle) * radius)

                data.AP.Position = targetPosCalc
                data.AO.CFrame = CFrame.new(part.Position, targetPosCalc)

            elseif isCircleActive then
                local sphereCenter = targetPos + Vector3.new(0, 65, 0)
                local sphereRadius = 55

                local phi = math.acos(1 - 2 * ((index - 0.5) / totalParts))
                local theta = math.sqrt(totalParts * math.pi) * phi + (timeSeconds * 1.5)

                local targetPosCalc = sphereCenter + Vector3.new(
                    sphereRadius * math.sin(phi) * math.cos(theta),
                    sphereRadius * math.cos(phi),
                    sphereRadius * math.sin(phi) * math.sin(theta)
                )

                data.AP.Position = targetPosCalc
                data.AO.CFrame = CFrame.new(part.Position, targetPosCalc)

            elseif isSaturnActive then
                local targetPosCalc
                if index <= 30 then
                    local maxSphereCount = math.min(totalParts, 30)
                    local sphereRadius = 22
                    local y = 1 - (index - 0.5) / maxSphereCount * 2
                    local radiusAtY = math.sqrt(1 - y * y) * sphereRadius
                    local theta = index * math.pi * (3 - math.sqrt(5)) + (timeSeconds * 1.2)

                    local localPos = Vector3.new(
                        radiusAtY * math.cos(theta),
                        y * sphereRadius,
                        radiusAtY * math.sin(theta)
                    )
                    targetPosCalc = saturnCenterPos + localPos
                else
                    local ringIndex = index - 30
                    local totalRingParts = totalParts - 30
                    local innerRadius = 35
                    local outerRadius = 75
                    local ringProgress = (ringIndex - 0.5) / totalRingParts
                    local currentRadius = innerRadius + (ringProgress * (outerRadius - innerRadius))
                    local angle = (ringIndex * 0.6) + (timeSeconds * 1.8)

                    local flatRingPos = Vector3.new(math.cos(angle) * currentRadius, 0, math.sin(angle) * currentRadius)
                    local ringTiltCFrame = CFrame.Angles(math.rad(25), 0, math.rad(15))
                    local tiltedOffset = ringTiltCFrame:VectorToWorldSpace(flatRingPos)

                    targetPosCalc = saturnCenterPos + tiltedOffset
                end

                data.AP.Position = targetPosCalc
                data.AO.CFrame = CFrame.new(part.Position, targetPosCalc)

            elseif isOrbitActive then
                local itemsPerRing = 12
                local ringRadius = 20
                local verticalGap = 8

                local ringIndex = math.floor((index - 1) / itemsPerRing)
                local indexInRing = (index - 1) % itemsPerRing

                local ringDirection = (ringIndex % 2 == 0) and 1 or -1
                local rotationSpeed = 2.2 * ringDirection

                local angle = (indexInRing / itemsPerRing) * (math.pi * 2) + (timeSeconds * rotationSpeed)
                local ringHeight = ringIndex * verticalGap

                local orbitOffset = Vector3.new(
                    math.cos(angle) * ringRadius,
                    ringHeight,
                    math.sin(angle) * ringRadius
                )

                local targetPosCalc = targetPos + orbitOffset

                data.AP.Position = targetPosCalc
                data.AO.CFrame = CFrame.new(part.Position, targetPosCalc)
            end
        end
    end
end)
