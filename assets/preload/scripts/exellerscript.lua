function onCreate()
	counter = getPropertyFromClass('PlayState', 'deathCounter');
	if counter == 0 then --quite long but too lazy to make an actual smooth code
		makeLuaSprite('progress', 'progress', 1190, 620);
		scaleObject('progress', 0.05, 0.02);
	end
	if counter == 1 then
		makeLuaSprite('progress', 'progress', 1190, 540);
		scaleObject('progress', 0.05, 0.10);
	end
	if counter == 2 then
		makeLuaSprite('progress', 'progress', 1190, 490);
		scaleObject('progress', 0.05, 0.15);
	end
	if counter == 3 then
		makeLuaSprite('progress', 'progress', 1190, 450);
		scaleObject('progress', 0.05, 0.185);
	end
	if counter == 4 then
		makeLuaSprite('progress', 'progress', 1190, 420);
		scaleObject('progress', 0.05, 0.22);
	end
	if counter == 5 then
		makeLuaSprite('progress', 'progress', 1190, 380);
		scaleObject('progress', 0.05, 0.26);
	end
	if counter == 6 then
		makeLuaSprite('progress', 'progress', 1190, 350);
		scaleObject('progress', 0.05, 0.3);
	end
	if counter == 7 then
		makeLuaSprite('progress', 'progress', 1190, 300);
		scaleObject('progress', 0.05, 0.35);
	end
	if counter >= 8 then
		makeLuaSprite('progress', 'progress', 1190, 240);
		scaleObject('progress', 0.05, 0.4);
	end --end of long af lazy code 
	setScrollFactor('progress', 0, 0);
	addLuaSprite('progress', true);
	setObjectCamera('progress', 'camHUD');
	makeLuaSprite('bar', 'bar', 1090, 160);
	setScrollFactor('bar', 0, 0);
	scaleObject('bar', 0.5, 0.5);
	addLuaSprite('bar', true);
	setObjectCamera('bar', 'camHUD');
	makeAnimatedLuaSprite('boo', 'boo', -250, -100);
	setScrollFactor('boo', 0, 0);
	scaleObject('boo', 0.5, 0.5);
	setObjectCamera('boo', 'camOTHER');

	if counter >= 8 then --when your death is coming
		runTimer("timer", 0.01, 0); --hehe the counter is only 0.01 seconds but forever so it will call 100 "onTimerCompleted" /sec ur death is coming o-o
		--debugPrint("everything's working fine !")
	end
	function onCreatePost() --Second file (hope this work) <--I don't understand mate why u put that
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
	setProperty('iconP1.x', 1050)
    setProperty('iconP2.x', 450)
end
end -- I blended two files so yeah it work kinda

function onTimerCompleted(tag, loops, loopsLeft)
	--debugPrint("yeah !") --don't add when ur death is here or else consequences. I told you
	if tag == "timer" then
		if (keyReleased('left') or keyReleased('right') or keyReleased('up') or keyReleased('down')) then --kinda long

			addAnimationByPrefix('boo','boouscared','screa',16,false);
			playSound('sceamer');
			addLuaSprite('boo', true);
			setProperty('vocals.volume', 0) --it's not working yet
			setProperty('inst.volume', 0) --idk why
			runTimer("da-end", 1.71426, 1);
		end
	end
	if tag == "da-end" then
		setProperty('dad', 'dokfgkrto') --ouch, it will just crash lmao and the music will BEE . BOO . *death*
	end
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
   setPropertyFromClass('ClientPrefs', 'timeBarType', prevBarType) --yes
end