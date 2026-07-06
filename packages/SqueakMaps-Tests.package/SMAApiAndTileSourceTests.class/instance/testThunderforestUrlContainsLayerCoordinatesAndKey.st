testing
testThunderforestUrlContainsLayerCoordinatesAndKey

	| api source urlString |
	SMAThunderforestMapsApi apiKey: 'test-key'.
	api := SMAThunderforestMapsApi new.
	source := api transportTileSource.
	urlString := (source urlForPosition: 3 @ 4 zoom: 5) asString.

	self assert: (urlString includesSubstring: 'transport/5/3/4.png').
	self assert: (urlString includesSubstring: 'apikey=test-key')
