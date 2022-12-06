function onCreate()
    realsongname = songName:gsub("%-", " ")
    --
    makeLuaSprite('black', 'black')
    addLuaSprite('black')
    setObjectCamera('black', 'other')
    setObjectOrder('black', 99999)
    --
    makeLuaSprite('zonecircle', 'zonecircle', 1500)
    addLuaSprite('zonecircle')
    setObjectCamera('zonecircle', 'other')
    setProperty('zonecircle.scale.x', 0.5)
    setProperty('zonecircle.scale.y', 0.5)
    screenCenter('zonecircle', 'y')
    setObjectOrder('zonecircle', 99999)
    --
    makeLuaText('SongNameZoneShadow', 'SONG', -1000, 50)
    setTextSize('SongNameZoneShadow', 70)
    setTextFont('SongNameZoneShadow', 'Zone.ttf')
    setTextBorder('SongNameZoneShadow', '0')
    setTextColor('SongNameZoneShadow', '000000')
    setObjectCamera('SongNameZoneShadow', 'other')
    setObjectOrder('SongNameZoneShadow', 99999)
    setProperty('SongNameZoneShadow.x', -1005)
    setProperty('SongNameZoneShadow.y', 305)
    --
    makeLuaText('SongNameZone', 'SONG', -1000, 50)
    setTextSize('SongNameZone', 70)
    setTextFont('SongNameZone', 'Zone.ttf')
    setTextBorder('SongNameZone', '0')
    setObjectCamera('SongNameZone', 'other')
    setObjectOrder('SongNameZone', 99999)
    setProperty('SongNameZone.x', -1000)
    setProperty('SongNameZone.y', 300)
    --
    setTextString('SongNameZone', realsongname)
    setTextString('SongNameZoneShadow', realsongname)
    --
    makeLuaSprite('Week', 'Week')
    addLuaSprite('Week')
    setObjectCamera('Week', 'other')
    setObjectOrder('Week', 99999)
    setProperty('Week.y', 380)
    setProperty('Week.x', 2300)
    setProperty('Week.scale.y', 0.5)
    setProperty('Week.scale.x', 0.5)
    --
    makeLuaText('WeekCountShadow', '1', -1000, 50)
    setTextSize('WeekCountShadow', 100)
    setTextFont('WeekCountShadow', 'HUD.ttf')
    setTextBorder('WeekCountShadow', '0')
    setTextColor('WeekCountShadow', '000000')
    setObjectCamera('WeekCountShadow', 'other')
    setObjectOrder('WeekCountShadow', 99999)
    setProperty('WeekCountShadow.x', 2505)
    setProperty('WeekCountShadow.y', 335)
    --
    makeLuaText('WeekCount', '1', -1000, 50)
    setTextSize('WeekCount', 100)
    setTextFont('WeekCount', 'HUD.ttf')
    setTextBorder('WeekCount', '0')
    setTextColor('WeekCount', 'FFFF00')
    setObjectCamera('WeekCount', 'other')
    setObjectOrder('WeekCount', 99999)
    setProperty('WeekCount.x', 2500)
    setProperty('WeekCount.y', 330)
    --
    setTextString('WeekCount', weekRaw)
    setTextString('WeekCountShadow', weekRaw)
end

function onCreatePost()
    doTweenX('ZoneCircleMove', 'zonecircle', 500, 0.5, 'linear')
    doTweenX('SongNameZoneMove', 'SongNameZone', 820 - (getProperty('SongNameZone.width')), 0.5, 'linear')
    doTweenX('SongNameZoneShadowMove', 'SongNameZoneShadow', 820 - (getProperty('SongNameZone.width')) + 5, 0.5, 'linear')
    doTweenX('WeekMove', 'Week', 580, 0.75, 'linear')
    doTweenX('WeekCountMove', 'WeekCount', 825, 0.75, 'linear')
    doTweenX('WeekCountShadowMove', 'WeekCountShadow', 830, 0.75, 'linear')
end

function onBeatHit()
    if curBeat == 1 then
        doTweenAlpha('blackfadeout', 'black', 0, 0.5, 'linear')
    end
    if curBeat == 3 then
        doTweenX('ZoneCircleMoveBack', 'zonecircle', 2500, 0.5, 'linear')
        doTweenX('SongNameZoneMoveBack', 'SongNameZone', -2000, 0.5, 'linear')
        doTweenX('SongNameZoneShadowMoveBack', 'SongNameZoneShadow', -2005, 0.5, 'linear')
        doTweenX('WeekMoveBack', 'Week', 2500, 0.5, 'linear')
        doTweenX('WeekCountMoveBack', 'WeekCount', 2800, 0.5, 'linear')
        doTweenX('WeekCountShadowMoveBack', 'WeekCountShadow', 2800, 0.5, 'linear')
    end
end