local scene = composer.newScene()

function scene:create( event )

	local sceneGroup = self.view
	buttonMenu.isVisible = true
	date1.isVisible = true

	


-- Create the widget
local scrollView = widget.newScrollView(
    {
		top = date2.y + date2.height/2+15,
		left = 0,

        width = display.contentWidth,
        height = display.safeActualContentHeight - date2.y - date2.height/2-20,
		
		horizontalScrollDisabled = true,
		hideBackground = true,
    }
)

	
	--Добавление данных о резервуаре/бочках
	local optText = 
{
	text = "Текст",
	font = "LinLibertine.ttf",
    fontSize = 30
}
	local text1 = display.newText(optionsText)
	scrollView:insert(text1)
	text1.text = [[Всего затрачено воды на полив: ]]..allwater..[[литров.
	
	Заполненность водой:]]
	text1.y = text1.height/2 +5
	text1.x = text1.width/2+15
	
------------------Резезвуар--------------------------------------------------------------------	
	local textRes = display.newText(optText)
	scrollView:insert(textRes)
	textRes.text = [[Главный резервуар:]]
	textRes.y = text1.y + text1.height/2 + textRes.height/2+20
	textRes.x = textRes.width/2+15
	
	local textRes1 = display.newText(optText)
	scrollView:insert(textRes1)
	textRes1.text = [[Заполняется]]
	textRes1.y = textRes.y
	textRes1.x = textRes.x + textRes.width -10
	textRes1:setFillColor( 0, 132/255, 0 )
	textRes1.isVisible = false
	
	local res1 = display.newRect (display.contentCenterX, textRes.y + textRes.height/2 + 35, display.contentWidth - 30, 50)
	scrollView:insert(res1)
	res1.strokeWidth = 2
	res1:setFillColor(1)
	res1:setStrokeColor(0)
	
	local k = water[1]/waterMax[1] --заполненность
	
	local res2 = display.newRect (math.max(k*display.contentWidth/2,40), res1.y, math.max(k*display.contentWidth-40, 40), 40)
	scrollView:insert(res2)
	res2:setFillColor(131/255,1,1)
	res2.strokeWidth = 2
	res2:setStrokeColor(0)

	local textRes2 = display.newText(optText)
	scrollView:insert(textRes2)
	textRes2.text = [[Заполненность: ]]..math.ceil(100*water[1]/waterMax[1])..[[%, ]]..water[1]..[[ литров]]
	textRes2.y = res2.y
	textRes2.x = display.contentCenterX
	
	
----------------------Бочка1----------------------------------------------------------------	
	local textb1 = display.newText(optText)
	scrollView:insert(textb1)
	textb1.text = [[Бочка 1:]]
	textb1.y = res1.y + res1.height/2 + textb1.height/2+20
	textb1.x = textb1.width/2+15
	
	local textb11 = display.newText(optText)
	scrollView:insert(textb11)
	textb11.text = [[Заполняется]]
	textb11.y = textb1.y
	textb11.x = textb1.x + textb1.width + 60
	textb11:setFillColor( 0, 132/255, 0 )
	textb11.isVisible = false
	
	local b1 = display.newRect (display.contentCenterX, textb1.y + textb1.height/2 + 35, display.contentWidth - 30, 50)
	scrollView:insert(b1)
	b1.strokeWidth = 2
	b1:setFillColor(1)
	b1:setStrokeColor(0)
	
	local k = water[2]/waterMax[2] --заполненность
	
	local b11 = display.newRect (math.max(k*display.contentWidth/2,40), b1.y, math.max(k*display.contentWidth-40, 40), 40)
	scrollView:insert(b11)
	b11:setFillColor(131/255,1,1)
	b11.strokeWidth = 2
	b11:setStrokeColor(0)

	local textb111 = display.newText(optText)
	scrollView:insert(textb111)
	textb111.text = [[Заполненность: ]]..math.ceil(100*water[2]/waterMax[2])..[[%, ]]..water[2]..[[ литров]]
	textb111.y = b1.y
	textb111.x = display.contentCenterX



