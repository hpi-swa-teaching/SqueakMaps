select api
aerialWithLabelsTileSource

	self tiledMapMorph
			tileSource: (BingMapsApi new apikey: SqueakMapsWindow bingApiKey asString) aerialWithLabelsOnDemandTileSource.