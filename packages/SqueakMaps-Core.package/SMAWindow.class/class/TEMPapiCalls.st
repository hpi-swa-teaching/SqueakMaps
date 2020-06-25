accessing
TEMPapiCalls

	^{
		('Satellite with Labels [Bing]',[ self setBingAsApiWith: self buildBingApi aerialWithLabelsOnDemandTileSource] ). 
		('Satellite [Bing]', [self setBingAsApiWith: self buildBingApi aerialTileSource]).
		('SimpleMap dark [Bing]', [self setBingAsApiWith: self buildBingApi canvasDarkTileSource]).
		('SimpleMap gray [Bing]', [self setBingAsApiWith: self buildBingApi canvasGrayTileSource]).
		('SimpleMap light [Bing]', [self setBingAsApiWith: self buildBingApi canvasLightTileSource]).
		('Road [Bing]', [self setBingAsApiWith: self buildBingApi roadOnDemandTileSource]).
		('City [Bing]', [self setBingAsApiWith: self buildBingApi roadTileSource]).
		('Cycling [Thunderforest]', [self setThunderforestAsApiWith: self buildThunderforestApi openCycleMapTileSource]).
		('Landscape [Thunderforest]', [self setThunderforestAsApiWith: self buildThunderforestApi landscapeTileSource]).
		( 'Outdoor [Thunderforest]', [self setThunderforestAsApiWith: self buildThunderforestApi outdoorsTileSource]).
		('Transportation [Thunderforest]', [self setThunderforestAsApiWith: self buildThunderforestApi transportTileSource]).
		('OpenStreetMaps', [self setOpenstreetmapsAsApi])
		}
