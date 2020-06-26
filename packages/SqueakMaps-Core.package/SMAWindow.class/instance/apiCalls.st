select api
apiCalls

	^ Dictionary newFrom:
		{Association key: 'Satellite with Labels [Bing]' value: [self setAsApi: #Bing with: #aerialWithLabelsOnDemandTileSource]. 
		Association key: 'Satellite [Bing]' value: [self setAsApi: #Bing with: #aerialTileSource]. 
		Association key: 'SimpleMap dark [Bing]' value: [self setAsApi: #Bing with: #canvasDarkTileSource]. 
		Association key: 'SimpleMap gray [Bing]' value: [self setAsApi: #Bing with: #canvasGrayTileSource]. 
		Association key: 'SimpleMap light [Bing]' value: [self setAsApi: #Bing with: #canvasLightTileSource].
		Association key: 'Road [Bing]' value: [self setAsApi: #Bing with: #roadOnDemandTileSource].
		Association key: 'City [Bing]' value: [self setAsApi: #Bing with: #roadTileSource].
		Association key: 'Cycling [Thunderforest]' value: [self setAsApi: #Thunderforest with: #openCycleMapTileSource].
		Association key: 'Landscape [Thunderforest]' value: [self setAsApi: #Thunderforest with: #landscapeTileSource].
		Association key: 'Outdoor [Thunderforest]' value: [self setAsApi: #Thunderforest with: #outdoorsTileSource].
		Association key: 'Transportation [Thunderforest]' value: [self setAsApi: #Thunderforest with: #transportTileSource].
		Association key: 'OpenStreetMaps' value: [self setOpenstreetmapsAsApi]}
