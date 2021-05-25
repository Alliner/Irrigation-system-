local scene = composer.newScene()

function scene:create( event )

	local sceneGroup = self.view

composer.gotoScene( nameScenePr )
	
	
end


function scene:hide( event )

local sceneGroup = self.view

local nameForDelete = composer.getSceneName( "current" )
composer.removeScene( nameForDelete )

end

scene:addEventListener( "create", scene )
scene:addEventListener( "hide", scene )

-- ---------------------------------------------------------------------------

return scene
