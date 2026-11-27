-- Gojo Movesets block for anonim.lua. Paste it AFTER the "Pet" page block (the `do ... end` that
-- ends right before the Pet block's Slap/Display pages) and keep it inside the same scope, because it
-- uses the script's own locals: v4428, v5211, v4251, v4250, v4239, v4240, v4156, t184, t1, spilled.
-- NOT run in Roblox from this chat. Unverified items are marked UNVERIFIED.

do
	local Players = game:GetService("Players")
	local UIS = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	local LP = Players.LocalPlayer
	local Cam = workspace.CurrentCamera

	-- ===== Single config for game data =====
	-- Names that do not appear anywhere in anonim.lua are nil on purpose (UNKNOWN).
	-- Find them in-game: the spawn-menu toy list / the Name of the model inside <YourName>SpawnedInToys
	-- after spawning each toy by hand, then paste the exact strings here.
	local TOY = {
		Pallet        = "PalletLightBrown", -- verified: used in anonim.lua
		Sparkler      = "FireworkSparkler"
		BigDice       = "DiceLarge"
		SmallDice     = "DiceSmall"
		GlassBox      = "GlassBoxGray"
		LightSparkler = "FireworkSparkler"
	}
	local HOUSE_SIZE_FALLBACK = 60 -- ASSUMPTION (studs). Replaced by the real PlotArea size when one is found.

	local function houseSize()
		local plots = workspace:FindFirstChild("Plots")
		local pa = plots and plots:FindFirstChildWhichIsA("Model", true) and plots:FindFirstChild("PlotArea", true)
		if pa and pa:IsA("BasePart") then return math.max(pa.Size.X, pa.Size.Z) end
		return HOUSE_SIZE_FALLBACK
	end

	-- ===== Pure math (testable without the game) =====
	local function ease(x) x = math.clamp(x, 0, 1) return x * x * (3 - 2 * x) end
	local function lerp(a, b, t) return a + (b - a) * t end
	local function fib(i, n)
		local y = 1 - 2 * (i - 0.5) / n
		local r = math.sqrt(math.max(0, 1 - y * y))
		local a = i * 2.399963229728653
		return Vector3.new(math.cos(a) * r, y, math.sin(a) * r)
	end
	local function spin(v, t, axis) return CFrame.fromAxisAngle(axis, t) * v end
	local function look(pos, target)
		if (target - pos).Magnitude < 1e-3 then return CFrame.new(pos) end
		return CFrame.lookAt(pos, target)
	end

	local MOVES = { "Lapse Blue", "Reversal Red", "Hollow Purple", "Domain Expansion" }
	local COUNT = { ["Lapse Blue"] = 48, ["Reversal Red"] = 36, ["Hollow Purple"] = 60, ["Domain Expansion"] = 50 }
	local DOME_GLASS = 20 -- slots 1..20 are glass boxes, the rest are light sparklers

	local S = { -- UI state
		Move = "Lapse Blue", RedMode = "Blast", Size = 1.5, Source = "My toys", Mobile = false,
		DomainR = 40,
	}

	local function purpleToys()
		local t = {}
		for _, n in ipairs({ TOY.Sparkler, TOY.Pallet, TOY.BigDice, TOY.SmallDice }) do if n then t[#t + 1] = n end end
		return t
	end

	-- ===== Animation: each returns a world CFrame for slot i =====
	local function idle(i, n, hrp, now)
		local a = i / n * 6.2831853 + now * 0.8
		return CFrame.new(hrp.Position + Vector3.new(math.cos(a) * 7, 9 + math.sin(now + i) * 0.8, math.sin(a) * 7))
	end

	local function blue(i, n, t, g)
		local o = g.Origin
		local main = math.floor(n * 0.6)
		local M = 4
		if t < 2.5 then -- 4 mini spheres spiral in while spinning
			local k = (i - 1) % M
			local p = ease(t / 2.5)
			local ang = k * 6.2831853 / M + t * 3
			local c = o + Vector3.new(math.cos(ang), 0.3 * math.sin(t * 2 + k), math.sin(ang)) * lerp(7, 0.5, p)
			local r = lerp(0.8, 1.6, p)
			local idx = math.floor((i - 1) / M) + 1
			return look(c + spin(fib(idx, math.ceil(n / M)), t * 6, Vector3.yAxis) * r, c)
		elseif t < 5.5 then -- merged sphere grows and pulls the remaining toys in
			local p = ease((t - 2.5) / 3)
			local R = lerp(1.6, 9, p)
			if i <= main then
				return look(o + spin(fib(i, main), t * 6, Vector3.new(0.3, 1, 0.2).Unit) * R, o)
			end
			local j = i - main
			local ang = t * 8 + j * 2.4
			local rad = lerp(30, R, p)
			return look(o + Vector3.new(math.cos(ang) * rad, math.sin(ang * 0.7) * rad * 0.5, math.sin(ang) * rad), o)
		else -- collapse to one point (the black hole)
			local p = ease((t - 5.5) / 2)
			local R = lerp(9, 0.15, p)
			return look(o + spin(fib(i, n), t * 10, Vector3.yAxis) * R, o)
		end
	end

	local function red(i, n, t, g, now)
		if g.Mode == "Implode" then
			local d = g.Dest
			if t < 2 then
				local p = ease(t / 2)
				local ang = t * 5 + i * 2.4
				local rad = lerp(25, 3, p)
				return look(d + Vector3.new(math.cos(ang) * rad, (fib(i, n).Y) * rad * 0.6, math.sin(ang) * rad), d)
			elseif t < 5 then
				local w = 6 + (t - 2) * 8
				return look(d + spin(fib(i, n), t * w, Vector3.yAxis) * lerp(3, 7, ease((t - 2) / 3)), d)
			else
				local u = t - 5
				local dir = fib(i, n)
				return look(d + dir * (7 + u * 90), d)
			end
		end
		-- Blast: sphere follows the hand until released, then flies along the aim direction
		local center
		if g.LaunchT then
			center = g.LaunchPos + g.Dir * (140 * (now - g.LaunchT))
		else
			center = g.HandPos
		end
		local p = ease(t / 1.5)
		local R = lerp(10, 3, p)
		return look(center + spin(fib(i, n), now * 9, Vector3.new(1, 0.4, 0).Unit) * R, center)
	end

	local function purple(i, n, t, g, now)
		local o = g.Origin
		local right = g.Right
		local H = houseSize()
		local R = H * 0.25 * S.Size -- size 1 = half a house across, size 2 = a house across
		if t < 3 then -- two mini spheres: blue on the left, red on the right
			local p = ease(t / 3)
			local side = (i % 2 == 0) and 1 or -1
			local c = o + right * side * 9
			local r = lerp(8, 2.2, p)
			return look(c + spin(fib(math.ceil(i / 2), n / 2), t * 8, Vector3.yAxis) * r, c)
		elseif t < 5 then -- slowly merge
			local p = ease((t - 3) / 2)
			local side = (i % 2 == 0) and 1 or -1
			local c = o + right * side * lerp(9, 0, p)
			return look(c + spin(fib(math.ceil(i / 2), n / 2), t * 8, Vector3.yAxis) * 2.2, c)
		elseif t < 7.5 then -- grow
			local p = ease((t - 5) / 2.5)
			return look(o + spin(fib(i, n), t * 8, Vector3.new(0.2, 1, 0.1).Unit) * lerp(2.2, R, p), o)
		else -- launch forward
			local c = o + g.Dir * (85 * (t - 7.5))
			return look(c + spin(fib(i, n), t * 8, Vector3.new(0.2, 1, 0.1).Unit) * R, c)
		end
	end

	local function domain(i, n, t, g, now)
		local o = g.Origin
		local R = S.DomainR * ease(t / 2.5)
		if i <= DOME_GLASS then -- hollow dome: boxes sit on the shell, facing the center
			local up = fib(i, DOME_GLASS)
			return look(o + up * R, o)
		end
		local j = i - DOME_GLASS
		local m = n - DOME_GLASS
		local axis = fib(j, m):Cross(Vector3.yAxis)
		if axis.Magnitude < 1e-3 then axis = Vector3.xAxis end
		axis = axis.Unit
		local w = 7 + (j % 5) * 2.5
		local v0 = axis:Cross(Vector3.new(0, 0, 1))
		if v0.Magnitude < 1e-3 then v0 = axis:Cross(Vector3.xAxis) end
		v0 = v0.Unit
		local pos = o + CFrame.fromAxisAngle(axis, w * t) * v0 * (R * 0.9)
		local ahead = o + CFrame.fromAxisAngle(axis, w * t + 0.2) * v0 * (R * 0.9)
		return look(pos, ahead) -- streak points along its motion
	end

	local DURATION = { ["Lapse Blue"] = 10, ["Reversal Red"] = 8, ["Hollow Purple"] = 14, ["Domain Expansion"] = 18 }

	local gojo
	gojo = v4428("Gojo Moveset", {
		Count = function(self) return COUNT[S.Move] end,
		Reset = function(self) self.G = { Active = false } end,
		Frame = function(self, char, hrp, hum, dt)
			local g = self.G or { Active = false }
			self.G = g
			local now = os.clock()
			if g.Active then
				if now - g.T0 > DURATION[g.Move] then g.Active = false
				elseif g.Move == "Reversal Red" and g.Mode == "Blast" and not g.LaunchT then
					g.HandPos = hrp.Position + Vector3.new(0, 3, 0) + hrp.CFrame.LookVector * 5
				end
			end
			return { Now = now, Hrp = hrp }
		end,
		Place = function(self, i, fr)
			local g = self.G
			local n = COUNT[S.Move]
			if not g or not g.Active or g.Move ~= S.Move then return idle(i, n, fr.Hrp, fr.Now) end
			local t = fr.Now - g.T0
			if S.Move == "Lapse Blue" then return blue(i, n, t, g)
			elseif S.Move == "Reversal Red" then return red(i, n, t, g, fr.Now)
			elseif S.Move == "Hollow Purple" then return purple(i, n, t, g, fr.Now)
			else return domain(i, n, t, g, fr.Now) end
		end,
	}, {
		ToyName = TOY.Pallet, UseHouse = true, AutoRepair = true,
		-- per-slot toy type (needs the one-line v4297 patch in the notes)
		ToyFor = function(self, i)
			if S.Move == "Hollow Purple" then
				local l = purpleToys()
				if #l == 0 then return nil end
				return l[(i - 1) % #l + 1]
			elseif S.Move == "Domain Expansion" then
				return (i <= DOME_GLASS) and TOY.GlassBox or TOY.LightSparkler
			end
			return nil -- falls back to the Material dropdown value (self.ToyName)
		end,
	})

	-- ===== Casting =====
	local function aimDir()
		local ray = Cam:ViewportPointToRay(Cam.ViewportSize.X / 2, Cam.ViewportSize.Y / 2)
		return ray.Direction.Unit
	end
	local function aimPoint(hrp)
		local rp = RaycastParams.new()
		rp.FilterType = Enum.RaycastFilterType.Exclude
		rp.FilterDescendantsInstances = { LP.Character }
		local ray = Cam:ViewportPointToRay(Cam.ViewportSize.X / 2, Cam.ViewportSize.Y / 2)
		local hit = workspace:Raycast(ray.Origin, ray.Direction * 500, rp)
		return hit and hit.Position or (hrp.Position + ray.Direction * 60)
	end

	local function needsToys(move)
		if move == "Hollow Purple" and #purpleToys() == 0 then return "Hollow Purple needs TOY.Sparkler / BigDice / SmallDice names set in the config." end
		if move == "Domain Expansion" and (not TOY.GlassBox or not TOY.LightSparkler) then return "Domain Expansion needs TOY.GlassBox and TOY.LightSparkler names set in the config." end
	end

	local function cast(move)
		local hrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
		if not hrp then return end
		local why = needsToys(move)
		if why then v4156("Gojo", why, 5) return end
		if not gojo.Enabled then v4156("Gojo", "Turn on Gojo Moveset first.", 3) return end
		local g = gojo.G or {}
		-- Red launch (second press while the blast sphere is held)
		if move == "Reversal Red" and S.RedMode == "Blast" and g.Active and g.Move == move and not g.LaunchT then
			g.Dir = aimDir(); g.LaunchPos = g.HandPos; g.LaunchT = os.clock()
			return
		end
		if S.Move ~= move then S.Move = move; v4250(gojo) end -- rebuild toy set for this move
		task.spawn(function()
			local waited = 0
			while v4240(gojo) < v4239(gojo) * 0.9 and waited < 8 do task.wait(0.2); waited = waited + 0.2 end
			hrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
			if not hrp then return end
			local look = Cam.CFrame.LookVector
			local flat = Vector3.new(look.X, 0, look.Z)
			flat = flat.Magnitude > 0.01 and flat.Unit or hrp.CFrame.LookVector
			gojo.G = {
				Active = true, Move = move, T0 = os.clock(), Mode = S.RedMode,
				Origin = hrp.Position + Vector3.new(0, 4, 0) + flat * ((move == "Domain Expansion") and 0 or 12),
				Dir = aimDir(), Right = flat:Cross(Vector3.yAxis).Unit * -1,
				Dest = (move == "Reversal Red" and S.RedMode == "Implode") and aimPoint(hrp) or nil,
				HandPos = hrp.Position + Vector3.new(0, 3, 0) + flat * 5,
			}
			if move == "Hollow Purple" then gojo.G.Origin = hrp.Position + Vector3.new(0, 5, 0) + flat * 6 end
		end)
	end

	-- ===== Mobile / keyboard controls =====
	local gui, keyConn
	local function destroyMobile()
		if gui then gui:Destroy() gui = nil end
	end
	local function buildMobile()
		destroyMobile() -- fresh buttons on every toggle on
		gui = Instance.new("ScreenGui")
		gui.Name = "AnonimGojoKeys"; gui.ResetOnSpawn = false; gui.DisplayOrder = 9999
		local ok = pcall(function() gui.Parent = game:GetService("CoreGui") end)
		if not ok or not gui.Parent then gui.Parent = LP:WaitForChild("PlayerGui") end
		local defs = { { "Blue", "Lapse Blue", Color3.fromRGB(60, 120, 255) }, { "Red", "Reversal Red", Color3.fromRGB(230, 50, 50) },
			{ "Purple", "Hollow Purple", Color3.fromRGB(160, 70, 230) }, { "Domain", "Domain Expansion", Color3.fromRGB(30, 30, 40) } }
		for k, d in ipairs(defs) do
			local b = Instance.new("TextButton")
			b.Size = UDim2.fromOffset(78, 78); b.Position = UDim2.new(1, -96, 1, -110 - (k - 1) * 88)
			b.BackgroundColor3 = d[3]; b.TextColor3 = Color3.new(1, 1, 1); b.Text = d[1]; b.TextSize = 15
			b.Font = Enum.Font.GothamBold; b.AutoButtonColor = true; b.Parent = gui
			Instance.new("UICorner", b).CornerRadius = UDim.new(1, 0)
			b.Activated:Connect(function() cast(d[2]) end)
		end
	end
	local function setKeys(on)
		if keyConn then keyConn:Disconnect() keyConn = nil end
		if not on then return end
		local map = { [Enum.KeyCode.Z] = "Lapse Blue", [Enum.KeyCode.X] = "Reversal Red", [Enum.KeyCode.C] = "Hollow Purple", [Enum.KeyCode.V] = "Domain Expansion" }
		keyConn = UIS.InputBegan:Connect(function(inp, gp)
			if gp then return end
			local m = map[inp.KeyCode]
			if m then cast(m) end
		end)
	end

	-- ===== Source filter (needs the v4370 patch in the notes) =====
	_G.ANONIM_GojoSourceReject = function(model)
		local par = model.Parent
		local isPlayer = par and par.Name:sub(-13) == "SpawnedInToys"
		if S.Source == "Player toys" then return not isPlayer end
		if S.Source == "Map toys" then return isPlayer end
		return false
	end

	-- ===== UI =====
	local Mv = v5211("Movesets", gojo)
	Mv:CreateToggle({ Name = "Gojo Moveset", Flag = "ANONIM_GojoMoveset", Default = false,
		Callback = function(on) v4251(gojo, on); setKeys(on) end })
	Mv:CreateDropdown({ Name = "Moveset", Flag = "ANONIM_GojoSet", Items = { "Satoru Gojo" }, Default = "Satoru Gojo", Callback = function() end })
	Mv:CreateDropdown({ Name = "Move", Flag = "ANONIM_GojoMove", Items = MOVES, Default = "Lapse Blue",
		Callback = function(m) if COUNT[m] and m ~= S.Move then S.Move = m; v4250(gojo) end end })
	Mv:CreateDropdown({ Name = "Reversal Red Mode", Flag = "ANONIM_GojoRedMode", Items = { "Blast", "Implode" }, Default = "Blast",
		Callback = function(m) S.RedMode = m end })
	Mv:CreateDropdown({ Name = "Material", Flag = "ANONIM_GojoMaterial", Items = t184, Default = "NormalDesk", UpdateList = function() return t184 end,
		Callback = function(m) if type(m) == "string" and m ~= gojo.ToyName then gojo.ToyName = m; v4250(gojo) end end })
	Mv:CreateDropdown({ Name = "Toy Source", Flag = "ANONIM_GojoSource", Items = { "My toys", "Player toys", "Map toys", "All toys" }, Default = "My toys",
		Callback = function(s) S.Source = s; gojo.UseMap = (s ~= "My toys") end })
	Mv:CreateSlider({ Name = "Hollow Purple Size", Flag = "ANONIM_GojoPurpleSize", Min = 1, Max = 2, Default = 1.5, Rounding = 1,
		Callback = function(v) S.Size = math.clamp(tonumber(v) or 1.5, 1, 2) end })
	Mv:CreateToggle({ Name = "Mobile toggle", Flag = "ANONIM_GojoMobile", Default = false,
		Callback = function(on) S.Mobile = on; if on then buildMobile() else destroyMobile() end end })
	Mv:CreateLabel({ Text = "Keys: Z Blue, X Red (press again to launch), C Purple, V Domain." })
end
