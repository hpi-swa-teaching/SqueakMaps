searching
testMultipleLocationSearchingBerlinLondon
	"skip until bug that occurs when running this test is fixed"
	"| placeName1 placeName2 middleLatLong |
	
	placeName1 := 'Berlin'.
	placeName2 := 'London'.
	middleLatLong := (6.63060625@52.015027547597526).
	
	self squeakMapsWindow startSearchInput: placeName1.
	self squeakMapsWindow destinationSearchInput: placeName2.
	self squeakMapsWindow searchMultipleLocations.
	
	self assert: (SMAMapTileLoader latLongToWorldPos: middleLatLong) equals: self squeakMapsWindow tiledMapMorph center"