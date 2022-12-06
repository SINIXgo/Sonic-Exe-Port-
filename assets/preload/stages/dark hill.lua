function onCreate()
	-- background shit
	makeLuaSprite('bgsonk', 'bgsonk', -700, -550);
	setScrollFactor('bgsonk', 0.8, 0.8);

	makeLuaSprite('groundsonk', 'groundsonk', -600, -350);
	setScrollFactor('groundsonk', 1.0, 1.0);

	makeLuaSprite('blacksonk', 'blacksonk', -650, -250);
	setScrollFactor('blacksonk', 1.0, 1.0);

	addLuaSprite('bgsonk', false);
	addLuaSprite('groundsonk', false);
	addLuaSprite('blacksonk', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end