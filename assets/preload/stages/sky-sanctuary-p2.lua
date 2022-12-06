function onCreate()
	-- background shit
	makeLuaSprite('sky background', 'sky background', -600, -250);
        scaleObject('sky background', 1.1, 1.1);
	setScrollFactor('sky background', 0.7, 0.7);

	makeAnimatedLuaSprite('sky platforms', 'sky platforms', 400,550)
        addAnimationByPrefix('sky platforms', 'a', 'sky plat', 24, true)
	objectPlayAnimation('sky platforms', 'a', true)
	scaleObject('sky platforms', 0.6, 0.6);
        setScrollFactor('sky platforms', 1, 1);

	makeLuaSprite('sky sky', 'sky sky', -350, -350);
        scaleObject('sky sky', 1.1, 1.1);
	setScrollFactor('sky_sky', 0.8, 0.8);

	makeLuaSprite('sky clouds', 'sky clouds', -650, 450);
        scaleObject('sky clouds', 0.9, 0.9);
	setScrollFactor('sky_clouds', 0.9, 0.9);

	makeLuaSprite('sky ground', 'sky ground', -1370, 820);
        scaleObject('sky ground', 0.8, 0.8);
	setScrollFactor('sky ground', 1, 1);

	addLuaSprite('sky background', false);
	addLuaSprite('sky platforms', false);
	addLuaSprite('sky sky', false);
	addLuaSprite('sky clouds', false);
	addLuaSprite('sky ground', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end