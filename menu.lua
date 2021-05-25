local scene = composer.newScene()

function scene:create( event )

	local sceneGroup = self.view
	buttonMenu.isVisible = false
	date1.isVisible = false
	date2.isVisible = false
	otstup = 30
	-- Настройка текста
	local text = display.newText(optionsText)
	sceneGroup:insert(text)
	text.text = [[
Автоматизированная система полива]]
	text.size = 50

	text.y = text.height/2 + otstup +120
	-- Список названий кнопок
	
local list = {
"Схема полива",
"Состояние системы",

}
-- Куда ведут кнопки по порядку
local nameScene = {
"scheme",
"manual",

}

for i=1, #list do
local button = widget.newButton (optionsButton)
button:setLabel(list[i])
local function gotoName()
	name = nameScene[i]
	composer.gotoScene(name)
end

button.y = text.y + text.height/2 + otstup*(i+1) + button.height/2 + button.height*(i-1) +30



button:addEventListener( "tap", gotoName )
	
sceneGroup:insert(button)	




	
end	
	
	
	
	
	
	
	
	
	
	
	
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