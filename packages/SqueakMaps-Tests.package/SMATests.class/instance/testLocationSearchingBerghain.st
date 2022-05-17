searching
testLocationSearchingBerghain

	| placeName placeLongLat |
	
	placeName := 'berghain'.
	placeLongLat := 13.4430356@52.5111669.
	self squeakMapsWindow searchBar setText: placeName.
	self squeakMapsWindow searchButton performAction.
	
	self assert: self squeakMapsWindow tiledMapMorph center equals: (SMAMapTileLoader longLatToWorldPos: placeLongLat)