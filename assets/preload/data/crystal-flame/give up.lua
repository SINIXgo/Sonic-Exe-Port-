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
            setTextString('CountDown', '9')
        elseif loopsleft == 8 then
            setTextString('CountDown', '8')
        elseif loopsleft == 7 then
            setTextString('CountDown', '7')
        elseif loopsleft == 6 then
            setTextString('CountDown', '6')
        elseif loopsleft == 5 then
            setTextString('CountDown', '5')
        elseif loopsleft == 4 then
            setTextString('CountDown', '4')
        elseif loopsleft == 3 then
            setTextString('CountDown', '3')
            setTextColor('CountDown', '0xFFEB4034')
        elseif loopsleft == 2 then
            setTextString('CountDown', '2')
        elseif loopsleft == 1 then
            setTextString('CountDown', '1')
        elseif loopsleft == 0 then
            setTextString('CountDown', '0')
            loadSong('hydrocity', difficulty)
        end
    end
end

