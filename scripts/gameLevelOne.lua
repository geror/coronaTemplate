local composer = require("composer")
local scene = composer.newScene()

local scoreButton

function scene:create(event)
	print("=== Create ===")
	-- group object for entire view of this scene
	local sceneGroup = self.view

	-- add graphic elements to screen
	local background 	= display.newRect( sceneGroup, 0, 0, display.contentWidth, display.contentHeight )
	background:setFillColor( .75, .39, 0 )
	scoreButton = display.newImage(sceneGroup, "images/entrarButton.jpg", 100, 100)
end

function scene:show(event)
	scoreButton:addEventListener("tap", scoreScene)
	print("=== Show ===")
end

function scene:hide(event)
	print("=== Hide ===");
end

function scoreScene()
	composer.gotoScene('scripts.scoreScene')
end


-- Adding Listeners to scene
scene:addEventListener("create", scene);
scene:addEventListener("show", scene);
scene:addEventListener("hide", scene);

-- Element return - required for module
return scene