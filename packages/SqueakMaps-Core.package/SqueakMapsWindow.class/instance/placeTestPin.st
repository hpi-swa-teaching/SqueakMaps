pinning
placeTestPin
	| pin |
	
	pin := MapLocationMarker new.
	pin 
		latLong:  11@48;
		label: 'Zwei';
		color: Color green.
	self tiledMapMorph pins add: pin.
	self tiledMapMorph layoutChanged.
	self tiledMapMorph changed
	
