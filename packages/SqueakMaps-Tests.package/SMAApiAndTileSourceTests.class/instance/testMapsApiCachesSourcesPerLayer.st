testing
testMapsApiCachesSourcesPerLayer

	| api first second other |
	api := SMAThunderforestMapsApi new.
	first := api landscapeTileSource.
	second := api landscapeTileSource.
	other := api outdoorsTileSource.

	self assert: first == second.
	self deny: first == other.
	self assert: first class equals: SMAThunderforestTileSource.
	self assert: first layer equals: 'landscape'.
	self assert: first api == api.
	self assert: api openCycleMapTileSource layer equals: 'cycle'.
	self assert: api transportTileSource layer equals: 'transport'.
	self assert: api tileSourceClass equals: SMAThunderforestTileSource.
	self assert: api keyCheckURL notEmpty
