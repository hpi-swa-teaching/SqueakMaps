initialization
initializeWindow
	self
		addMorph: tiledMapMorph frame: (0@0 extent: 1@0.9);
		addMorph: searchBar frame: (0@0.9 extent: 0.3@0.1);
		addMorph: searchButton frame: (0.3@0.9 extent: 0.1@0.1);
		addMorph: savePinButton frame: (0.4@0.9 extent: 0.2@0.1);
		addMorph: apiKeyManagementButton frame: (0.6@0.9 extent: 0.2@0.1);
		addMorph: apiMenuButton frame: (0.8@0.9 extent: 0.2@0.1)
