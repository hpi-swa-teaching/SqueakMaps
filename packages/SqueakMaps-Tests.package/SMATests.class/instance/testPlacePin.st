searching
testPlacePin
	
	| mapPins pin |
	
	pin := SMAPin new
		latLong: 11.576124@48.137154;
		label: 'Munich';
		yourself.
		
	self squeakMapsWindow setSelectedPin: pin.
	
	mapPins :=  self squeakMapsWindow tiledMapMorph pins select: [:p | p latLong = pin latLong].
	self assert: mapPins notEmpty.
	self assert: (SMAMapTileLoader latLongToWorldPos: pin latLong) equals: self squeakMapsWindow tiledMapMorph center.
	self assert: self squeakMapsWindow tiledMapMorph zoom equals: self squeakMapsWindow tiledMapMorph defaultZoom