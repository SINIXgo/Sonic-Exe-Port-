function onCreate()
	-- background shit
	makeLuaSprite('BluePlaceWall', 'BluePlaceWall', -500, -250);
	setScrollFactor('BluePlaceWall', 0.8, 0.8);

	makeLuaSprite('BluePlaceFloorlol', 'BluePlaceFloorlol', -650, -250);
	setScrollFactor('BluePlaceFloorlol', 1.0, 1.0);

	addLuaSprite('BluePlaceWall', false);
	addLuaSprite('BluePlaceFloorlol', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end