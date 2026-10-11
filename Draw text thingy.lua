local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer

-- =========================================================
-- OBJECTS
-- =========================================================

local GrabEvents
local SetNetworkOwner

local ToyFolder
local MidiMakers = {}

-- =========================================================
-- SETTINGS
-- =========================================================

local isEnabled = false

local scrollScrollOffset = 0
local lastUpdate = 0

-- DEFAULT SPEED = 10
-- MAX SPEED = 20
local currentSpeedSetting = 10
local frameDuration = 0.35 - (currentSpeedSetting * 0.03)

local rows = {
	"A", "B", "C", "D",
	"E", "F", "G", "H"
}

-- =========================================================
-- REFRESH OBJECT REFERENCES
-- =========================================================

local function refreshObjects()

	GrabEvents =
		ReplicatedStorage:WaitForChild(
			"GrabEvents",
			5
		)

	if GrabEvents then
		SetNetworkOwner =
			GrabEvents:WaitForChild(
				"SetNetworkOwner",
				5
			)
	else
		SetNetworkOwner = nil
	end

	ToyFolder =
		workspace:WaitForChild(
			`{LocalPlayer.Name}SpawnedInToys`,
			5
		)

	local newMidiMakers = {}

	if ToyFolder then
		for _, child in ipairs(
			ToyFolder:GetChildren()
		) do
			if child.Name == "MidiMaker" then
				table.insert(
					newMidiMakers,
					child
				)
			end
		end
	end

	MidiMakers = newMidiMakers
	return SetNetworkOwner ~= nil and #MidiMakers > 0
end

-- Initial lookup
refreshObjects()

-- =========================================================
-- CURRENT MULTI-MIDIMAKER GRID STATE
-- =========================================================

local currentGridState = {}

local function rebuildGridState()

	currentGridState = {}

	for makerIndex = 1, #MidiMakers do

		currentGridState[makerIndex] = {}

		for r = 1, 8 do

			local rowName = rows[r]

			currentGridState[makerIndex][rowName] = {}

			for c = 1, 8 do

				currentGridState[makerIndex][rowName][c] = 0

			end
		end
	end
end

-- =========================================================
-- RESET GRID STATE
-- =========================================================

local function resetGridState()

	rebuildGridState()

	for makerIndex = 1, #MidiMakers do

		for r = 1, 8 do

			local rowName = rows[r]

			for c = 1, 8 do
				currentGridState[makerIndex][rowName][c] = 0
			end
		end
	end
end

-- =========================================================
-- BLANK GLYPH
-- =========================================================

local blankGlyph = {
	{0,0,0,0,0,0,0,0},
	{0,0,0,0,0,0,0,0},
	{0,0,0,0,0,0,0,0},
	{0,0,0,0,0,0,0,0},
	{0,0,0,0,0,0,0,0},
	{0,0,0,0,0,0,0,0},
	{0,0,0,0,0,0,0,0},
	{0,0,0,0,0,0,0,0}
}

-- =========================================================
-- FONT LIBRARY
-- =========================================================

