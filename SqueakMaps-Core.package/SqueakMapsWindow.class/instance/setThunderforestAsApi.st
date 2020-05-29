select api
setThunderforestAsApi

	(SqueakMapsWindow thunderforestMapsApiKey isNil)
		ifTrue: [SqueakMapsWindow thunderforestMapsApiKey: (UIManager default request: 'ThunderforestMapsApi Key eingeben')].
	(self thunderforestMapsApiKeyIsValid)
		ifTrue: [self tiledMapMorph tileSource: (ThunderforestMapsApi new apikey: SqueakMapsWindow thunderforestMapsApiKey asString) openCycleMapTileSource];
		ifFalse: [
			UIManager default inform: 'Invalid key, please try again'.
			SqueakMapsWindow thunderforestMapsApiKey: nil]
		"ifFalse: [SqueakMapsWindow thunderforestMapsApiKey: (UIManager default request: 'Your entered ThunderforestMapsApiKey is not valid. Please re-enter').
				self setThunderforestAsApi]"