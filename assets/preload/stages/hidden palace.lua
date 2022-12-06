function onCreate()
	-- background shit
	makeLuaSprite('gback', 'gback', -800, -250);
	setScrollFactor('gback', 0.7, 0.7);

	makeAnimatedLuaSprite('water', 'water', 400,400)
        addAnimationByPrefix('water', 'a', 'lall', 24, true)
	objectPlayAnimation('water', 'a', true)
	scaleObject('water', 2.0, 2.0);
        setScrollFactor('water', 1.0, 1.0);

        makeAnimatedLuaSprite('emerald', 'emerald', 300,500)
        addAnimationByPrefix('emerald', 'a', 'emerald shiny', 24, true)
	objectPlayAnimation('emerald', 'a', true)
	scaleObject('emerald', 1.7, 1.7);
        setScrollFactor('emerald', 1.0, 1.0);

        makeLuaSprite('gwall', 'gwall', -270,-150);
	setScrollFactor('gwall', 1.0, 1.0);
        
        makeLuaSprite('oground', 'oground', -410,-150);
	setScrollFactor('oground', 1.0, 1.0);

	makeLuaSprite('gfirst', 'gfirst', 200,320);
	setScrollFactor('gfirst', 1.5, 1.5);

        addLuaSprite('gback', false);
	addLuaSprite('water', false);
	addLuaSprite('gwall', false);
        addLuaSprite('oground', false);
        addLuaSprite('flowers', false);
	addLuaSprite('gfirst', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end