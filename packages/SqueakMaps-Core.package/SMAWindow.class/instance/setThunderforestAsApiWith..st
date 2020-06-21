select api
setThunderforestAsApiWith: aTileSource
	
	(self thunderforestMapsApiKeyIsValid)
		ifTrue: [self setTileSourceTo: aTileSource];
		ifFalse: [SMAWindow thunderforestMapsApiKey: (UIManager default request: 'ThunderforestMapsApi Key eingeben').
				(self thunderforestMapsApiKeyIsValid)
					ifTrue: [self setTileSourceTo: aTileSource];
					ifFalse: [UIManager default inform: 'Invalid key, please try again']]