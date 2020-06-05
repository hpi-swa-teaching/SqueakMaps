select api
setThunderforestAsApiWith: aTileSource
	
	
	(SqueakMapsWindow thunderforestMapsApiKey isNil)
		ifTrue: [SqueakMapsWindow thunderforestMapsApiKey: 
			(UIManager default request: 'ThunderforestMapsApi Key eingeben')].
		
	(self thunderforestMapsApiKeyIsValid)
		ifTrue: [self tiledMapMorph tileSource: aTileSource];
		ifFalse: [
			UIManager default inform: 'Invalid key, please try again'.
			SqueakMapsWindow thunderforestMapsApiKey: nil]
		"ifFalse: [SqueakMapsWindow thunderforestMapsApiKey: (UIManager default request: 'Your entered ThunderforestMapsApiKey is not valid. Please re-enter').
				self setThunderforestAsApi]"