function onCreate()
	-- background shit
	makeLuaSprite('HydroBG','HydroBG', -1900,-1050);
        scaleObject('HydroBG', 1.4, 1.4);
    setScrollFactor('HydroBG', 0.8, 0.8);

	makeLuaSprite('HydroStage','HydroStage', -2000,-950);
    scaleObject('HydroStage', 1.3, 1.3);

	makeAnimatedLuaSprite('Rings', 'Rings', -1050,-300)
    addAnimationByPrefix('Rings', 'a', 'ring', 24, true)
	objectPlayAnimation('Rings', 'a', true)
	scaleObject('Rings', 0.8, 0.8);
    setScrollFactor('Rings', 1, 1);

	addLuaSprite('HydroBG', false);
	addLuaSprite('HydroStage', false);
	addLuaSprite('Rings', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end