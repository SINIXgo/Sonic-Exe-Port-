function onCreate()
	-- background shit
	makeLuaSprite('MasterEmeraldBackstage', 'MasterEmeraldBackstage', -500, -250);
	setScrollFactor('MasterEmeraldBackstage', 0.7, 0.7);

	makeLuaSprite('MasterEmeraldStage', 'MasterEmeraldStage', -650, -270);
	setScrollFactor('MasterEmeraldStage', 0.9, 0.9);

	addLuaSprite('MasterEmeraldBackstage', false);
	addLuaSprite('MasterEmeraldStage', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end