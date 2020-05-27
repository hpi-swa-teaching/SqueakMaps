select api
setThunderforestAsApi
	|thunderforestKey|
	(SqueakMapsWindow thunderforestMapsApiKey isNil)
		ifTrue: [thunderforestKey := UIManager default request: 'ThunderforestMapsApi Key eingeben'.
				SqueakMapsWindow thunderforestMapsApiKey: thunderforestKey].
	self tiledMapMorph tileSource: (ThunderforestMapsApi new apikey: SqueakMapsWindow thunderforestMapsApiKey asString) openCycleMapTileSource