local proximitySensor = require "plugin.proximitySensor"
proximitySensor.init()
local myText
proximitySensor.setListener(function ( e )
	myText.text = e.status
end)
myText = display.newText( "Blank", display.contentCenterX, display.contentCenterY, native.systemFont, 20 )
if (proximitySensor.hasSensor()) then
	print("Has Sensor")
else
	print("No Sensor")
end