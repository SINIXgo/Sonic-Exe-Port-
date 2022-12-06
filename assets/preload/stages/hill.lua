function onCreate()
	-- background shit
	makeLuaSprite('hillbg', 'hillbg', -500, -250);
        scaleObject('hillbg', 1.8, 1.8);
	setScrollFactor('hillbg', 0.8, 0.8);

	makeLuaSprite('hillmountain', 'hillmountain', -300, -150);
        scaleObject('hillmountain', 1.8, 1.8);
	setScrollFactor('hillmountain', 1.0, 1.0);

	makeLuaSprite('hillground', 'hillground', -350, -250);
        scaleObject('hillground', 1.8, 1.8);
	setScrollFactor('hillground', 1.0, 1.0);

	makeLuaSprite('hillrock', 'hillrock', -300, -250);
        scaleObject('hillrock', 1.8, 1.8);
	setScrollFactor('hillrock', 1.0, 1.0);

	addLuaSprite('hillbg', false);
	addLuaSprite('hillmountain', false);
	addLuaSprite('hillground', false);
	addLuaSprite('hillrock', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end