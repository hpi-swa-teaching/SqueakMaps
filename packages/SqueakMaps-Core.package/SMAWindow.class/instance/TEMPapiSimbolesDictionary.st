select api
TEMPapiSimbolesDictionary

	^ Dictionary new addAll:
		{Association key:'Satellite with Labels [Bing]'value:[ self setBingAsApiWith: self buildBingApi aerialWithLabelsOnDemandTileSource]. 
		Association key: 'Satellite [Bing]' value: [self setBingAsApiWith: self buildBingApi aerialTileSource]. 
		Association key: 'SimpleMap dark [Bing]' value: [self setBingAsApiWith: self buildBingApi canvasDarkTileSource]. 
		Association key: 'SimpleMap gray [Bing]'value: [self setBingAsApiWith: self buildBingApi canvasGrayTileSource]. 
		Association key: 'SimpleMap light [Bing]'value: [self setBingAsApiWith: self buildBingApi canvasLightTileSource].
		Association key: 'Road [Bing]' value: [self setBingAsApiWith: self buildBingApi roadOnDemandTileSource].
		Association key: 'City [Bing]' value: [self setBingAsApiWith: self buildBingApi roadTileSource].
		Association key: 'Cycling [Thunderforest]' value: [self setThunderforestAsApiWith: self buildThunderforestApi openCycleMapTileSource].
		Association key: 'Landscape [Thunderforest]' value: [self setThunderforestAsApiWith: self buildThunderforestApi landscapeTileSource].
		Association key: 'Outdoor [Thunderforest]' value: [self setThunderforestAsApiWith: self buildThunderforestApi outdoorsTileSource].
		Association key: 'Transportation [Thunderforest]' value: [self setThunderforestAsApiWith: self buildThunderforestApi transportTileSource].
		Association key: 'OpenStreetMaps' value: [self setOpenstreetmapsAsApi]
		}
