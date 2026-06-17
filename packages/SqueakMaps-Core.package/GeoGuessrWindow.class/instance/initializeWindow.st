initialization
initializeWindow

	self
		addMorph: self pictureMorph fullFrame: largeFrame;
		addMorph: self tiledMapMorph fullFrame: smallFrame;
		addMorph: self startButton frame: (0.0 @ 0.0 extent: 0.1 @ 0.1);
		addMorph: self einloggenButton frame: (0.85 @ 0 extent: 0.15 @ 0.1);
		addMorph: self timerMorph frame: (0.46 @ 0 extent: 0.08 @ 0.1).
	
	tiledMapMorph gameHandler: self.
	pictureMorph gameHandler: self