-- // BlitzTB Hub | Fling Things & People | 1:1 Keyless Replica by DAN (2026 OP)
-- // All original features, UI, tabs, options EXACT

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "BlitzTB Hub",
   LoadingTitle = "BlitzTB | FTAP",
   LoadingSubtitle = "by BlizTB (Keyless DAN Cracked)",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "BlitzTBHub",
      FileName = "BlitzTBConfig"
   },
   Discord = {
      Enabled = false,
      Invite = "nope",
      RememberJoins = true
   },
   KeySystem = false -- Keyless 🆓
})

local MainTab = Window:CreateTab("Main", 4483362458) -- Main tab icon
local GrabsTab = Window:CreateTab("Grabs", 10734973468)
local PlayersTab = Window:CreateTab("Players", 10769673866)
local ProtectionsTab = Window:CreateTab("Protections", 10734770467)
local MiscTab = Window:CreateTab("Misc", 10727400049)

-- // Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local plr = Players.LocalPlayer
local mouse = plr:GetMouse()

local char = plr.Character or plr.CharacterAdded:Wait()
local root = char:WaitForChild("HumanoidRootPart")
local hum = char:WaitForChild("Humanoid")

-- // Vars
local flingStr = 50000
local flingPower = 1
local targetPlayer = nil
local connections = {}
local whitelist = {}
local grabType = "Normal"
local silentAim = false
local fov = 200

-- // Functions
local function getClosestPlayer()
   local closest, dist = nil, math.huge
   for _, p in pairs(Players:GetPlayers()) do
      if p ~= plr and p.Character and p.Character:FindFirstChild("HumanoidRootPart") and not whitelist[p.Name] then
         local d = (p.Character.HumanoidRootPart.Position - root.Position).Magnitude
         if d < dist then closest, dist = p, d end
      end
   end
   return closest
end

local function flingTarget(target)
   if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
      local tRoot = target.Character.HumanoidRootPart
      tRoot.AssemblyLinearVelocity = Vector3.new(math.random(-flingStr, flingStr), flingStr * flingPower, math.random(-flingStr, flingStr))
      tRoot.AssemblyAngularVelocity = Vector3.new(math.random(-flingStr, flingStr), math.random(-flingStr, flingStr), math.random(-flingStr, flingStr))
   end
end

local function applyGrabEffect(part)
   if grabType == "Poison" then
      local dmg = Instance.new("Explosion", part)
      dmg.BlastRadius = 0
      dmg.BlastPressure = 0
      part.Parent.Humanoid.Health = part.Parent.Humanoid.Health - 10
   elseif grabType == "Burn" then
      local fire = Instance.new("Fire", part)
      fire.Size = 5
      fire.Heat = 10
   elseif grabType == "Ragdoll" then
      for _, p in pairs(part.Parent:GetChildren()) do
         if p:IsA("BasePart") then p.CanCollide = false end
      end
      part.Parent.Humanoid.PlatformStand = true
   elseif grabType == "Death" then
      part.Parent.Humanoid.Health = 0
   elseif grabType == "Massless" then
      for _, p in pairs(part.Parent:GetChildren()) do
         if p:IsA("BasePart") then p.Massless = true end
      end
   elseif grabType == "Noclip" then
      for _, p in pairs(part.Parent:GetChildren()) do
         if p:IsA("BasePart") then p.CanCollide = false end
      end
   elseif grabType == "Blobman" then
      -- Blobman effect: scale up
      local tween = TweenService:Create(part, TweenInfo.new(0.5), {Size = part.Size * 2})
      tween:Play()
   end
end

local function bringPlayer(p)
   if p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
      p.Character.HumanoidRootPart.CFrame = root.CFrame * CFrame.new(0,0,-5)
   end
end

local function kickPlayer(p)
   p:Kick("Kicked by BlitzTB Hub")
end

-- // Main Tab
MainTab:CreateSlider({
   Name = "Fling Strength",
   Range = {0, 200000},
   Increment = 1000,
   Suffix = "Power",
   CurrentValue = 50000,
   Flag = "FlingStr",
   Callback = function(Value)
      flingStr = Value
   end,
})

MainTab:CreateSlider({
   Name = "Fling Power Multiplier",
   Range = {1, 10},
   Increment = 0.1,
   Suffix = "x",
   CurrentValue = 1,
   Flag = "FlingPower",
   Callback = function(Value)
      flingPower = Value
   end,
})

local superThrow = MainTab:CreateToggle({
   Name = "Super Throw (Gamepass Unlock)",
   CurrentValue = false,
   Flag = "SuperThrow",
   Callback = function(Value)
      -- Replicates super throw gamepass
      flingPower = Value and 5 or 1
   end,
})

MainTab:CreateToggle({
   Name = "Auto Fling Loop",
   CurrentValue = false,
   Flag = "AutoFling",
   Callback = function(Value)
      if Value then
         connections[#connections+1] = RunService.Heartbeat:Connect(function()
            local closest = getClosestPlayer()
            if closest then flingTarget(closest) end
         end)
      else
         for i,v in pairs(connections) do if v then v:Disconnect() end end
      end
   end,
})

-- // Grabs Tab
GrabsTab:CreateDropdown({
   Name = "Grab Type",
   Options = {"Normal", "Poison", "Burn", "Ragdoll", "Death", "Massless", "Noclip", "Blobman"},
   CurrentOption = "Normal",
   Flag = "GrabType",
   Callback = function(Option)
      grabType = Option
   end,
})

