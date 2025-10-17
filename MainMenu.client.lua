--------------------------------------
-- SERVICES!
--------------------------------------
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
--------------------------------------
-- VARIABLES!
--------------------------------------
local player = Players.LocalPlayer

local sfx = ReplicatedStorage:WaitForChild("SFX")
local onButtonSfx = sfx:WaitForChild("OnButtonSFX")

local mainTitleGui = script.Parent
local mainTitleFrame = mainTitleGui:WaitForChild("MainTitleFrame")
--------------------------------------
-- FUNCTIONS!
--------------------------------------
local function playSound()
	onButtonSfx:Play()
end

local function exitFromGame()
	player:Kick("You exit from the game!")
end
--------------------------------------
-- MAIN CODE!
--------------------------------------
mainTitleFrame.JoinButton.MouseEnter:Connect(playSound)
mainTitleFrame.HostButton.MouseEnter:Connect(playSound)
mainTitleFrame.ExitButton.MouseEnter:Connect(playSound)

mainTitleFrame.ExitButton.Activated:Connect(exitFromGame)
