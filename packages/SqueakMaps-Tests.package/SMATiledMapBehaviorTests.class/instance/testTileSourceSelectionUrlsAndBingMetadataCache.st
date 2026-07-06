testing - sources
testTileSourceSelectionUrlsAndBingMetadataCache

	| osm source combination bing metadata cache |
	osm := SMAOpenStreetMapTileSource new.
	self assert: ((osm urlForPosition: 1 @ 2 zoom: 3) asString includesSubstring: '/3/1/2.png').

	source := SMATestTileSource new.
	self assert: source tileSize equals: 256 @ 256.
	self assert: (source clampZoom: -1) equals: 0.
	self assert: (source clampZoom: 99) equals: 22.
	self assert: (source isValidZoomLevel: 5).
	self deny: (source isValidZoomLevel: 23).

	combination := SMAMapTileSourceCombination new.
	self assert: (combination selectTileSource: 19) class equals: SMAOpenStreetMapTileSource.
	self assert: (combination selectTileSource: 20) class equals: SMALocalTileSource.

	bing := SMABingMapsTileSource new.
	metadata := Dictionary new
		at: 'imageUrl' put: 'http://{subdomain}.example/{culture}/{quadkey}.png';
		at: 'imageUrlSubdomains' put: #('a');
		at: 'zoomMin' put: 1;
		at: 'zoomMax' put: 20;
		yourself.
	cache := bing instVarNamed: 'imageryMetadata'.
	cache value: metadata; refreshTime: DateAndTime now.
	self assert: bing imageryMetadata == metadata.
	self assert: ((bing urlForPosition: 3 @ 5 zoom: 3) asString includesSubstring: '213.png').
	bing resetCache.
	self assert: cache value isNil
