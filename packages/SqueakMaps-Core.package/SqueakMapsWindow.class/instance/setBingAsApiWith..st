select api
setBingAsApiWith: aTileSource

	(self keyIsSet: SqueakMapsWindow bingApiKey)
		ifFalse: [SqueakMapsWindow bingApiKey: (UIManager default request: 'BingApi Key eingeben')].
	(self bingApiKeyIsValid)
		ifTrue: [self tiledMapMorph tileSource: aTileSource.
				self refreshMap];
		ifFalse: [UIManager default inform: 'Invalid key, please try again'.
				SqueakMapsWindow bingApiKey: nil]