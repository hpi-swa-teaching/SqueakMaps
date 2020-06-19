select api
setThunderforestAsApi

	(SMAWindow thunderforestMapsApiKey isNil)
		ifTrue: [SMAWindow thunderforestMapsApiKey: (UIManager default request: 'ThunderforestMapsApi Key eingeben')].
	(self thunderforestMapsApiKeyIsValid)
		ifTrue: [self tiledMapMorph tileSource: (ThunderforestMapsApi new apikey: SMAWindow thunderforestMapsApiKey asString) openCycleMapTileSource];
		ifFalse: [
			UIManager default inform: 'Invalid key, please try again'.
			SMAWindow thunderforestMapsApiKey: nil]
		"ifFalse: [SqueakMapsWindow thunderforestMapsApiKey: (UIManager default request: 'Your entered ThunderforestMapsApiKey is not valid. Please re-enter').
				self setThunderforestAsApi]"