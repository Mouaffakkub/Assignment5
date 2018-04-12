-----------------------------------------------------------------------------------------
-- Created by: Mouaffak Koubeisy
-- Created on: Wednesday April 11th 2018
-----------------------------------------------------------------------------------------
local ninja = display.newImageRect("./assets/sprites/Ninja Boi.png", 700, 900)
ninja.x = 600
ninja.y = display.contentHeight - 350 
ninja.ID = "ninja"


for loopCounter = 1, 50 do 
    print(loopCounter) 
    ninja.x = ninja.x + 10
end

local ghost = display.newImageRect("./assets/sprites/ghost.png", 500, 700)
ghost.x = 350
ghost.y = display.contentHeight - 350 
ghost.ID = "ghost"

local function ghostTouch( event )

    ghost.alpha = 0.0
    return true
end

ghost:addEventListener( "touch", ghostTouch )

local lightning = display.newImageRect("./assets/sprites/Lightning.png", 700, 700)
lightning.x = 1700
lightning.y = display.contentHeight - 1100
lightning.ID = "lightning"

local lightningSound

local function lightningTouch( event )
    
    local lightningSound = audio.loadSound( "./assets/sound/Lightning.wav" )
    audio.play( lightningSound) 
    print (" Working ")
    return true
end

lightning:addEventListener( "touch", lightningTouch )