----------------------Бочка2----------------------------------------------------------------	
	local textb2 = display.newText(optText)
	scrollView:insert(textb2)
	textb2.text = [[Бочка 2:]]
	textb2.y = b1.y + b1.height/2 + textb2.height/2+20
	textb2.x = textb2.width/2+15
	
	local textb22 = display.newText(optText)
	scrollView:insert(textb22)
	textb22.text = [[Заполняется]]
	textb22.y = textb2.y
	textb22.x = textb2.x + textb2.width + 60
	textb22:setFillColor( 0, 132/255, 0 )
	textb22.isVisible = false
	
	local b2 = display.newRect (display.contentCenterX, textb2.y + textb2.height/2 + 35, display.contentWidth - 30, 50)
	scrollView:insert(b2)
	b2.strokeWidth = 2
	b2:setFillColor(1)
	b2:setStrokeColor(0)
	
	local k = water[3]/waterMax[3] --заполненность
	
	local b22 = display.newRect (math.max(k*display.contentWidth/2,40), b2.y, math.max(k*display.contentWidth-40, 40), 40)
	scrollView:insert(b22)
	b22:setFillColor(131/255,1,1)
	b22.strokeWidth = 2
	b22:setStrokeColor(0)

	local textb222 = display.newText(optText)
	scrollView:insert(textb222)
	textb222.text = [[Заполненность: ]]..math.ceil(100*water[3]/waterMax[3])..[[%, ]]..water[3]..[[ литров]]
	textb222.y = b2.y
	textb222.x = display.contentCenterX
	
	
-------------------------Бочка3-------------------------------------------------------------	
	local textb3 = display.newText(optText)
	scrollView:insert(textb3)
	textb3.text = [[Бочка 3:]]
	textb3.y = b2.y + b2.height/2 + textb3.height/2+20
	textb3.x = textb3.width/2+15
	
	local textb33 = display.newText(optText)
	scrollView:insert(textb33)
	textb33.text = [[Заполняется]]
	textb33.y = textb3.y
	textb33.x = textb3.x + textb3.width + 60
	textb33:setFillColor( 0, 132/255, 0 )
	textb33.isVisible = false
	
	local b3 = display.newRect (display.contentCenterX, textb3.y + textb1.height/2 + 35, display.contentWidth - 30, 50)
	scrollView:insert(b3)
	b3.strokeWidth = 2
	b3:setFillColor(1)
	b3:setStrokeColor(0)
	
	local k = water[4]/waterMax[4] --заполненность
	
	local b33 = display.newRect (math.max(k*display.contentWidth/2,40), b3.y, math.max(k*display.contentWidth-40, 40), 40)
	scrollView:insert(b33)
	b33:setFillColor(131/255,1,1)
	b33.strokeWidth = 2
	b33:setStrokeColor(0)

	local textb333 = display.newText(optText)
	scrollView:insert(textb333)
	textb333.text = [[Заполненность: ]]..math.ceil(100*water[4]/waterMax[4])..[[%, ]]..water[4]..[[ литров]]
	textb333.y = b3.y
	textb333.x = display.contentCenterX




	
	--Добавление данных о влажности почвы
	local text2 = display.newText(optionsText)
	scrollView:insert(text2)
	text2.text = [[Данные о влажности почвы:]]
	text2.y = b3.y + b3.height/2 + text2.height/2 + 40
	text2.x = text2.width/2+15
	
	local text3 = display.newText(optText)
	scrollView:insert(text3)
	text3.text = [[Диапазон влажности для полива:
	Для огурцов (грядки 1-2): 65-85%
	Для капусты (грядки 3-4): 50-65%
	Для моркови (грядки 5-6): 30-45%]]
	text3.y = text2.y + text2.height/2 + text3.height/2 + 20
	text3.x = text3.width/2+15
	


--------------------Грядка1------------------------------
	local textG1 = display.newText(optText)
	scrollView:insert(textG1)
	textG1.text = [[Грядка 1:]]
	textG1.y = text3.y + text3.height/2 + textG1.height/2 + 20
	textG1.x = textG1.width/2+15
	
	local textG11 = display.newText(optText)
	scrollView:insert(textG11)
	textG11.text = [[Происходит полив]]
	textG11.y = textG1.y
	textG11.x = textG1.x + textG1.width/2+ textG11.width/2 +10
	textG11:setFillColor( 0, 132/255, 0 )
	textG11.isVisible=false
	

	local G1 = display.newRect (display.contentCenterX, textG1.y + textG1.height/2 + 35, display.contentWidth - 30, 50)
	scrollView:insert(G1)
	G1.strokeWidth = 2
	G1:setFillColor(1)
	G1:setStrokeColor(0)	
	
	local G11 = display.newRect (display.contentWidth/2, G1.y, display.contentWidth-40, 40)
	scrollView:insert(G11)
	G11:setFillColor(205/255, 133/255, 63/255 )
	G11.strokeWidth = 2
	G11:setStrokeColor(0)


	textG111 = display.newText(optText)
	scrollView:insert(textG111)
	textG111.text = [[Влажность: ]]..land[1]..[[%]]
	textG111.y = G1.y
	textG111.x = G1.x
		
	
