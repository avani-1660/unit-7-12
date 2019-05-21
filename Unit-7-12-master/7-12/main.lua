-----------------------------------------------------------------------------------------
--
-- Created by: Aden Rao
-- Created on: May 7, 2019
-- 
-- Goes to scene 1 which is text that says scene 1 and then after a few seconds it fades to scene 2 which has a different background colour and the text says scene 2.
-----------------------------------------------------------------------------------------

-- Hides status bar
display.setStatusBar(display.HiddenStatusBar)

local composer = require( "composer" )

-- Goes to scene1
composer.gotoScene( "scene1" )