function onCreate()
  makeLuaSprite('stardustBg', 'images/bgi', -1000, -1100)
  setLuaSpriteScrollFactor('bgi', 0.5, 0.9)

  makeLuaSprite('stardustFloor', 'images/floor', -1000, -1460)
  setLuaSpriteScrollFactor('floor', 1, 1)
  
  makeLuaSprite('stardustFloor2', 'images/tree', 3600, -1460)
  setLuaSpriteScrollFactor('tree', 1, 1)

end

function onEvent(name, v1, v2)
  if name == 'StageUpdate' then
    addLuaSprite('bgi', false)
    addLuaSprite('tree', false)
    addLuaSprite('floor', true)
  end
  if name == 'Speed' then
    runTimer('changeSpeed', 0.02)
  end
end

local moveSpeed = 1.5

function onUpdatePost(elapsed)
  bgSpeed = 2500
  setProperty('bgi.x', getProperty('stardustBg.x') - (elapsed*bgSpeed/moveSpeed))
  setProperty('bgi.x', getProperty('stardustBg2.x') - (elapsed*bgSpeed/moveSpeed))
  if getProperty('bgi.x') < -5600 then
    setProperty('bgi.x', -1000)
    setProperty('bgi.x', 3600)
  end

  bgSpeed = 2500
  setProperty('tree.x', getProperty('stardustBg.x') - (elapsed*bgSpeed/moveSpeed))
  setProperty('tree.x', getProperty('stardustBg2.x') - (elapsed*bgSpeed/moveSpeed))
  if getProperty('tree.x') < -5600 then
    setProperty('tree.x', -1000)
    setProperty('tree.x', 3600)
  end

  floorSpeed = 4500
  setProperty('floor.x', getProperty('stardustFloor.x') - (elapsed*floorSpeed/moveSpeed))
  setProperty('floor.x', getProperty('stardustFloor2.x') - (elapsed*floorSpeed/moveSpeed))
  if getProperty('floor.x') < -5600 then
    setProperty('floor.x', -1000)
    setProperty('floor.x', 3600)
  end
end

function onTimerCompleted(tag, loops, loopsLeft)
  if tag == 'changeSpeed' then
    moveSpeed = moveSpeed - 0.02
    if moveSpeed > 0.8 then
      runTimer('changeSpeed', 0.02)
    end
  end
end