--------------------Грядка2---------------------------------
	local textG2 = display.newText(optText)
	scrollView:insert(textG2)
	textG2.text = [[Грядка 2:]]
	textG2.y = G1.y + G1.height/2 + textG2.height/2 + 20
	textG2.x = textG2.width/2+15
	
	local textG22 = display.newText(optText)
	scrollView:insert(textG22)
	textG22.text = [[Происходит полив]]
	textG22.y = textG2.y
	textG22.x = textG2.x + textG2.width/2+ textG22.width/2 +10
	textG22:setFillColor( 0, 132/255, 0 )
	textG22.isVisible=false
	

	local G2 = display.newRect (display.contentCenterX, textG2.y + textG2.height/2 + 35, display.contentWidth - 30, 50)
	scrollView:insert(G2)
	G2.strokeWidth = 2
	G2:setFillColor(1)
	G2:setStrokeColor(0)	
	
	local G22 = display.newRect (display.contentWidth/2, G2.y, display.contentWidth-40, 40)
	scrollView:insert(G22)
	G22:setFillColor(205/255, 133/255, 63/255)
	G22.strokeWidth = 2
	G22:setStrokeColor(0)


	local textG222 = display.newText(optText)
	scrollView:insert(textG222)
	textG222.text = [[Влажность: ]]..land[2]..[[%]]
	textG222.y = G2.y
	textG222.x = G2.x

---------------------Грядка3----------------------------------
	local textG3 = display.newText(optText)
	scrollView:insert(textG3)
	textG3.text = [[Грядка 3:]]
	textG3.y = G2.y + G2.height/2 + textG3.height/2 + 20
	textG3.x = textG3.width/2+15
	
	local textG33 = display.newText(optText)
	scrollView:insert(textG33)
	textG33.text = [[Происходит полив]]
	textG33.y = textG3.y
	textG33.x = textG3.x + textG3.width/2+ textG33.width/2 +10
	textG33:setFillColor( 0, 132/255, 0 )
	textG33.isVisible=false
	

	local G3 = display.newRect (display.contentCenterX, textG3.y + textG3.height/2 + 35, display.contentWidth - 30, 50)
	scrollView:insert(G3)
	G3.strokeWidth = 2
	G3:setFillColor(1)
	G3:setStrokeColor(0)	
	
	local G33 = display.newRect (display.contentWidth/2, G3.y, display.contentWidth-40, 40)
	scrollView:insert(G33)
	G33:setFillColor(205/255, 133/255, 63/255)
	G33.strokeWidth = 2
	G33:setStrokeColor(0)


	local textG333 = display.newText(optText)
	scrollView:insert(textG333)
	textG333.text = [[Влажность: ]]..land[3]..[[%]]
	textG333.y = G3.y
	textG333.x = G3.x 
	
	
------------------------Грядка4--------------------------	
	local textG4 = display.newText(optText)
	scrollView:insert(textG4)
	textG4.text = [[Грядка 4:]]
	textG4.y = G3.y + G3.height/2 + textG4.height/2 + 20
	textG4.x = textG4.width/2+15
	
	local textG44 = display.newText(optText)
	scrollView:insert(textG44)
	textG44.text = [[Происходит полив]]
	textG44.y = textG4.y
	textG44.x = textG4.x + textG4.width/2+ textG44.width/2 +10
	textG44:setFillColor( 0, 132/255, 0 )
	textG44.isVisible=false
	

	local G4 = display.newRect (display.contentCenterX, textG4.y + textG4.height/2 + 35, display.contentWidth - 30, 50)
	scrollView:insert(G4)
	G4.strokeWidth = 2
	G4:setFillColor(1)
	G4:setStrokeColor(0)	
	
	local G44 = display.newRect (display.contentWidth/2, G4.y, display.contentWidth-40, 40)
	scrollView:insert(G44)
	G44:setFillColor(205/255, 133/255, 63/255)
	G44.strokeWidth = 2
	G44:setStrokeColor(0)


	local textG444 = display.newText(optText)
	scrollView:insert(textG444)
	textG444.text = [[Влажность: ]]..land[4]..[[%]]
	textG444.y = G4.y
	textG444.x = G4.x 
	
	
	
