initialization
initializeWindowOnClick

	self removeMorph: self pictureMorph.
	self controlBar layOut.
	self
		addMorph: self infoMorph frame: (0.12 @ 0.025 extent: 0.35 @ 0.1);
		addMorph: self infoMorph2 frame: (0.55 @ 0.025 extent: 0.3 @ 0.1);
		addMorph: self timerMorph frame: (0.46 @ 0.025 extent: 0.08 @ 0.1).
	self viewSwapper layOut.

	self tiledMapMorph gameHandler: self.
	self pictureMorph gameHandler: self.
	self pictureMorph showImage: self gameOrchestrator levelManager remainingLevels first imagePath.

	"Re-entering after a 'Back' must show the start controls (Start button) and a fresh timer again."
	self refreshForState