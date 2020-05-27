select api
setBingAsApi

	(SqueakMapsWindow bingApiKey isNil)
		ifTrue: [SqueakMapsWindow bingApiKey: (UIManager default request: 'BingApi Key eingeben')].
	(self bingApiKeyIsValid)
		ifTrue: [	self tiledMapMorph
						tileSource: (BingMapsApi new apikey: SqueakMapsWindow bingApiKey asString) aerialWithLabelsOnDemandTileSource;
						zoomIn;
						zoomOut];
		ifFalse: [SqueakMapsWindow bingApiKey: (UIManager default request: 'Your entered BingMapsApiKey is not valid. Please re-enter').
				self setBingAsApi]