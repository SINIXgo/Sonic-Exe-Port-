function onCreate()
	-- background shit
	makeLuaSprite('bricks', 'bricks', -700, -550);
	setScrollFactor('bricks', 0.8, 0.8);

	makeLuaSprite('Idkwhattosay', 'Idkwhattosay', -600, -650);
	setScrollFactor('Idkwhattosay', 0.9, 0.9);

        makeAnimatedLuaSprite('therings', 'therings', 1400,-100)
        addAnimationByPrefix('therings', 'a', 'aring', 24, true)
	objectPlayAnimation('therings', 'a', true)
	scaleObject('therings', 1.6, 1.6);
        setScrollFactor('therings', 1.0, 1.0);

	makeLuaSprite('MetroStage', 'MetroStage', -650, -250);
	setScrollFactor('MetroStage', 1.0, 1.0);

	addLuaSprite('bricks', false);
	addLuaSprite('Idkwhattosay', false);
	addLuaSprite('MetroStage', false);
	addLuaSprite('therings', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end