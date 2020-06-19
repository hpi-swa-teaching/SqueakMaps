select api
aerialWithLabelsTileSource

	self tiledMapMorph
			tileSource: (BingMapsApi new apikey: SMAWindow bingApiKey asString) aerialWithLabelsOnDemandTileSource.