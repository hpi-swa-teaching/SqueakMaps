initialization
initializeWindow

	self
		addMorph: self timerMorph frame: (0.46@0 extent: 0.08@0.1);
		addMorph: self tiledMapMorph frame: (0@0.1 extent: 1@0.9)
