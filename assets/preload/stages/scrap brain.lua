function onCreate()
	-- background shit
	makeLuaSprite('scrap bg', 'scrap bg', -600, -250);
	setScrollFactor('scrap bg', 0.7, 0.7);

        makeLuaSprite('scrap sky', 'scrap sky', -600, -250);
	setScrollFactor('scrap sky', 0.7, 0.7);

	makeAnimatedLuaSprite('scrap platform', 'scrap platform', 400,-300)
        addAnimationByPrefix('scrap platform', 'a', 'Animated BG', 24, true)
	objectPlayAnimation('scrap platform', 'a', true)
	scaleObject('scrap platform', 0.6, 0.6);
        setScrollFactor('scrap platform', 0.7, 0.7);

        makeAnimatedLuaSprite('scrap wall', 'scrap wall', 2000,-100)
        addAnimationByPrefix('scrap wall', 'a', 'uyo', 24, true)
	objectPlayAnimation('scrap wall', 'a', true)
	scaleObject('scrap wall', 0.6, 0.6);
        setScrollFactor('scrap wall', 0.7, 0.7);

	makeLuaSprite('scrap ground', 'scrap ground', -410,-150);
	setScrollFactor('scrap ground', 1.0, 1.0);

	addLuaSprite('scrap bg', false);
	addLuaSprite('scrap sky', false);
	addLuaSprite('scrap platform', false);
        addLuaSprite('scrap wall', false);
	addLuaSprite('scrap ground', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end