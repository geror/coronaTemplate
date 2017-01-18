
-- Call Composer

	local composer = 	require( "composer" )
	local scene = 		composer.newScene( )

-- Create 'start scene'

	function scene:create( event )

		-- add graphic elements to screen
		local image = display.newImageRect( "images/intro.jpg", 1280, 720 )
		image.x = 0
		image.y = 0
		
		image.alpha = 0
		transition.to( image, { time=2000, alpha=1.0,
  		onComplete=function( object )
      	transition.to( object, { time=2000, delay=3000, alpha=0.0, 
      		onComplete=function( object )
      			composer.gotoScene('scripts.menu')  -- go to menu
      		end
      	})
  		end
		})
	end


-- Adding Listeners to scene

	scene:addEventListener( "create", scene )

-- Element return - required for module

	return scene