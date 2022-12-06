function onCreate()
	-- From Tomy, kill me pls

	makeLuaSprite('BG', 'hiddenPalace/BG', -400, -200)
        scaleObject('BG', 1.3, 1.3)
	setScrollFactor('BG', 0.7, 0.9)
	
	makeLuaSprite('Flor', 'hiddenPalace/Flor', -300, -200)
        scaleObject('Flor', 1.2, 1.2)

	makeLuaSprite('pixelBG', 'hiddenPalace/BG-pixel', -200, -100)
	setScrollFactor('pixelBG', 0.7, 0.9)
	scaleObject('pixelBG', 6, 6)
	setProperty('pixelBG.antialiasing', false)
	
	makeLuaSprite('pixelFlor', 'hiddenPalace/Flor-pixel', -250, -500)
	scaleObject('pixelFlor', 7, 7)
	setProperty('pixelFlor.antialiasing', false)

	addLuaSprite('BG', false)
	addLuaSprite('Flor', false)
end

function onEvent(event, v1, v2)
	if event == 'pixelStage' then
		addLuaSprite('pixelBG', false)
		addLuaSprite('pixelFlor', false)
		setProperty('defaultCamZoom', 0.7)
		setProperty('camGame.zoom', 0.7)
	end
end