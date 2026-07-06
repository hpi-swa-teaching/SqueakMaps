testing
testApiMapTileSourceAccessors

	| api source |
	api := SMAThunderforestMapsApi new.
	source := SMAApiMapTileSource new layer: 'test' api: api; yourself.
	self assert: source layer equals: 'test'.
	self assert: source api == api
