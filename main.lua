local touchId = require( "plugin.touchId" )

local function listener( e )
	native.showAlert( "Touch id", e.response, {"Ok"} )
end

local function handleTap( event )
	touchId.show(listener, "Because I said so")
	return true
end
local myText = display.newText("Login!", display.contentCenterX, display.contentCenterY, native.systemFont, 20)
myText:addEventListener( "tap", handleTap )