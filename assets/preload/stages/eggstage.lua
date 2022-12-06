function onCreate()
	-- background shit

	makeLuaSprite('eggWall', 'eggWall', -600, -300);
	setScrollFactor('eggWall', 0.9, 0.9);

	makeLuaSprite('eggStage', 'eggStage', -650, -220);
	setScrollFactor('eggStage', 1.0, 1.0);

	addLuaSprite('eggWall', false);
	addLuaSprite('eggStage', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end