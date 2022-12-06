local nmbBg = 4
local leftBG = 1

function onCreate()
  makeLuaSprite('BG', 'darkForest/BG', 0, 0)
  setScrollFactor('BG', 0, 1)
  scaleObject('BG', 6, 6)
  setProperty('BG.x', -500)
  setProperty('BG.y', -300)
  setProperty('BG.antialiasing', false)
  
  addLuaSprite('BG', false)

  for i = 0, nmbBg do
    makeLuaSprite('Tree'..i, 'darkForest/Trees', 0, 0)
    scaleObject('Tree'..i, 6, 6)
    setProperty('Tree'..i..'.x', (i-leftBG) * getProperty('Tree0.width'))
    setProperty('Tree'..i..'.y', -300)
    setProperty('Tree'..i..'.antialiasing', false)
    addLuaSprite('Tree'..i, false)
  end

  for i = 0, nmbBg do
    makeLuaSprite('Floor'..i, 'darkForest/Floor', 0, 0)
    scaleObject('Floor'..i, 6, 6)
    setProperty('Floor'..i..'.x', (i-leftBG) * getProperty('Floor0.width'))
    setProperty('Floor'..i..'.y', -150)
    setProperty('Floor'..i..'.antialiasing', false)
    addLuaSprite('Floor'..i, false)
  end
end

local moveSpeed = 1.5
local bgSpeed = 2500
local floorSpeed = 4500

function onUpdatePost(elapsed)
  for i = 0, nmbBg do
    setProperty('Tree'..i..'.x', getProperty('Tree'..i..'.x') - (elapsed*bgSpeed/moveSpeed))
  end
  if getProperty('Tree0.x') < -getProperty('Tree0.width')*(leftBG+1) then
    for i = 0, nmbBg do
      setProperty('Tree'..i..'.x', (i-leftBG) * getProperty('Tree0.width'))
    end
  end

  for i = 0, nmbBg do
    setProperty('Floor'..i..'.x', getProperty('Floor'..i..'.x') - (elapsed*floorSpeed/moveSpeed))
  end
  if getProperty('Floor0.x') < -getProperty('Floor0.width')*(leftBG+1) then
    for i = 0, nmbBg do
      setProperty('Floor'..i..'.x', (i-leftBG) * getProperty('Floor0.width'))
    end
  end
end