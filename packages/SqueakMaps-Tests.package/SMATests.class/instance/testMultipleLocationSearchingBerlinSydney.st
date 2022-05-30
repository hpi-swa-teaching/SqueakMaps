searching
testMultipleLocationSearchingBerlinSydney

	| placeName1 placeName2 middleLatLong |
	
	placeName1 := 'Berlin'.
	placeName2 := 'Sydney'.
	middleLatLong := (82.29857235000003@12.83957096324938).
	self squeakMapsWindow startSearchInput: placeName1.
	self squeakMapsWindow destinationSearchInput: placeName2.
	self squeakMapsWindow searchMultipleLocations.
	self assert: (SMAMapTileLoader latLongToWorldPos: middleLatLong) equals: self squeakMapsWindow tiledMapMorph center