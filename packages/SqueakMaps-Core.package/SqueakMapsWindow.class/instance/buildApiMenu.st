build buttons and input fields
"Es wird jeweils eine Api gebaut, nur um die methode der TileSource aufzurufen
Wir müssen mal ein bisschen modellieren und ABhängigkeiten klar machen, um die architektur zu verschönern
load:with wird nicht mehr genutzt"


buildApiMenu
	
	self apiMenu: (MenuMorph new
		position: apiKeyButton position;
		addTitle: 'Select API';
		addLine;
		add: 'Satellite with Labels [Bing]' action: [self setBingAsApiWith: self buildBingApi aerialWithLabelsOnDemandTileSource];
		add: 'Satellite [Bing]' action: [self setBingAsApiWith: self buildBingApi aerialTileSource];
		add: 'SimpleMap dark [Bing]' action: [self setBingAsApiWith: self buildBingApi canvasDarkTileSource];
		add: 'SimpleMap gray [Bing]' action: [self setBingAsApiWith: self buildBingApi canvasGrayTileSource];
		add: 'SimpleMap light [Bing]' action: [self setBingAsApiWith: self buildBingApi canvasLightTileSource];
		"add: 'Satellite [Bing]' action: [self setBingAsApiWith: self buildBingApi ordnanceSurveyTileSource]; weil es nicht fkt"
		add: 'Road [Bing]' action: [self setBingAsApiWith: self buildBingApi roadOnDemandTileSource];
		add: 'City [Bing]' action: [self setBingAsApiWith: self buildBingApi roadTileSource];
		addLine;
		add: 'Cycling [Thunderforest]' action: [self setThunderforestAsApiWith: self buildThunderforestApi openCycleMapTileSource];
		add: 'Landscape [Thunderforest]' action: [self setThunderforestAsApiWith: self buildThunderforestApi landscapeTileSource];
		add: 'Outdoor [Thunderforest]' action: [self setThunderforestAsApiWith: self buildThunderforestApi outdoorsTileSource];
		add: 'Transportation [Thunderforest]' action: [self setThunderforestAsApiWith: self buildThunderforestApi transportTileSource];
		addLine;
		add: 'OpenStreetMaps' action: [self setOpenstreetmapsAsApi];
		popUpEvent: self currentEvent in: self world)