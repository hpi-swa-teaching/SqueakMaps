select api
setThunderforestAsApiWith: aTileSource
	
	
	(self keyIsSet: SMAWindow thunderforestMapsApiKey)
		ifFalse: [SMAWindow thunderforestMapsApiKey: (UIManager default request: 'ThunderforestMapsApi Key eingeben')].
		
	(self thunderforestMapsApiKeyIsValid)
		ifTrue: [self tiledMapMorph tileSource: aTileSource];
		ifFalse: [UIManager default inform: 'Invalid key, please try again'.
				SMAWindow thunderforestMapsApiKey: nil]