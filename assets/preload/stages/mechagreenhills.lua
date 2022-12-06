function onCreate()
	-- background shit
	makeLuaSprite('mechabg', 'mechabg', -800, -250);
	setScrollFactor('mechabg', 0.7, 0.7);

	makeAnimatedLuaSprite('fleur', 'fleur', -100,520)
        addAnimationByPrefix('fleur', 'a', 'fleur', 24, true)
	objectPlayAnimation('fleur', 'a', true)
	scaleObject('fleur', 0.9, 0.9);
        setScrollFactor('fleur', 1.0, 1.0);

        makeLuaSprite('mechashit', 'mechashit', -270,-150);
	setScrollFactor('mechashit', 1.0, 1.0);

        makeLuaSprite('mechatree', 'mechatree', -270,-200);
	setScrollFactor('mechatree', 1.2, 1.2);
        
        makeLuaSprite('mechaground', 'mechaground', -110,50);
        scaleObject('mechaground', 0.9, 0.9);
	setScrollFactor('mechaground', 1.0, 1.0);

	makeLuaSprite('mechalmao', 'mechalmao', -450,120);
	setScrollFactor('mechalmao', 1.0, 1.0);

        addLuaSprite('mechabg', false);
        addLuaSprite('mechashit', false);
	addLuaSprite('mechalmao', false);
	addLuaSprite('mechaground', false);
        addLuaSprite('fleur', false);
        addLuaSprite('mechatree', true);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end