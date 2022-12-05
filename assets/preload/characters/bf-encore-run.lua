function onCreatePost()
    addLegs()
end

function onUpdate()
    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
        objectPlayAnimation('legs', 'run', false, false, getProperty('legs.animation.curAnim.curFrame'))
    end
end

function noteMiss()
    objectPlayAnimation('legs', 'miss', false, false, getProperty('legs.animation.curAnim.curFrame'))
end

function goodNoteHit()
    objectPlayAnimation('legs', 'run', false, false, getProperty('legs.animation.curAnim.curFrame'))
end

function addLegs()
    removeLuaSprite('legs')
    makeAnimatedLuaSprite('legs', 'characters/bf_run_legs', 0, 0)
    addAnimationByPrefix('legs', 'run', 'run', 42, true)
    addAnimationByPrefix('legs', 'miss', 'miss', 42, true)
    objectPlayAnimation('legs', 'run', true)
    scaleObject('legs', 6, 6, false)
    setProperty('legs.antialiasing', false)
    setProperty('legs.x', getProperty('boyfriend.x')-140)
    setProperty('legs.y', getProperty('boyfriend.y')-130)
    addLuaSprite('legs', true)
end