testing
testLocate

	| placeName placeLongLat |
	
	placeName := 'berghain'.
	placeLongLat := 13.4430356@52.5111669.
	tiledMapMorph locate: placeName.
	
	self assert: tiledMapMorph center equals: (SMAMapTileLoader longLatToWorldPos: placeLongLat)
	
	