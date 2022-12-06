function onCreatePost()
    prevBarType = getPropertyFromClass('ClientPrefs', 'timeBarType')
	setPropertyFromClass('ClientPrefs', 'timeBarType', 'Time Elapsed')

    daFont = 'sonic-1-hud-font.ttf'

    makeLuaText('score', 'SCORE', 0, 30, 635)
    setTextFont('score', daFont)
    setTextSize('score', 45)
    setTextColor('score', 'FFFF00')
    setTextBorder('score', 4, '384604', 'shadow')
    setObjectCamera('score', 'HUD')
    addLuaText('score')  
    
    makeLuaText('scorecount', '', 0, 30, 635)
    setTextFont('scorecount', daFont)
    setTextWidth('scorecount', 325)
    setTextSize('scorecount', 45)
    setTextBorder('scorecount', 4, '454944', 'shadow')
    setTextAlignment('scorecount', 'right')
    setObjectCamera('scorecount', 'HUD')
    addLuaText('scorecount')

    makeLuaText('time', 'TIME', 0, 30, 595)
    setTextFont('time', daFont)
	setTextSize('time', 45)
    setTextColor('time', 'FFFF00')
    setTextBorder('time', 4, '384604', 'shadow')
    setObjectCamera('time', 'HUD')
    addLuaText('time') 
	
	makeLuaText('timecount', '', 0, 30, 595)
    setTextFont('timecount', daFont)
    setTextWidth('timecount', 325)
    setTextSize('timecount', 45)
    setTextBorder('timecount', 4, '454944', 'shadow')
    setTextAlignment('timecount', 'right')
    setObjectCamera('timecount', 'HUD')
	addLuaText('timecount')
	
	makeLuaText('misses', 'MISSES', 0, 30, 555)
    setTextFont('misses', daFont)
	setTextSize('misses', 45)
	setTextColor('misses', 'FFFF00')
    setTextBorder('misses', 4, '384604', 'shadow')
    setObjectCamera('misses', 'HUD')
	addLuaText('misses')
	
	makeLuaText('missescount', '', 0, 30, 555)
    setTextFont('missescount', daFont)
    setTextWidth('missescount', 325)
	setTextSize('missescount', 45)
    setTextBorder('missescount', 4, '454944', 'shadow')
    setTextAlignment('missescount', 'right')
    setObjectCamera('missescount', 'HUD')
	addLuaText('missescount')

    setTextFont('subTitles', daFont)
    
	setProperty('scoreTxt.visible', 0)
	setProperty('timeBarBG.visible', false)
	setProperty('timeTxt.visible', false)
	setProperty('timeBar.visible', false)
	setProperty('healthBar.x', 530)
    setProperty('subTitles.y', 600)
end

function onUpdate(elapsed)
    if botPlay then
        setTextString('misses', 'BOTPLAY')
        setTextString('missescount', '')
        setProperty('botplayTxt.visible', false)
    else
        setTextString('misses', 'MISSES')
        setTextString('missescount', getProperty('songMisses'))
    end
    setTextString('scorecount', getProperty('songScore'))
    setTextString('timecount', getTextString('timeTxt'))
end 

function onDestroy()
   setPropertyFromClass('ClientPrefs', 'timeBarType', prevBarType)
end