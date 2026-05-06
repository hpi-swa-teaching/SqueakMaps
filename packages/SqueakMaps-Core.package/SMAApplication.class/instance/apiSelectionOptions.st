select api
apiSelectionOptions

	^ Dictionary newFrom:{
		Association key: 'Cycling [Thunderforest]' value: [self setThunderforestAsApiWith: #openCycleMapTileSource].
		Association key: 'Landscape [Thunderforest]' value: [self setThunderforestAsApiWith: #landscapeTileSource].
		Association key: 'Outdoor [Thunderforest]' value: [self setThunderforestAsApiWith: #outdoorsTileSource].
		Association key: 'Transportation [Thunderforest]' value: [self setThunderforestAsApiWith: #transportTileSource].
		Association key: 'OpenStreetMaps' value: [self setOpenstreetmapsAsApi] }
