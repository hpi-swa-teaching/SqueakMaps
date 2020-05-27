build buttons and input fields
buildApiMenu
	self apiMenu: (MenuMorph new
		color: self defaultButtonColor;
		position: apiKeyButton position;
		addTitle: 'Select API';
		addLine;
		add: 'Bing API' action: [self setBingAsApi];
		add: 'Google API' action: [self setGoogleAsApi];
		add: 'Thunderforest API' action: [self setThunderforestAsApi];
		add: 'OpenStreetMaps API' action: [self setOpenstreetmapsAsApi];
		popUpEvent: self currentEvent in: self world)