initialization
initializeWindow

	self
		addMorph: self startButton frame: (0 @ 0 extent: 0.1 @ 0.1);
		addMorph: self einloggenButton frame: (0.85 @ 0 extent: 0.15 @ 0.1);
		addMorph: self infoMorph frame: (0.12 @ 0.025 extent: 0.35 @ 0.1);
		addMorph: self infoMorph2 frame: (0.65 @ 0.025 extent: 0.2 @ 0.1);
		addMorph: self timerMorph frame: (0.46 @ 0.025 extent: 0.08 @ 0.1);
		addMorph: self pictureMorph fullFrame: largeFrame;
		addMorph: self tiledMapMorph fullFrame: smallFrame.
	
	tiledMapMorph gameHandler: self.
	pictureMorph gameHandler: self