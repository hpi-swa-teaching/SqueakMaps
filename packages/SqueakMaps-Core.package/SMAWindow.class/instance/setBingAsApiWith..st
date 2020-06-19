select api
setBingAsApiWith: aTileSource

	(self keyIsSet: SMAWindow bingApiKey)
		ifFalse: [SMAWindow bingApiKey: (UIManager default request: 'BingApi Key eingeben')].
	(self bingApiKeyIsValid)
		ifTrue: [self tiledMapMorph tileSource: aTileSource.
				self refreshMap];
		ifFalse: [UIManager default inform: 'Invalid key, please try again'.
				SMAWindow bingApiKey: nil]