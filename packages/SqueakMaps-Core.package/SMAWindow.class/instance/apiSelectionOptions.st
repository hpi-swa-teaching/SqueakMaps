select api
apiSelectionOptions

	^ Dictionary newFrom:
		{Association key: 'Satellite with Labels [Bing]' value: [self setBingAsApiWith: #aerialWithLabelsOnDemandTileSource].
		Association key: 'Satellite [Bing]' value: [self setBingAsApiWith: #aerialTileSource].
		Association key: 'SimpleMap dark [Bing]' value: [self setBingAsApiWith: #canvasDarkTileSource].
		Association key: 'SimpleMap gray [Bing]' value: [self setBingAsApiWith: #canvasGrayTileSource].
		Association key: 'SimpleMap light [Bing]' value: [self setBingAsApiWith: #canvasLightTileSource].
		Association key: 'Road [Bing]' value: [self setBingAsApiWith: #roadOnDemandTileSource].
		Association key: 'City [Bing]' value: [self setBingAsApiWith: #roadTileSource].
		Association key: 'Cycling [Thunderforest]' value: [self setThunderforestAsApiWith: #openCycleMapTileSource].
		Association key: 'Landscape [Thunderforest]' value: [self setThunderforestAsApiWith: #landscapeTileSource].
		Association key: 'Outdoor [Thunderforest]' value: [self setThunderforestAsApiWith: #outdoorsTileSource].
		Association key: 'Transportation [Thunderforest]' value: [self setThunderforestAsApiWith: #transportTileSource].
		Association key: 'OpenStreetMaps' value: [self setOpenstreetmapsAsApi]}
