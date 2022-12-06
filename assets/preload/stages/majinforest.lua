function onCreate()
	-- background shit
	makeLuaSprite('bluemajin', 'bluemajin', -300,-250);
	setScrollFactor('bluemajin', 1.0, 1.0);

        makeAnimatedLuaSprite('majin', 'majin', -400,600)
        addAnimationByPrefix('majin', 'a', 'majinl', 24, true)
	objectPlayAnimation('majin', 'a', true)
	scaleObject('majin', 1.9, 1.9);
        setScrollFactor('majin', 1.0, 1.0);

        makeAnimatedLuaSprite('majin2', 'majin2', 300,100)
        addAnimationByPrefix('majin2', 'a', 'majinl', 24, true)
	objectPlayAnimation('majin2', 'a', true)
	scaleObject('majin2', 1.9, 1.9);
        setScrollFactor('majin2', 1.0, 1.0);

        makeLuaSprite('frontmajin', 'frontmajin', -270,-150);
	setScrollFactor('frontmajin', 1.0, 1.0);
        
        makeLuaSprite('bluetree', 'bluetree', -310,-150);
	setScrollFactor('bluetree', 1.0, 1.0);

	makeLuaSprite('majinground', 'majinground', -200,-220);
	setScrollFactor('gfirst', 1.5, 1.5);

        addLuaSprite('majinground', false);
	addLuaSprite('bluemajin', false);
        addLuaSprite('majin2', false);
        addLuaSprite('bluetree', false);
        addLuaSprite('majin', false);
	addLuaSprite('frontmajin', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end