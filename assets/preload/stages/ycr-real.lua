function onCreate()
	-- background shit
	makeLuaSprite('YCRrealSky', 'YCRrealSky', -500, -250);
	setScrollFactor('YCRrealSky', 0.7, 0.7);

	makeLuaSprite('YCRrealStage', 'YCRrealStage', -650, -260);
	setScrollFactor('YCRrealStage', 1, 1);

	addLuaSprite('YCRrealSky', false);
	addLuaSprite('YCRrealStage', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end