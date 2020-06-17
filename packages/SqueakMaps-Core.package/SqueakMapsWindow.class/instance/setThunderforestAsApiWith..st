select api
setThunderforestAsApiWith: aTileSource
	
	
	(self keyIsSet: SqueakMapsWindow thunderforestMapsApiKey)
		ifFalse: [SqueakMapsWindow thunderforestMapsApiKey: (UIManager default request: 'ThunderforestMapsApi Key eingeben')].
		
	(self thunderforestMapsApiKeyIsValid)
		ifTrue: [self tiledMapMorph tileSource: aTileSource];
		ifFalse: [UIManager default inform: 'Invalid key, please try again'.
				SqueakMapsWindow thunderforestMapsApiKey: nil]