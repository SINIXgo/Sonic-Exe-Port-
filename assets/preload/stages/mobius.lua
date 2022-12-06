function onCreate()
	-- background shit
	makeLuaSprite('plain', 'plain', -500, -250);
        scaleObject('plain', 1.5, 1.5);
	setScrollFactor('plain', 0.8, 0.8);

	makeLuaSprite('plainground', 'plainground', -400, -250);
        scaleObject('plainground', 1.5, 1.5);
	setScrollFactor('plainground', 1.0, 1.0);

	makeLuaSprite('plaintree', 'plaintree', -250, -250);
        scaleObject('plaintree', 1.5, 1.5);
	setScrollFactor('plaintree', 1.1, 1.1);

	addLuaSprite('plain', false);
	addLuaSprite('plainground', false);
	addLuaSprite('plaintree', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end