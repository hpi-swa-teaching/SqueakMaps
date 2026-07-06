testing - loader and marker
testTileLoaderCoordinateRoundTripAndMarkerFactory

	| loader source promise world roundTrip marker |
	loader := SMAMapTileLoader new.
	source := SMATestTileSource new.
	world := SMAMapTileLoader latLongToWorldPos: 13 @ 52.
	roundTrip := SMAMapTileLoader worldPosToLatLong: world.
	self assert: (roundTrip x closeTo: 13).
	self assert: (roundTrip y closeTo: 52).
	promise := loader imageAt: 0.5 @ 0.5 zoom: 2 source: source tile: 0 @ 0.
	self assert: promise notNil.
	self assert: (loader imageAt: 0.5 @ 0.5 zoom: 99 source: source tile: 0 @ 0) value isNil.
	loader resetCache.

	marker := SMAMarker newAt: 0.5 @ 0.5 labeled: 'Here'.
	self assert: marker worldPos equals: 0.5 @ 0.5.
	self assert: marker label equals: 'Here'.
	self assert: marker color equals: Color red
