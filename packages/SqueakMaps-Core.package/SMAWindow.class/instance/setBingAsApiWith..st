select api
setBingAsApiWith: aTileSource

	(self bingApiKeyIsValid)
		ifTrue: [self setTileSourceTo: aTileSource];
		ifFalse: [SMAWindow bingApiKey: (UIManager default request: 'BingApi Key eingeben').
				(self bingApiKeyIsValid)
					ifTrue: [self setTileSourceTo: aTileSource];
					ifFalse: [UIManager default inform: 'Invalid key, please try again']].