local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Tutorial", "GrapeTheme")

-- Tab example

local Tab = Window:NewTab("example")
local Section = Tab:NewSection("Example for youtube")

-- Buttons for tab example 

Section:NewButton("Infinite jump", "Jump Infinitely", function()
    local InfiniteJumpEnabled = true 
game:GetService("UserInputService").JumpRequest:connect(function() 
	if InfiniteJumpEnabled then 
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping") 
	end 
end)
end)
Section:NewButton("speed", "speed gui", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/yixPYBge"))() 
end)
Section:NewButton("AutoJump", "Automatically jumps", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/vViq08jX'))()
end)
Section:NewSlider("Speed Changer", "Change your speed (buggy)", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
