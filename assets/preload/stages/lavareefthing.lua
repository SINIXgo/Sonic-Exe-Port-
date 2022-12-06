function onCreate()
	-- background shit
	makeLuaSprite('LavaNight', 'LavaNight', -700, -250);
	setScrollFactor('LavaNight', 0.7, 0.7);

	makeLuaSprite('LavaMountains', 'LavaMountains', -650, -250);
	setScrollFactor('LavaMountains', 0.8, 0.8);

	makeLuaSprite('LavaStage', 'LavaStage', -600, -225);
	setScrollFactor('LavaStage', 1, 1);

	addLuaSprite('LavaNight', false);
	addLuaSprite('LavaMountains', false);
	addLuaSprite('LavaStage', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end