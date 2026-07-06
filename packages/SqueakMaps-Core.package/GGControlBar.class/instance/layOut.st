arranging
layOut

	self window
		addMorph: self startButton frame: (0 @ 0 extent: 0.1 @ 0.1);
		addMorph: self backButton frame: (0 @ 0 extent: 0.1 @ 0.1);
		addMorph: self einloggenButton frame: (0.85 @ 0 extent: 0.15 @ 0.1);
		addMorph: self quitButton frame: (0.85 @ 0 extent: 0.15 @ 0.1)