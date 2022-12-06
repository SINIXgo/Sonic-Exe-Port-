local width = 900
local spriteName = "floor" 
local spriteName2 = "tree" 
local spriteName3 = "bg" 

function onCreate()
	makeLuaSprite("bg1", spriteName, -350, -750) --floor
	width = getProperty("bg1.width")
	scaleObject('bg1', 8, 9);
	setProperty('bg1.antialiasing', false);

	makeLuaSprite("bg2", spriteName, width-50, 0)
	scaleObject('bg2', 8, 9);
	setProperty('bg2.antialiasing', false);

	makeLuaSprite("bg3", spriteName2, -350, -350) --tree
	width2 = getProperty("bg3.width")
	scaleObject('bg3', 5, 6);
	setProperty('bg3.antialiasing', false);

	makeLuaSprite("bg4", spriteName2, width2+1200, -350)
	scaleObject('bg4', 5, 6);
	setProperty('bg4.antialiasing', false);

	makeLuaSprite("bg5", spriteName3, -200, -800) --bg
	width3 = getProperty("bg5.width")
	scaleObject('bg5', 9, 10);
	setProperty('bg5.antialiasing', false);

	makeLuaSprite("bg6", spriteName3, width3-100, -200)
	scaleObject('bg6', 9, 10);
	setProperty('bg6.antialiasing', false);
	
	doTweenX("bg1Tween", "bg1", -width, 0.25, "linear")
	doTweenX("bg2Tween", "bg2", -220, 0.25, "linear")
	doTweenX("Tree1Tween", "bg3", -220, 0.5, "linear")
	doTweenX("Tree2Tween", "bg4", 50, 0.5, "linear")
	doTweenX("Tree1Tween", "bg5", -width3, 5, "linear")
	doTweenX("Tree2Tween", "bg6", -220, 5, "linear")

	addLuaSprite("bg6", false)
	addLuaSprite("bg5", false)
	addLuaSprite("bg3", false)
	addLuaSprite("bg4", false)
	addLuaSprite("bg1", false)
	addLuaSprite("bg2", false)
end

function onTweenCompleted(tag)
	if tag == "bgi1Tween" then
		setProperty("bgi1.x", 0)
		setProperty("bgi2.x", width-500)
		
		doTweenX("bgi1Tween", "bgi1", -width, 0.25, "linear")
		doTweenX("bgi2Tween", "bgi2", -20, 0.25, "linear")
	end
	if tag == "Tree1Tween" then
		setProperty("bgi3.x", 0)
		setProperty("bgi4.x", width2+3200)
		
		doTweenX("Tree1Tween", "bg3", -width2, 0.5, "linear")
		doTweenX("Tree2Tween", "bg4", -width2+1400, 0.5, "linear")
	end
end