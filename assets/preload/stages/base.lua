function onCreate()
	-- background shit
	makeLuaSprite('metalGROUND', 'metalGROUND', -300,-250);
	setScrollFactor('metalGROUND', 1.0, 1.0);

        makeAnimatedLuaSprite('light', 'light', 115,60)
        addAnimationByPrefix('light', 'a', 'lumf', 24, true)
	objectPlayAnimation('light', 'a', true)
	scaleObject('light', 1.0, 1.0);
        setScrollFactor('light', 1.0, 1.0);

        makeAnimatedLuaSprite('brouillard', 'brouillard', -300,-200)
        addAnimationByPrefix('brouillard', 'a', 'brouillard ', 24, true)
	objectPlayAnimation('brouillard', 'a', true)
	scaleObject('brouillard', 1.2, 1.2);
        setScrollFactor('brouillard', 1.0, 1.0);

        makeAnimatedLuaSprite('smoke', 'smoke', 1250,700)
        addAnimationByPrefix('smoke', 'a', 'smokes', 24, true)
	objectPlayAnimation('smoke', 'a', true)
	scaleObject('smoke', 1.0, 1.0);
        setScrollFactor('smoke', 1.0, 1.0);

        makeLuaSprite('metalBG', 'metalBG', -270,-450);
	setScrollFactor('metalBG', 1.0, 1.0);
        
        makeLuaSprite('metalBADNIK', 'metalBADNIK', -310,-200);
	setScrollFactor('metalBADNIK', 1.0, 1.0);

        addLuaSprite('metalBG', false);
	addLuaSprite('light', false);
        addLuaSprite('metalBADNIK', false);
        addLuaSprite('metalGROUND', false);
        addLuaSprite('smoke', false);
	addLuaSprite('brouillard', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end