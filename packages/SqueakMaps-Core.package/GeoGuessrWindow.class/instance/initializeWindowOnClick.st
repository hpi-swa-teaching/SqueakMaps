initialization
initializeWindowOnClick

	self removeMorph: self pictureMorph.
	self
		addMorph: self startButton frame: (0 @ 0 extent: 0.1 @ 0.1);
		addMorph: self backButton frame: (0 @ 0 extent: 0.1 @ 0.1);
		addMorph: self einloggenButton frame: (0.85 @ 0 extent: 0.15 @ 0.1);
		addMorph: self quitButton frame: (0.85 @ 0 extent: 0.15 @ 0.1);
		addMorph: self infoMorph frame: (0.12 @ 0.025 extent: 0.35 @ 0.1);
		addMorph: self infoMorph2 frame: (0.55 @ 0.025 extent: 0.3 @ 0.1);
		addMorph: self timerMorph frame: (0.46 @ 0.025 extent: 0.08 @ 0.1);
		addMorph: self pictureMorph fullFrame: largeFrame;
		addMorph: self tiledMapMorph fullFrame: smallFrame.

	tiledMapMorph gameHandler: self.
	pictureMorph gameHandler: self.
	self pictureMorph showImage: gameOrchestrator levelManager remainingLevels first imagePath.

	"Re-entering after a 'Back' must show the start controls (Start button) and a fresh timer again."
	self refreshForState