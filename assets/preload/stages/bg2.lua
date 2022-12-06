local width = 0
local spriteName = "limoSunset" -- replace limoSunset with the name of your sprite

function onCreate()
	makeLuaSprite("bgi1", spriteName, 0, 0)
	width = getProperty("bg1.width")
	
	makeLuaSprite("bgi2", spriteName, width-20, 0)
	
	addLuaSprite("bgi1", false)
	addLuaSprite("bgi2", false)
	
	doTweenX("bg1Tween", "bgi1", -width, 5, "linear")
	doTweenX("bg2Tween", "bgi2", -20, 5, "linear")
end

function onTweenCompleted(tag)
	if tag == "bgi1Tween" then
		setProperty("bgi1.x", 0)
		setProperty("bgi2.x", width-20)
		
		doTweenX("bgi1Tween", "bgi1", -width, 5, "linear")
		doTweenX("bgi2Tween", "bgi2", -20, 5, "linear")
	end
end