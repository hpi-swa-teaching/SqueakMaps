as yet unclassified
initializeWindow
	self
		addMorph: tiledMapMorph frame: (0@0 extent: 1@0.9);
		addMorph: (SimpleButtonMorph new label: 'Here we can add a Button row' asString) frame: (0@0.9 extent: 1@0.1);
		updatePaneColors.
