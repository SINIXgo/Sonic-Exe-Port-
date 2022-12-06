function onCreate()
	-- background shit
	makeLuaSprite('AnotherblueSky', 'AnotherblueSky', -500, -250);
	setScrollFactor('AnotherblueSky', 0.7, 0.7);

	makeLuaSprite('bluemetalStage', 'bluemetalStage', -650, -180);
	setScrollFactor('bluemetalStage', 1, 1);

	addLuaSprite('AnotherblueSky', false);
	addLuaSprite('bluemetalStage', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end