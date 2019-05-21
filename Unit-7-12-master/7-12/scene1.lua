local composer = require( "composer" )
 
local scene1 = composer.newScene()
 

--Scene1 event functions
-------------------------------------------------------------------------------------
 
local function showScene2()

    local options = {
        effect = "fade",
        time = 500
    }
    -- Goes to scene 2
    composer.gotoScene( "scene2", options )
end

-- create()
function scene1:create( event )
 
    local scene1Group = self.view
    -- Code here runs when the scene1 is first created but has not yet appeared on screen
 
end
 
 
-- show()
function scene1:show( event )
 
    local scene1Group = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene1 is still off screen (but is about to come on screen)
        local background = display.newRect(0, 0, 1080, 1080)
        background:setFillColor( 250/255, 150/255, 0)
        scene1Group:insert(background)


        local text = display.newText( "Scene 1" , display.contentCenterX, display.contentCenterX, native.systemFont, 75 )
        text:setFillColor( 0/255, 150/255, 0/255 )
        scene1Group:insert(text)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene1 is entirely on screen
        timer.performWithDelay(3000, showScene2)
 
    end
end
 
 
-- hide()
function scene1:hide( event )
 
    local scene1Group = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene1 is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene1 goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene1:destroy( event )
 
    local scene1Group = self.view
    -- Code here runs prior to the removal of scene1's view
 
end
 
 

-- Scene1 event function listeners
-------------------------------------------------------------------------------------
scene1:addEventListener( "create", scene1 )
scene1:addEventListener( "show", scene1 )
scene1:addEventListener( "hide", scene1 )
scene1:addEventListener( "destroy", scene1 )
-------------------------------------------------------------------------------------
 
return scene1
---------------------------------------------------------------------------------------