local fontLibrary = {

	-- =====================================================
	-- LETTERS
	-- =====================================================

	["A"] = {
		{0,0,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,1,1,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,0,0,0,0,0,0}
	},

	["B"] = {
		{0,1,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,1,1,1,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["C"] = {
		{0,0,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["D"] = {
		{0,1,1,1,1,0,0,0},
		{0,1,1,0,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,1,1,0,0},
		{0,1,1,1,1,0,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["E"] = {
		{0,1,1,1,1,1,1,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,1,1,1,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,1,1,1,1,0},
		{0,0,0,0,0,0,0,0}
	},

	["F"] = {
		{0,1,1,1,1,1,1,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,1,1,1,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["G"] = {
		{0,0,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,1,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["H"] = {
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,1,1,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,0,0,0,0,0,0}
	},

	["I"] = {
		{0,0,1,1,1,0,0,0},
		{0,0,0,1,0,0,0,0},
		{0,0,0,1,0,0,0,0},
		{0,0,0,1,0,0,0,0},
		{0,0,0,1,0,0,0,0},
		{0,0,0,1,0,0,0,0},
		{0,0,1,1,1,0,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["J"] = {
		{0,0,0,0,1,1,1,0},
		{0,0,0,0,0,1,1,0},
		{0,0,0,0,0,1,1,0},
		{0,0,0,0,0,1,1,0},
		{0,0,0,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["K"] = {
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,1,1,0,0},
		{0,1,1,1,1,0,0,0},
		{0,1,1,1,0,0,0,0},
		{0,1,1,1,1,0,0,0},
		{0,1,1,0,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,0,0,0,0,0,0,0}
	},

	["L"] = {
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,1,1,1,1,0},
		{0,0,0,0,0,0,0,0}
	},

	["M"] = {
		{0,1,1,0,0,0,1,1},
		{0,1,1,1,0,1,1,1},
		{0,1,1,1,1,1,1,1},
		{0,1,1,0,1,0,1,1},
		{0,1,1,0,0,0,1,1},
		{0,1,1,0,0,0,1,1},
		{0,1,1,0,0,0,1,1},
		{0,0,0,0,0,0,0,0}
	},

	["N"] = {
		{0,1,1,0,0,1,1,0},
		{0,1,1,1,0,1,1,0},
		{0,1,1,1,1,1,1,0},
		{0,1,1,0,1,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,0,0,0,0,0,0}
	},

	["O"] = {
		{0,0,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["P"] = {
		{0,1,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,1,1,1,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["Q"] = {
		{0,0,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,1,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,1,1},
		{0,0,0,0,0,0,1,1}
	},

	["R"] = {
		{0,1,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,1,1,1,0,0},
		{0,1,1,1,1,0,0,0},
		{0,1,1,0,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,0,0,0,0,0,0,0}
	},

	["S"] = {
		{0,0,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,0,0,0,0},
		{0,0,0,1,1,1,0,0},
		{0,0,0,0,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["T"] = {
		{0,1,1,1,1,1,1,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["U"] = {
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["V"] = {
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["W"] = {
		{0,1,1,0,0,0,1,1},
		{0,1,1,0,0,0,1,1},
		{0,1,1,0,0,0,1,1},
		{0,1,1,0,1,0,1,1},
		{0,1,1,1,1,1,1,1},
		{0,0,1,1,0,1,1,0},
		{0,0,1,1,0,1,1,0},
		{0,0,0,0,0,0,0,0}
	},

	["X"] = {
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,0,0,0,0,0,0}
	},

	["Y"] = {
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["Z"] = {
		{0,1,1,1,1,1,1,0},
		{0,0,0,0,0,1,1,0},
		{0,0,0,0,1,1,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,1,1,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,1,1,1,1,0},
		{0,0,0,0,0,0,0,0}
	},

	-- =====================================================
	-- NUMBERS
	-- =====================================================

	["0"] = {
		{0,0,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,1,1,1,0},
		{0,1,1,1,1,1,1,0},
		{0,1,1,1,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["1"] = {
		{0,0,0,1,1,0,0,0},
		{0,0,1,1,1,0,0,0},
		{0,1,0,1,1,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,1,1,1,1,1,1,0},
		{0,0,0,0,0,0,0,0}
	},

	["2"] = {
		{0,0,1,1,1,0,0,0},
		{0,1,1,0,0,1,1,0},
		{0,0,0,0,0,1,1,0},
		{0,0,0,1,1,1,0,0},
		{0,0,1,1,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,1,1,1,1,0},
		{0,0,0,0,0,0,0,0}
	},

	["3"] = {
		{0,0,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,0,0,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["4"] = {
		{0,0,0,0,1,1,0,0},
		{0,0,0,1,1,1,0,0},
		{0,0,1,1,0,1,0,0},
		{0,1,1,0,0,1,0,0},
		{0,1,1,1,1,1,1,0},
		{0,0,0,0,0,1,0,0},
		{0,0,0,0,0,1,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["5"] = {
		{0,1,1,1,1,1,1,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,1,1,1,0,0},
		{0,0,0,0,0,1,1,0},
		{0,0,0,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["6"] = {
		{0,0,1,1,1,1,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,0,0,0,0,0},
		{0,1,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["7"] = {
		{0,1,1,1,1,1,1,0},
		{0,0,0,0,0,1,1,0},
		{0,0,0,0,1,1,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,1,1,0,0,0,0},
		{0,0,1,1,0,0,0,0},
		{0,0,1,1,0,0,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["8"] = {
		{0,0,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["9"] = {
		{0,0,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,0,0,1,1,0},
		{0,0,1,1,1,1,1,0},
		{0,0,0,0,0,1,1,0},
		{0,0,0,0,0,1,1,0},
		{0,0,1,1,1,1,0,0},
		{0,0,0,0,0,0,0,0}
	},

	-- =====================================================
	-- SYMBOLS
	-- =====================================================

	["!"] = {
		{0,0,0,1,1,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["?"] = {
		{0,0,1,1,1,0,0,0},
		{0,1,1,0,1,1,0,0},
		{0,0,0,0,1,1,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["_"] = {
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,1,1,1,1,1,1,0},
		{0,0,0,0,0,0,0,0}
	},

	["%"] = {
		{0,1,1,0,0,0,1,1},
		{0,1,1,0,0,1,1,0},
		{0,0,0,0,1,1,0,0},
		{0,0,0,1,1,0,0,0},
		{0,0,1,1,0,0,0,0},
		{0,1,1,0,0,0,1,1},
		{0,1,1,0,0,1,1,0},
		{0,0,0,0,0,0,0,0}
	},

	["^"] = {
		{0,0,0,1,1,0,0,0},
		{0,0,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["#"] = {
		{0,0,1,0,1,0,0,0},
		{0,0,1,0,1,0,0,0},
		{0,1,1,1,1,1,0,0},
		{0,0,1,0,1,0,0,0},
		{0,1,1,1,1,1,0,0},
		{0,0,1,0,1,0,0,0},
		{0,0,1,0,1,0,0,0},
		{0,0,0,0,0,0,0,0}
	},

	["@"] = {
		{0,0,1,1,1,1,0,0},
		{0,1,1,0,0,1,1,0},
		{0,1,1,1,1,1,1,0},
		{0,1,1,0,1,1,1,0},
		{0,1,1,0,1,1,1,0},
		{0,1,1,0,0,0,0,0},
		{0,0,1,1,1,1,1,0},
		{0,0,0,0,0,0,0,0}
	}
}

-- =========================================================
-- FULL SCROLLING CANVAS
-- =========================================================

local fullTextCanvas = {}

for r = 1, 8 do
	fullTextCanvas[r] = {}
end

-- =========================================================
-- DRAW TARGET STATE
-- =========================================================

local function drawTargetState(targetFrame)

	if not SetNetworkOwner or SetNetworkOwner.Parent == nil or #MidiMakers == 0 then
		return false
	end

	if #currentGridState ~= #MidiMakers then
		rebuildGridState()
	end

	for makerIndex, midiMaker in ipairs(MidiMakers) do

		if not midiMaker or midiMaker.Parent == nil then
			return false
		end

		for rIndex, rowName in ipairs(rows) do

			local targetRowData = targetFrame[rIndex]

			if targetRowData then

				for colIndex = 1, 8 do

					local globalColumn = ((makerIndex - 1) * 8) + colIndex

					local targetPixel = targetRowData[globalColumn] or 0

					local currentPixel = currentGridState[makerIndex][rowName][colIndex]

					if targetPixel ~= currentPixel then

						local targetName = rowName .. tostring(colIndex)

						local targetObject = midiMaker:FindFirstChild(targetName)

						if targetObject and targetObject:IsA("BasePart") and targetObject.Parent ~= nil then

							SetNetworkOwner:FireServer(
								targetObject,
								targetObject.CFrame
							)

							currentGridState[makerIndex][rowName][colIndex] = targetPixel
						end
					end
				end
			end
		end
	end

	return true
end

-- =========================================================
-- GET MULTI-MIDIMAKER VIEWPORT
-- =========================================================

local function getViewportFrame(offset)

	local sliceFrame = {}
	local makerCount = #MidiMakers

	if makerCount <= 0 then
		return sliceFrame
	end

	local viewportWidth = makerCount * 8
	local firstRow = fullTextCanvas[1]
	local totalColumns = firstRow and #firstRow or 0

	if totalColumns <= 0 then
		return sliceFrame
	end

	for r = 1, 8 do

		sliceFrame[r] = {}
		local sourceRow = fullTextCanvas[r]

		for c = 1, viewportWidth do
			local canvasCol = ((offset + c - 1) % totalColumns) + 1
			sliceFrame[r][c] = sourceRow and sourceRow[canvasCol] or 0
		end
	end

	return sliceFrame
end

-- =========================================================
-- BUILD TEXT CANVAS
-- =========================================================

local function buildCanvasFromText(text)

	local newCanvas = {}

	for r = 1, 8 do
		newCanvas[r] = {}
	end

	for r = 1, 8 do
		for _ = 1, 8 do
			table.insert(newCanvas[r], 0)
		end
	end

	for i = 1, #text do

		local character = text:sub(i, i)

		if character == " " then
			for r = 1, 8 do
				for _ = 1, 2 do
					table.insert(newCanvas[r], 0)
				end
			end
		else
			local glyph = fontLibrary[character] or blankGlyph

			for r = 1, 8 do
				for c = 1, 8 do
					local pixel = 0
					if glyph[r] then
						pixel = glyph[r][c] or 0
					end
					table.insert(newCanvas[r], pixel)
				end
			end

			local spacing = 1

			if character == "!" or character == "?" or character == "_" or character == "%" or character == "^" or character == "#" or character == "@" then
				spacing = 0
			end

			for r = 1, 8 do
				for _ = 1, spacing do
					table.insert(newCanvas[r], 0)
				end
			end
		end
	end

	for r = 1, 8 do
		for _ = 1, 8 do
			table.insert(newCanvas[r], 0)
		end
	end

	fullTextCanvas = newCanvas
end

-- =========================================================
-- INITIAL TEXT
-- =========================================================

buildCanvasFromText("HELLO 123")

-- =========================================================
-- SCROLL LOOP
-- =========================================================

RunService.Heartbeat:Connect(function()

	if not isEnabled then
		return
	end

	if #fullTextCanvas == 0 then
		return
	end

	local firstRow = fullTextCanvas[1]

	if not firstRow or #firstRow == 0 then
		return
	end

	local now = os.clock()

	if now - lastUpdate >= frameDuration then

		lastUpdate = now

		local oldMakerCount = #MidiMakers
		refreshObjects()
		local newMakerCount = #MidiMakers

		if newMakerCount ~= oldMakerCount then
			resetGridState()
		end

		if #MidiMakers == 0 then
			return
		end

		local displayFrame = getViewportFrame(scrollScrollOffset)
		local success = drawTargetState(displayFrame)

		if not success then
			if refreshObjects() then
				resetGridState()
				drawTargetState(displayFrame)
			end
		end

		scrollScrollOffset = scrollScrollOffset + 1

		if scrollScrollOffset >= #firstRow then
			scrollScrollOffset = 0
		end
	end
end)

-- =========================================================
-- CHAT COMMANDS
-- =========================================================

LocalPlayer.Chatted:Connect(function(message)

	local lowerMsg = message:lower()

	if lowerMsg == "/e toggle" then

		isEnabled = not isEnabled

		if isEnabled then
			local objectsReady = refreshObjects()
			if objectsReady then
				resetGridState()
				scrollScrollOffset = 0
				lastUpdate = 0
			else
				isEnabled = false
			end
		else
			refreshObjects()
			local blankFrame = {}
			local totalWidth = #MidiMakers * 8

			for r = 1, 8 do
				blankFrame[r] = {}
				for c = 1, totalWidth do
					blankFrame[r][c] = 0
				end
			end
			drawTargetState(blankFrame)
		end

	elseif lowerMsg:sub(1, 9) == "/e speed " then

		local numStr = message:sub(10)
		local speedNum = tonumber(numStr)

		if speedNum then
			speedNum = math.clamp(speedNum, 1, 20)
			currentSpeedSetting = speedNum
			frameDuration = 0.35 - (currentSpeedSetting * 0.03)

			if frameDuration < 0.01 then
				frameDuration = 0.01
			end
		end

	elseif lowerMsg:sub(1, 7) == "/e say " then

		local textToDisplay = message:sub(8):upper()
		buildCanvasFromText(textToDisplay)

		scrollScrollOffset = 0
		lastUpdate = 0

		if isEnabled then
			local oldMakerCount = #MidiMakers
			refreshObjects()
			if #MidiMakers ~= oldMakerCount then
				resetGridState()
			end
		end
	end
end)