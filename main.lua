-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
-- подключаем библиотеки
composer = require( "composer" )
widget = require( "widget" )


nameScenePr="menu"

display.setStatusBar(display.HiddenStatusBar)

-- Фон сразу на все странички
display.setDefault("background", 185/255, 255/255, 211/255 )
display.setDefault( "fillColor", 0 )


-- Кнопочка меню
function gotoMenu()
	composer.gotoScene( "menu" )
end
buttonMenu = widget.newButton(
    {
        width = 60,
        height = 60,
        defaultFile = "img/menu.png",
        overFile = "img/menu.png",
		onEvent = gotoMenu
    }
)
buttonMenu.x, buttonMenu.y = 40, 40


allwater = 0 --всего затрачено воды на полив
-- Шаблон оформления текста
optionsText = 
{
	text = "Текст",
    x = display.contentCenterX,
    width = display.contentWidth - 50,
--    font = "Inter-LightItalic.otf",
	font = "LinLibertine.ttf",
    fontSize = 36
}
	optionsTime = 
{
    text = os.date('Вр. сист. %c'),
    --x = display.contentWidth - 50,
	y = buttonMenu.y,
    --width = 120,
    font = "LinLibertine.ttf",
    fontSize = 36
}
date1 = display.newText( optionsTime )
date1.x = display.contentCenterX 
date1.y = buttonMenu.y+buttonMenu.height/2+date1.height/2 +15

date2 = display.newText( optionsTime )
date2.text = "Вр. сист: xчдн, xсч, xчмин, xчс"
date2.x = display.contentCenterX 
date2.y = date1.y + date1.height/2 + date2.height/2 
timeopen=os.time()
countHour = 0
countHourM = 0
upd = -1
minut = 0
function printTime( event )
local surname = composer.getSceneName( "current" )

    date1.isVisible=false
	date1.text = os.date('Тек. вр. %c')
	date1.isVisible=true
	date2.isVisible=false
	local c1 = 290*os.difftime( os.time(), timeopen)
	local c2 = 0
	local c3 = 0
	local c4 = 0
	avar()
	
	while (c1>=60) do c1=c1-60 c2=c2+1 minut = c2 end
	while (c2>=60) do c2=c2-60 c3=c3+1 countHour=c3 end
	while (c3>=24) do c3=c3-24 c4=c4+1 end

	date2.text = "Вр. сист: "..c4.."дн, "..c3.."ч, "..c2.."м, "..c1.."с"--c2( 'Вр. сист. %c' )
	date2.isVisible=true
	if surname=="menu" then
	date1.isVisible=false
	date2.isVisible=false
	end
end
Runtime:addEventListener("lateUpdate", printTime)

water = { 630; 120; 130; 140}
waterMax = { 2000; 400; 500; 700}

land = { 66; 74; 53; 62; 41; 38}
landMin = { 65; 65; 50; 50; 30; 30}
landMax = { 85; 85; 65; 65; 45; 45}

function everHour(event)
--countHour = c3
local s
s = countHour-countHourM
if s>0 then
	for i = 1, 6 do
		land[i] = land[i] - math.random(1, 5)
		
	end

countHourM = countHourM + 1	
	
end	
	
end
Runtime:addEventListener("lateUpdate", everHour)




function confirm (someText, ifYes) 
	but = ifYes
	textPopup = someText
		composer.showOverlay("confirm", {isModal = true, time = 150000});
	textPopup = nil
	--timer.performWithDelay(clear, 15000)
end

--функция вызова аварий. При возникновении всё остальное ставится на паузу, но потом нагоняется
--по факту вызывается ~3-5раз/с с каждым пересчетом времени для времени моделирования
function avar()
--countHour = c3
local s = math.random(50000)

if s==1 then Runtime:removeEventListener("lateUpdate", printTime) confirm('Прорвало трубу между резервуаром и первой бочкой', 'Вызвать мастера') end
if s==2 then Runtime:removeEventListener("lateUpdate", printTime) confirm('Прорвало трубу между резервуаром и второй бочкой', 'Вызвать мастера') end
if s==3 then Runtime:removeEventListener("lateUpdate", printTime) confirm('Прорвало трубу между резервуаром и третьей бочкой', 'Вызвать мастера') end
if s==4 then Runtime:removeEventListener("lateUpdate", printTime) confirm('Прорвало трубу между резервуаром и четвертой бочкой', 'Вызвать мастера') end
if s==5 then Runtime:removeEventListener("lateUpdate", printTime) confirm('Прорвало трубу между первой бочкой и первой грядкой', 'Вызвать мастера') end
if s==6 then Runtime:removeEventListener("lateUpdate", printTime) confirm('Прорвало трубу между первой бочкой и второй грядкой', 'Вызвать мастера') end
if s==7 then Runtime:removeEventListener("lateUpdate", printTime) confirm('Прорвало трубу между второй бочкой и третьей грядкой', 'Вызвать мастера') end
if s==8 then Runtime:removeEventListener("lateUpdate", printTime) confirm('Прорвало трубу между второй бочкой и четвертой грядкой', 'Вызвать мастера') end
if s==9 then Runtime:removeEventListener("lateUpdate", printTime) confirm('Прорвало трубу между третьей бочкой и пятой грядкой', 'Вызвать мастера') end
if s==10 then Runtime:removeEventListener("lateUpdate", printTime) confirm('Прорвало трубу между третьей бочкой и шестой грядкой', 'Вызвать мастера') end
if s>10 then if s<=25 then Runtime:removeEventListener("lateUpdate", printTime) confirm('Отключило электричество', 'Вызвать мастера') end end
if s==26 then Runtime:removeEventListener("lateUpdate", printTime) confirm('Сломался насос у первой бочки', 'Вызвать мастера') end
if s==27 then Runtime:removeEventListener("lateUpdate", printTime) confirm('Сломался насос у второй бочки', 'Вызвать мастера') end
if s==28 then Runtime:removeEventListener("lateUpdate", printTime) confirm('Сломался насос у третьей бочки', 'Вызвать мастера') end
if s==29 then Runtime:removeEventListener("lateUpdate", printTime) confirm('Сломался насос у главного резерзвуара', 'Вызвать мастера') end

	
end

















-- Шаблон оформления кнопки
optionsButton = 
{
	shape = 'rect', -- Форма
	label = "1",
	labelAlign = "center",
	emboss = true,
	strokeColor = { default={ 0 }, over={ 0 } },
	strokeWidth = 2,
--	font = "Inter-LightItalic.otf",
	font = "LinLibertine.ttf",
	width = display.contentWidth - 20, height = 100, -- Размеры
	left = 10,
	fontSize = 32, -- Размер шрифта
	fillColor = { default={ 1 }, over={ 1 } }, -- Цвет
	labelColor = { default={ 0 }, over={ 0 } }, -- Цвет текста
}


composer.gotoScene( "menu" )
-- добавляем функции
--require 'water'
--require 'func.character'

--require 'func.popup'
--require 'func.saveLoad'





























--composer.gotoScene( "scene.all.1_began" )