------------------------Грядка5----------------------------	
	local textG5 = display.newText(optText)
	scrollView:insert(textG5)
	textG5.text = [[Грядка 5:]]
	textG5.y = G4.y + G4.height/2 + textG5.height/2 + 20
	textG5.x = textG5.width/2+15
	
	local textG55 = display.newText(optText)
	scrollView:insert(textG55)
	textG55.text = [[Происходит полив]]
	textG55.y = textG5.y
	textG55.x = textG5.x + textG5.width/2+ textG55.width/2 +10
	textG55:setFillColor( 0, 132/255, 0 )
	textG55.isVisible=false
	

	local G5 = display.newRect (display.contentCenterX, textG5.y + textG5.height/2 + 35, display.contentWidth - 30, 50)
	scrollView:insert(G5)
	G5.strokeWidth = 2
	G5:setFillColor(1)
	G5:setStrokeColor(0)	
	
	local G55 = display.newRect (display.contentWidth/2, G5.y, display.contentWidth-40, 40)
	scrollView:insert(G55)
	G55:setFillColor(205/255, 133/255, 63/255)
	G55.strokeWidth = 2
	G55:setStrokeColor(0)


	local textG555 = display.newText(optText)
	scrollView:insert(textG555)
	textG555.text = [[Влажность: ]]..land[5]..[[%]]
	textG555.y = G5.y
	textG555.x = G5.x 
	
	
	
---------------------Грядка6-------------------------------
	local textG6 = display.newText(optText)
	scrollView:insert(textG6)
	textG6.text = [[Грядка 6:]]
	textG6.y = G5.y + G5.height/2 + textG6.height/2 + 20
	textG6.x = textG6.width/2+15
	
	local textG66 = display.newText(optText)
	scrollView:insert(textG66)
	textG66.text = [[Происходит полив]]
	textG66.y = textG6.y
	textG66.x = textG6.x + textG6.width/2+ textG66.width/2 +10
	textG66:setFillColor( 0, 132/255, 0 )
	textG66.isVisible=false
	

	local G6 = display.newRect (display.contentCenterX, textG6.y + textG6.height/2 + 35, display.contentWidth - 30, 50)
	scrollView:insert(G6)
	G6.strokeWidth = 2
	G6:setFillColor(1)
	G6:setStrokeColor(0)	
	
	local G66 = display.newRect (display.contentWidth/2, G6.y, display.contentWidth-40, 40)
	scrollView:insert(G66)
	G66:setFillColor(205/255, 133/255, 63/255)
	G66.strokeWidth = 2
	G66:setStrokeColor(0)


	local textG666 = display.newText(optText)
	scrollView:insert(textG666)
	textG666.text = [[Влажность: ]]..land[6]..[[%]]
	textG666.y = G6.y
	textG666.x = G6.x 
	
	


sceneGroup:insert(scrollView)


function waterB(a)
local function bb(a) water[a] = math.min(water[a] + 300, waterMax[a]) end
	if a==1 then
		textRes1.isVisible = true
		timer.performWithDelay( 100, bb(a))
		
	end
	if a==2 then
		if water[1]>=150 then
		textb11.isVisible = true
		water[a] = math.min(water[a] + 100, waterMax[a])
		water[1]=water[1]-100
		
		end
	end
	if a==3 then
		if water[1]>=150 then
		textb22.isVisible = true
		water[a] = math.min(water[a] + 100, waterMax[a])
		water[1]=water[1]-100
		--local k = water[a]/waterMax[a]
		--b33 = display.newRect (k*display.contentWidth/2, b3.y, k*display.contentWidth-40, 40)
		end
	end
	if a==4 then
		if water[1]>=150 then
		textb33.isVisible = true
		water[a] = math.min(water[a] + 100, waterMax[a])
		water[1]=water[1]-100
		end
	end
--water[a] = math.min(water[a] + 200, waterMax[a])
end

