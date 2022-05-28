initialization
initializeWindow

	self
		addMorph: self sidebar frame: (0.0@0.0 extent: 0.3@1.0);
		addMorph: self tiledMapMorph frame: (0.3@0.0 extent: 0.7@1.0).