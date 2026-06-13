initialization
initializeWindow

	self
		addMorph: self startButton frame: (0 @ 0 extent: 0.1 @ 0.1);
		addMorph: self infoMorph frame: (0.11 @ 0 extent: 0.34 @ 0.1);
		addMorph: self einloggenButton frame: (0.85 @ 0 extent: 0.15 @ 0.1);
		addMorph: self timerMorph frame: (0.46 @ 0 extent: 0.08 @ 0.1);
		addMorph: self pictureMorph frame: largeFrame;
		addMorph: self tiledMapMorph frame: smallFrame.
	
	tiledMapMorph gameHandler: self.
	pictureMorph gameHandler: self