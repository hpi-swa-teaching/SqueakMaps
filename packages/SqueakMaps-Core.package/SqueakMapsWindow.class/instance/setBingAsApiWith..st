select api
setBingAsApiWith: aTileSource

"lass uns eine methode setApi: 
die api behandlung ist immer gleich
und eine setTiledSource: machen"


	(self keyIsSet: SqueakMapsWindow bingApiKey)
		ifFalse: [SqueakMapsWindow bingApiKey: (UIManager default request: 'BingApi Key eingeben')].
	(self bingApiKeyIsValid)
		ifTrue: [self tiledMapMorph
						tileSource: aTileSource;
						zoomIn;
						zoomOut];
		ifFalse: [
			UIManager default inform: 'Invalid key, please try again'.
			SqueakMapsWindow bingApiKey: nil]
			"SqueakMapsWindow bingApiKey: (UIManager default request: 'Your entered BingMapsApiKey is not valid. Please re-enter').
				self setBingAsApi]"