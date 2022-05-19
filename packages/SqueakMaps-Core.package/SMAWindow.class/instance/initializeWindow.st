initialization
initializeWindow

	self
		addMorph: self tiledMapMorph frame: (0@0 extent: 1@0.9);
		addMorph: self searchBar frame: (0@0.9 extent: 0.3@0.05);
		addMorph: self secondSearchBar frame: (0@0.95 extent: 0.3@0.05);
		addMorph: self searchButton frame: (0.3@0.9 extent: 0.1@0.1);
		addMorph: self pinManagementButton frame: (0.4@0.9 extent: 0.2@0.1);
		addMorph: self apiKeyManagementButton frame: (0.6@0.9 extent: 0.2@0.1);
		addMorph: self apiMenuButton frame: (0.8@0.9 extent: 0.2@0.1)