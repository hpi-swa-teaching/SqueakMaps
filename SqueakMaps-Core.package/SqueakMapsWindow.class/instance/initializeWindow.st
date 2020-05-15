as yet unclassified
initializeWindow
	self
		addMorph: tiledMapMorph frame: (0@0 extent: 1@0.9);
		addMorph: (SimpleButtonMorph new label: 'Here we can add a Button row' asString) frame: (0@0.9 extent: 1@0.1);
		addMorph: searchBarMorph frame: (0@0.9 extent: 0.3@0.1);
		addMorph: searchButton frame: (0.3@0.9 extent: 0.5@0.1);
		updatePaneColors.
