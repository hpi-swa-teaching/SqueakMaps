select api
setBingAsApi

	(SMAWindow bingApiKey isNil)
		ifTrue: [SMAWindow bingApiKey: (UIManager default request: 'BingApi Key eingeben')].
	(self bingApiKeyIsValid)
		ifTrue: [	self tiledMapMorph
						tileSource: (BingMapsApi new apikey: SMAWindow bingApiKey asString) aerialWithLabelsOnDemandTileSource;
						zoomIn;
						zoomOut];
		ifFalse: [
			UIManager default inform: 'Invalid key, please try again'.
			SMAWindow bingApiKey: nil]
			"SqueakMapsWindow bingApiKey: (UIManager default request: 'Your entered BingMapsApiKey is not valid. Please re-enter').
				self setBingAsApi]"