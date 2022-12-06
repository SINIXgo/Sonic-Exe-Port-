function onCreate()
	-- background shit
	makeLuaSprite('YCRrealSky', 'YCRrealSky', -1000, -250);
	setScrollFactor('YCRrealSky', 0.7, 0.7);

	makeLuaSprite('YCRrealStage_Bloody', 'YCRrealStage_Bloody', -700, -200);
	setScrollFactor('YCRrealStage_Bloody', 1, 1);

	addLuaSprite('YCRrealSky', false);
	addLuaSprite('YCRrealStage_Bloody', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end