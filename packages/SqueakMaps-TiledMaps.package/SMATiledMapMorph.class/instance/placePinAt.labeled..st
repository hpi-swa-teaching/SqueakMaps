pin handling
placePinAt: aLongLat labeled: aLabel
	"The passed point must be in geographic coordinates long@lat"

	| pin |
	
	pin := SMAMapLocationMarker new.
	pin 
		longLat:  aLongLat;
		label: aLabel;
		zoom: self zoom.
	self pins add: pin.
	self
		layoutChanged;
		changed