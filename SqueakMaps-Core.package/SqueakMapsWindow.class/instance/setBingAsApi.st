select api
setBingAsApi

	|bingKey |
	(SqueakMapsWindow bingApiKey isNil)
		ifTrue: [bingKey := UIManager default request: 'BingApi Key eingeben'.
				SqueakMapsWindow bingApiKey: bingKey].
	self tiledMapMorph
			tileSource: (BingMapsApi new apikey: SqueakMapsWindow bingApiKey asString) aerialWithLabelsOnDemandTileSource;
			zoomIn;
			zoomOut