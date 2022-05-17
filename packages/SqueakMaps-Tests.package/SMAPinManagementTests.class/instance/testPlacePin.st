pin testing
testPlacePin

	| munichPins longLatMunich |
	
	longLatMunich := 11.576124@48.137154.
	self subject placeCenteredPinAt: longLatMunich.
	
	munichPins :=  self subject tiledMapMorph pins select: [:pin | pin longLat = longLatMunich].
	
	self assert: munichPins notEmpty.
	self assert: (SMAMapTileLoader longLatToWorldPos: longLatMunich)  equals: self subject tiledMapMorph center.
	self assert: self subject tiledMapMorph defaultZoom equals: self subject tiledMapMorph zoom