searching
testMultipleLocationSearchingBerlinSydney

	| placeName1 placeName2 middleLatLong |
	
	placeName1 := 'Berlin'.
	placeName2 := 'Sydney'.
	middleLatLong := (82.29857235000003@12.83957096324938).
	self squeakMapsWindow searchBar setText: placeName1.
	self squeakMapsWindow secondSearchBar setText: placeName2.
	self squeakMapsWindow testButton performAction.
	self assert: (SMAMapTileLoader latLongToWorldPos: middleLatLong) equals: self squeakMapsWindow tiledMapMorph center