local composer = require( "composer" )
 
local scene2 = composer.newScene()

-- Scene2 event functions
----------------------------------------------------------------------------------
local function showScene1()

    local options = {
        effect = "fade",
        time = 500
    }
    -- Goes to scene 1
    composer.gotoScene( "scene1", options )
end
 
-- create()
function scene2:create( event )
 
    local scene2Group = self.view
    -- Code here runs when the scene2 is first created but has not yet appeared on screen
 
end
 
 
-- show()
function scene2:show( event )
 
    local scene2Group = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene2 is still off screen (but is about to come on screen)
        local background = display.newRect(0, 0, 1080, 1080)
        background:setFillColor( 150/255, 150/255, 0)
        scene2Group:insert(background)

        local text = display.newText( "Scene 2" , display.contentCenterX, display.contentCenterX, native.systemFont, 75 )
        text:setFillColor( 0/255, 150/255, 125/255 )
        scene2Group:insert(text)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene2 is entirely on screen
        timer.performWithDelay(3000, showScene1)
 
 
    end
end
 
 
-- hide()
function scene2:hide( event )
 
    local scene2Group = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene2 is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene2 goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene2:destroy( event )
 
    local scene2Group = self.view
    -- Code here runs prior to the removal of scene2's view
 
end
 
-- Scene2 event function listeners
-- -----------------------------------------------------------------------------------
scene2:addEventListener( "create", scene2 )
scene2:addEventListener( "show", scene2 )
scene2:addEventListener( "hide", scene2 )
scene2:addEventListener( "destroy", scene2 )
-- -----------------------------------------------------------------------------------
 
return scene2
---------------------------------------------------------------------------------------