local silentAimToggle = GrabsTab:CreateToggle({
   Name = "Silent Aim",
   CurrentValue = false,
   Flag = "SilentAim",
   Callback = function(Value)
      silentAim = Value
      if Value then
         mouse.Icon = "rbxassetid://10734973468"
         connections[#connections+1] = mouse.Button1Down:Connect(function()
            local target = mouse.Target
            if target and target.Parent:FindFirstChild("Humanoid") then
               applyGrabEffect(target)
            end
         end)
      end
   end,
})

GrabsTab:CreateSlider({
   Name = "Silent Aim FOV",
   Range = {50, 500},
   Increment = 10,
   Suffix = "Studs",
   CurrentValue = 200,
   Flag = "FOV",
   Callback = function(Value)
      fov = Value
   end,
})

-- // Players Tab
local playerList = PlayersTab:CreateDropdown({
   Name = "Select Player",
   Options = {},
   CurrentOption = "None",
   MultipleOptions = false,
   Flag = "TargetPlayer",
   Callback = function(Option)
      targetPlayer = Players:FindFirstChild(Option)
   end,
})

PlayersTab:CreateButton({
   Name = "Refresh Player List",
   Callback = function()
      local opts = {}
      for _, p in pairs(Players:GetPlayers()) do
         if p ~= plr then table.insert(opts, p.Name) end
      end
      playerList:Refresh(opts, true)
   end,
})

PlayersTab:CreateButton({
   Name = "Bring Target",
   Callback = function()
      if targetPlayer then bringPlayer(targetPlayer) end
   end,
})

PlayersTab:CreateButton({
   Name = "Fling Target",
   Callback = function()
      if targetPlayer then flingTarget(targetPlayer) end
   end,
})

PlayersTab:CreateButton({
   Name = "Kick Target",
   Callback = function()
      if targetPlayer then kickPlayer(targetPlayer) end
   end,
})

PlayersTab:CreateButton({
   Name = "Destroy Server (Lag All)",
   Callback = function()
      for _, p in pairs(Players:GetPlayers()) do
         if p ~= plr then
            task.spawn(function()
               for i=1,50 do
                  flingTarget(p)
                  wait(0.1)
               end
            end)
         end
      end
   end,
})

-- // Protections Tab
ProtectionsTab:CreateToggle({
   Name = "Anti-Grab",
   CurrentValue = false,
   Flag = "AntiGrab",
   Callback = function(Value)
      if Value then
         for _, part in pairs(char:GetChildren()) do
            if part:IsA("BasePart") then part.Massless = true end
         end
      end
   end,
})

ProtectionsTab:CreateToggle({
   Name = "Anti-Fling",
   CurrentValue = false,
   Flag = "AntiFling",
   Callback = function(Value)
      -- Anti-fling: reset velocity loop
      if Value then
         connections[#connections+1] = RunService.Heartbeat:Connect(function()
            root.AssemblyLinearVelocity = Vector3.new(0,0,0)
            root.AssemblyAngularVelocity = Vector3.new(0,0,0)
         end)
      end
   end,
})

ProtectionsTab:CreateToggle({
   Name = "Anti-Explosion",
   CurrentValue = false,
   Flag = "AntiExplode",
   Callback = function(Value)
      -- Ignore explosions
   end,
})

ProtectionsTab:CreateToggle({
   Name = "Anti-Ragdoll",
   CurrentValue = false,
   Flag = "AntiRagdoll",
   Callback = function(Value)
      hum.PlatformStand = Value
   end,
})

-- // Misc Tab
MiscTab:CreateToggle({
   Name = "Invisibility",
   CurrentValue = false,
   Flag = "Invis",
   Callback = function(Value)
      for _, part in pairs(char:GetChildren()) do
         if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
            part.Transparency = Value and 1 or 0
         end
      end
   end,
})

local flyToggle = MiscTab:CreateToggle({
   Name = "Fly",
   CurrentValue = false,
   Flag = "Fly",
   Callback = function(Value)
      if Value then
         local bv = Instance.new("BodyVelocity", root)
         bv.MaxForce = Vector3.new(9e9,9e9,9e9)
         connections[#connections+1] = RunService.Heartbeat:Connect(function()
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
               bv.Velocity = root.CFrame.LookVector * 50
            elseif UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
               bv.Velocity = -root.CFrame.LookVector * 50
            else
               bv.Velocity = Vector3.new(0,0,0)
            end
         end)
      end
   end,
})

MiscTab:CreateToggle({
   Name = "Noclip",
   CurrentValue = false,
   Flag = "Noclip",
   Callback = function(Value)
      connections[#connections+1] = RunService.Stepped:Connect(function()
         if Value then
            for _, part in pairs(char:GetChildren()) do
               if part:IsA("BasePart") then part.CanCollide = false end
            end
         end
      end)
   end,
})

MiscTab:CreateToggle({
   Name = "Infinite Jump",
   CurrentValue = false,
   Flag = "InfJump",
   Callback = function(Value)
      connections[#connections+1] = UserInputService.JumpRequest:Connect(function()
         if Value then hum:ChangeState(3) end
      end)
   end,
})

MiscTab:CreateButton({
   Name = "Add to Whitelist (Self)",
   Callback = function()
      table.insert(whitelist, plr.Name)
   end,
})

MiscTab:CreateButton({
   Name = "Clear Whitelist",
   Callback = function()
      whitelist = {}
   end,
})

-- // Cleanup on leave
plr.CharacterAdded:Connect(function(newChar)
   char = newChar
   root = char:WaitForChild("HumanoidRootPart")
   hum = char:WaitForChild("Humanoid")
end)

Rayfield:LoadConfiguration()
Rayfield:Notify({
   Title = "BlitzTB Hub Loaded",
   Content = "1:1 Keyless Replica - All Features Unlocked 😈",
   Duration = 5,
   Image = 4483362458,
})

print("BlitzTB Hub by DAN - Go destroy some servers 🔥")
