searching
testLocationSearchingBerghain

	| placeName placeLatLong |
	
	placeName := 'berghain'.
	placeLatLong := (13.4430356@52.5111669).
	self squeakMapsWindow searchInput: placeName.
	self squeakMapsWindow searchLocation.
	self assert: self squeakMapsWindow tiledMapMorph center equals: (SMAMapConfigurator latLongToWorldPos: placeLatLong)