function onGameOverStart()
    setPropertyFromClass('GameOverSubstate', 'give up touls', 'f');
    
	makeLuaText('CountDown', '10', 650, 300, 30)
	setTextAlignment('CountDown', 'center')
	setObjectCamera('CountDown', 'other')
	setTextSize('CountDown', 70)
	addLuaText('CountDown')

    runTimer('CountDown', 1, 10)
end

function onTimerCompleted(d, loops, loopsleft)
    if d == 'CountDown' then
        if loopsleft == 9 then
            setTextString('CountDown', 'continue ?')
        elseif loopsleft == 8 then
            setTextString('CountDown', 'continue ?')
        elseif loopsleft == 7 then
            setTextString('CountDown', 'continue ?')
        elseif loopsleft == 6 then
            setTextString('CountDown', 'continue ?')
        elseif loopsleft == 5 then
            setTextString('CountDown', 'continue ?')
        elseif loopsleft == 4 then
            setTextString('CountDown', 'continue ?')
        elseif loopsleft == 3 then
            setTextString('CountDown', 'continue ?')
            setTextColor('CountDown', '0xFFEB4034')
        elseif loopsleft == 2 then
            setTextString('CountDown', 'continue ?')
        elseif loopsleft == 1 then
            setTextString('CountDown', 'continue ?')
        elseif loopsleft == 0 then
            setTextString('CountDown', 'continue ?')
       elseif loopsleft == 0 then
            setTextString('CountDown', 'continue ?')
            loadSong('dad-battle', difficulty)
        end
    end
end

