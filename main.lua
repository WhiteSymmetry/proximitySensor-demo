local ps = require "plugin.proximitySensor"
ps.init()
local myText
ps.setListener(function ( e )
	myText.text = e.status
end)
myText = display.newText( "Blank", display.contentCenterX, display.contentCenterY, native.systemFont, 20 )
if (ps.hasSensor()) then
	print("Has Sensor")
else
	print("No Sensor")
end