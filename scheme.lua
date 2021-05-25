local scene = composer.newScene()

function scene:create( event )

	local sceneGroup = self.view
	buttonMenu.isVisible = true


	opText = 
{
	text = "Текст",
    x = display.contentCenterX,
    width = (display.safeActualContentWidth - 15*4)/3-20,
--    font = "Inter-LightItalic.otf",
	font = "LinLibertine.ttf",
    fontSize = 36
}

	local res1 = display.newRect (display.contentCenterX, date2.y + date2.height/2+15+170/2, display.contentWidth - 30, 170)
	sceneGroup:insert(res1)
	res1.strokeWidth = 2
	res1:setFillColor(1)
	res1:setStrokeColor(0)
	

	local res2 = display.newRect (display.contentCenterX, res1.y, display.contentWidth - 40, 160)
	sceneGroup:insert(res2)
	res2:setFillColor(131/255,1,1)
	res2.strokeWidth = 2
	res2:setStrokeColor(0)
	local textRes = display.newText(optionsText)
	sceneGroup:insert(textRes)
	textRes.text = [[Главный резервуар. Вместимость: ]]..waterMax[1]..[[литров]]
	textRes.y = res1.y
	textRes.x = res1.x
	
	local b1 = display.newRect (15+(display.safeActualContentWidth - 15*4)/6, res1.y + res1.height/2+35+170/2, (display.safeActualContentWidth - 15*4)/3, 170)
	sceneGroup:insert(b1)
	b1.strokeWidth = 2
	b1:setFillColor(1)
	b1:setStrokeColor(0)
	local b11 = display.newRect (b1.x, b1.y, (display.safeActualContentWidth - 15*4)/3-10, 160)
	sceneGroup:insert(b11)
	b11:setFillColor(131/255,1,1)
	b11.strokeWidth = 2
	b11:setStrokeColor(0)
	local textb1 = display.newText(opText)
	sceneGroup:insert(textb1)
	textb1.text = [[ Бочка 1 
	   400
 литров]]
	textb1.y = b1.y
	textb1.x = b1.x
	
	
	local b2 = display.newRect (display.contentCenterX, res1.y + res1.height/2+35+170/2, (display.safeActualContentWidth - 15*4)/3, 170)
	sceneGroup:insert(b2)
	b2.strokeWidth = 2
	b2:setFillColor(1)
	b2:setStrokeColor(0)
	local b22 = display.newRect (b2.x, b2.y, (display.safeActualContentWidth - 15*4)/3-10, 160)
	sceneGroup:insert(b22)
	b22:setFillColor(131/255,1,1)
	b22.strokeWidth = 2
	b22:setStrokeColor(0)
	local textb2 = display.newText(opText)
	sceneGroup:insert(textb2)
	textb2.text = [[ Бочка 2 
	   500
 литров]]
	textb2.y = b2.y
	textb2.x = b2.x
	
	
	local b3 = display.newRect (b2.x+b2.width+15, res1.y + res1.height/2+35+170/2, (display.safeActualContentWidth - 15*4)/3, 170)
	sceneGroup:insert(b3)
	b3.strokeWidth = 2
	b3:setFillColor(1)
	b3:setStrokeColor(0)
	local b33 = display.newRect (b3.x, b3.y, (display.safeActualContentWidth - 15*4)/3-10, 160)
	sceneGroup:insert(b33)
	b33:setFillColor(131/255,1,1)
	b33.strokeWidth = 2
	b33:setStrokeColor(0)
	local textb3 = display.newText(opText)
	sceneGroup:insert(textb3)
	textb3.text = [[ Бочка 3 
	   700
 литров]]
	textb3.y = b3.y
	textb3.x = b3.x
	
	
	local g1 = display.newRect (15+(display.safeActualContentWidth - 15*7)/12, b1.y + b1.height/2+35+250/2, (display.safeActualContentWidth - 15*7)/6, 250)
	sceneGroup:insert(g1)
	g1.strokeWidth = 2
	g1:setFillColor(1)
	g1:setStrokeColor(0)
	local g11 = display.newRect (g1.x, g1.y, (display.safeActualContentWidth - 15*7)/6-10, 240)
	sceneGroup:insert(g11)
	g11:setFillColor(205/255, 133/255, 63/255)
	g11.strokeWidth = 2
	g11:setStrokeColor(0)

	
	local g2 = display.newRect (g1.x+g1.width+13, g1.y, (display.safeActualContentWidth - 15*7)/6, 250)
	sceneGroup:insert(g2)
	g2.strokeWidth = 2
	g2:setFillColor(1)
	g2:setStrokeColor(0)
	local g22 = display.newRect (g2.x, g2.y, (display.safeActualContentWidth - 15*7)/6-10, 240)
	sceneGroup:insert(g22)
	g22:setFillColor(205/255, 133/255, 63/255)
	g22.strokeWidth = 2
	g22:setStrokeColor(0)
	
	local g3 = display.newRect (g2.x+g2.width+13, g1.y, (display.safeActualContentWidth - 15*7)/6, 250)
	sceneGroup:insert(g3)
	g3.strokeWidth = 2
	g3:setFillColor(1)
	g3:setStrokeColor(0)
	local g33 = display.newRect (g3.x, g3.y, (display.safeActualContentWidth - 15*7)/6-10, 240)
	sceneGroup:insert(g33)
	g33:setFillColor(205/255, 133/255, 63/255)
	g33.strokeWidth = 2
	g33:setStrokeColor(0)
	
	local g4 = display.newRect (g3.x+g3.width+13, g1.y, (display.safeActualContentWidth - 15*7)/6, 250)
	sceneGroup:insert(g4)
	g4.strokeWidth = 2
	g4:setFillColor(1)
	g4:setStrokeColor(0)
	local g44 = display.newRect (g4.x, g4.y, (display.safeActualContentWidth - 15*7)/6-10, 240)
	sceneGroup:insert(g44)
	g44:setFillColor(205/255, 133/255, 63/255)
	g44.strokeWidth = 2
	g44:setStrokeColor(0)
	
	local g5 = display.newRect (g4.x+g4.width+13,g1.y, (display.safeActualContentWidth - 15*7)/6, 250)
	sceneGroup:insert(g5)
	g5.strokeWidth = 2
	g5:setFillColor(1)
	g5:setStrokeColor(0)
	local g55 = display.newRect (g5.x, g5.y, (display.safeActualContentWidth - 15*7)/6-10, 240)
	sceneGroup:insert(g55)
	g55:setFillColor(205/255, 133/255, 63/255)
	g55.strokeWidth = 2
	g55:setStrokeColor(0)
	
	local g6 = display.newRect (g5.x+g5.width+13, g1.y, (display.safeActualContentWidth - 15*7)/6, 250)
	sceneGroup:insert(g6)
	g6.strokeWidth = 2
	g6:setFillColor(1)
	g6:setStrokeColor(0)
	local g66 = display.newRect (g6.x, g6.y, (display.safeActualContentWidth - 15*7)/6-10, 240)
	sceneGroup:insert(g66)
	g66:setFillColor(205/255, 133/255, 63/255)
	g66.strokeWidth = 2
	g66:setStrokeColor(0)
	
	
	oText = 
{
	text = "Текст",
    x = display.contentCenterX,
    width = (display.safeActualContentWidth - 15*4)/3+20,
--    font = "Inter-LightItalic.otf",
	font = "LinLibertine.ttf",
    fontSize = 26
}
	local textg12 = display.newText(oText)
	sceneGroup:insert(textg12)
	textg12.text = [[       Огурцы
	Необх. влаж-ть
	        65-85%]]
	textg12.y = g1.y + g1.height/2 + textg12.height/2 +15
	textg12.x = b1.x
	
	
	local textg34 = display.newText(oText)
	sceneGroup:insert(textg34)
	textg34.text = [[       Капуста
	Необх. влаж-ть
	        50-65%]]
	textg34.y = g1.y + g1.height/2 + textg12.height/2 +15
	textg34.x = b2.x
	
	
	local textg56 = display.newText(oText)
	sceneGroup:insert(textg56)
	textg56.text = [[       Морковь
	Необх. влаж-ть
	        30-45%]]
	textg56.y = g1.y + g1.height/2 + textg12.height/2 +15
	textg56.x = b3.x	
	
	
	
	local t1 = display.newRect (b1.x, res1.y + res1.height/2+35/2, 50, 50)
	sceneGroup:insert(t1)
	t1:setFillColor(131/255,1,1)
	
	local t2 = display.newRect (b2.x, res1.y + res1.height/2+35/2, 50, 50)
	sceneGroup:insert(t2)
	t2:setFillColor(131/255,1,1)
	
	local t3 = display.newRect (b3.x, res1.y + res1.height/2+35/2, 50, 50)
	sceneGroup:insert(t3)
	t3:setFillColor(131/255,1,1)
	
	local t11 = display.newRect (g1.x, b1.y + b1.height/2+35/2, 25, 80)
	sceneGroup:insert(t11)
	t11:setFillColor(131/255,1,1)
	
	
	local t12 = display.newRect (g2.x, b1.y + b1.height/2+35/2, 25, 80)
	sceneGroup:insert(t12)
	t12:setFillColor(131/255,1,1)	
	
	
	local t13 = display.newRect (g3.x, b1.y + b1.height/2+35/2, 25, 80)
	sceneGroup:insert(t13)
	t13:setFillColor(131/255,1,1)	
	
	
	local t14 = display.newRect (g4.x, b1.y + b1.height/2+35/2, 25, 80)
	sceneGroup:insert(t14)
	t14:setFillColor(131/255,1,1)	
	
	
	local t15 = display.newRect (g5.x, b1.y + b1.height/2+35/2, 25, 80)
	sceneGroup:insert(t15)
	t15:setFillColor(131/255,1,1)	
	
	
	local t16 = display.newRect (g6.x, b1.y + b1.height/2+35/2, 25, 80)
	sceneGroup:insert(t16)
	t16:setFillColor(131/255,1,1)	
	
	
	
	
	
	
	
	
	
	
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
