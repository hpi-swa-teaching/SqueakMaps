build buttons and input fields
buildApiMenu
	self apiMenu: (MenuMorph new
		position: apiKeyButton position;
		addTitle: 'Select API';
		addLine;
		add: 'Satellite [Bing]' action: [self setBingAsApiWith: (BingMapsApi new apikey: SqueakMapsWindow bingApiKey asString) aerialWithLabelsOnDemandTileSource];
		add: 'Google API' action: [self setGoogleAsApi];
		add: 'Thunderforest API' action: [self setThunderforestAsApi];
		add: 'OpenStreetMaps API' action: [self setOpenstreetmapsAsApi];
		popUpEvent: self currentEvent in: self world)