searching
testMultipleLocationSearchingBerlinLondon

	| placeName1 placeName2 middleLatLong |
	
	placeName1 := 'Berlin'.
	placeName2 := 'London'.
	middleLatLong := (6.63060625@52.015027547597526).
	self squeakMapsWindow searchBar setText: placeName1.
	self squeakMapsWindow secondSearchBar setText: placeName2.
	self squeakMapsWindow searchButton performAction.
	self assert: (SMAMapTileLoader latLongToWorldPos: middleLatLong) equals: self squeakMapsWindow tiledMapMorph center