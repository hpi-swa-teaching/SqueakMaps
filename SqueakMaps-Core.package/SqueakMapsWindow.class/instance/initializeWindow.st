initialization
initializeWindow
	self
		addMorph: tiledMapMorph frame: (0@0 extent: 1@0.9);
		addMorph: searchBar frame: (0@0.9 extent: 0.3@0.1);
		addMorph: searchButton frame: (0.3@0.9 extent: 0.2@0.1);
		addMorph: apiKeyInputField frame: (0.5@0.9 extent: 0.3@0.1);
		addMorph: apiKeyButton frame: (0.8@0.9 extent: 0.2@0.1)
