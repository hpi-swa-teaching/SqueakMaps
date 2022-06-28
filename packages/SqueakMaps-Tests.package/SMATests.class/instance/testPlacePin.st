searching
testPlacePin
	
	| mapPins pin |
	
	pin := SMAPin new
		latLong: 11.576124@48.137154;
		label: 'Munich';
		boundingBox: (11.360777@48.0616244 corner: 11.7229099@48.2481162);
		yourself.

	self squeakMapsWindow setSelectedPin: pin.
	self squeakMapsWindow mapConfigurator displayLocation: pin.
	
	mapPins :=  self squeakMapsWindow tiledMapMorph markers select: [:marker | marker latLong = pin latLong].
	self assert: mapPins notEmpty.
	self assert: (SMAMapTileLoader latLongToWorldPos: pin latLong) equals: self squeakMapsWindow tiledMapMorph center.
	self assert: 9 equals: self squeakMapsWindow tiledMapMorph zoom