function waterBf(a)
	if a==1 then
		textRes1.isVisible = false
		
	end
	if a==2 then

		textb11.isVisible = false

	end
	if a==3 then

		textb22.isVisible = false

	end
	if a==4 then

		textb33.isVisible = false

	end
--water[a] = math.min(water[a] + 200, waterMax[a])
end

function waterOn(a)
	land[a] = land[a] +20
end
function waterOnl(a)
--local function b(a) land[a] = land[a] +20 end
	if a==1 then
		if water[2]>200 then
		textG11.isVisible=true
		water[2]=water[2]-200
		allwater = allwater +200
		end
	end
		if a==2 then
		if water[2]>200 then
		textG22.isVisible=true
		water[2]=water[2]-200
		allwater = allwater +200
		end
	end
		if a==3 then
		if water[3]>200 then
		textG33.isVisible=true
		water[3]=water[3]-200
		allwater = allwater +200
		end
	end
		if a==4 then
		if water[3]>200 then
		textG44.isVisible=true
		water[3]=water[3]-200
		allwater = allwater +200
		end
	end
		if a==5 then
		if water[4]>200 then
		textG55.isVisible=true
		water[4]=water[4]-200
		allwater = allwater +200
		end
	end
		if a==6 then
		if water[4]>200 then
		textG66.isVisible=true
		water[4]=water[4]-200
		allwater = allwater +200
		end
	end
end
function waterOnll(a)

	if a==1 then
		textG11.isVisible=true
	end
	if a==2 then
		textG22.isVisible=true
	end

		if a==3 then

		textG33.isVisible=true

		
		end

		if a==4 then

		textG44.isVisible=true

		
		end

		if a==5 then

		textG55.isVisible=true

		
		end
		if a==6 then

		textG66.isVisible=true

		end
	
end
function waterOff(a)
	if a==1 then
		textG11.isVisible=false
	end
		if a==2 then
		textG22.isVisible=false
	end
		if a==3 then
		textG33.isVisible=false
	end
		if a==4 then
		textG44.isVisible=false
	end
		if a==5 then
		textG55.isVisible=false
	end
		if a==6 then
		textG66.isVisible=false
	end
end
function timeupd()
	    nameScenePr = composer.getSceneName( "current" )
		composer.gotoScene("time")
end


function timetoupd(event)
--countHour = c3
local s
s = countHour-upd

if s>0 then
--timeupd()

	textG111.isVisible=false
	textG111.text = [[Влажность: ]]..land[1]..[[%]]
	textG111.isVisible=true
	
	textG222.isVisible=false
	textG222.text = [[Влажность: ]]..land[2]..[[%]]
	textG222.isVisible=true
	
	textG333.isVisible=false
	textG333.text = [[Влажность: ]]..land[3]..[[%]]
	textG333.isVisible=true	
	
	textG444.isVisible=false
	textG444.text = [[Влажность: ]]..land[4]..[[%]]
	textG444.isVisible=true
	
	textG555.isVisible=false
	textG555.text = [[Влажность: ]]..land[5]..[[%]]
	textG555.isVisible=true	
	
	textG666.isVisible=false
	textG666.text = [[Влажность: ]]..land[6]..[[%]]
	textG666.isVisible=true	
	

--timeupd()	
	local d = {0;0;0;0;0;0}
	local num = 0
	for i = 1, 6 do
		if land[i]<landMin[i] then
		waterOnl(i)
		num = num + 1
		d[num]=i
		elseif land[i]>landMin[i] then
		waterOff(i)
		end
	end
timeupd()
	if num > 0 then
	for i = 1,num do
	local c=d[i]
	waterOn(c)
	waterOnll(c)
	end
	end
	for i = 1, 4 do
		if water[i]<waterMax[i] then
		waterB(i)
		elseif water[i]==waterMax[i] then
		waterBf(i)
		end
	end
	
--timeupd()	

	

upd = upd + 1	
	
end	
	
end
Runtime:addEventListener("lateUpdate", timetoupd)






















--composer.removeScene('menu')
	
	--[[local function timeUpScr()
	    nameScenePr = composer.getSceneName( "current" )
		composer.gotoScene("time")
	end
	local function tt()
			date1.isVisible=false
			date1.text = os.date('%X')
			date1.isVisible=true
	end
		
		for i=1,10000000 do
			timer.performWithDelay( 1000, tt )
		end]]
end

-- show()

-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
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
