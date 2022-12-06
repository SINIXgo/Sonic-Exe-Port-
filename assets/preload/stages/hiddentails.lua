function onCreate()
	-- background shit
	makeLuaSprite('hiddenblack', 'hiddenblack', -900, -950);
	setScrollFactor('hiddenblack', 0.8, 0.8);

	makeLuaSprite('hiddenshit', 'hiddenshit', 150, -350);
        scaleObject('hiddenshit', 2.2, 2.2);
	setScrollFactor('hiddenshit', 0.8, 0.8);

	makeLuaSprite('hiddenrock', 'hiddenrock', -200, 350);
        scaleObject('hiddenrock', 2.2, 2.2);
	setScrollFactor('hiddenrock', 1.0, 1.0);

	makeLuaSprite('hiddenclouds', 'hiddenclouds', -250, -150);
        scaleObject('hiddenclouds', 2.5, 2.5);
	setScrollFactor('hiddenclouds', 1.0, 1.0);

	makeLuaSprite('hiddenfloor', 'hiddenfloor', -500, 550);
        scaleObject('hiddenfloor', 2.2, 2.2);
	setScrollFactor('hiddenfloor', 0.8, 0.8);

	addLuaSprite('hiddenblack', false);
        addLuaSprite('hiddenclouds', false);
	addLuaSprite('hiddenshit', false);
	addLuaSprite('hiddenrock', false);
	addLuaSprite('hiddenfloor', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end