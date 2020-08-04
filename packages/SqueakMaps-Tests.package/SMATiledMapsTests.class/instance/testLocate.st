as yet unclassified
testLocate

	| placeName placeLatLong |
	placeName := 'berghain'.
	placeLatLong := (13.4430356@52.5111669).
	tiledMapMorph locate: placeName.
	self assert: tiledMapMorph center equals: (SMAMapTileLoader latLongToWorldPos: placeLatLong)
	
	