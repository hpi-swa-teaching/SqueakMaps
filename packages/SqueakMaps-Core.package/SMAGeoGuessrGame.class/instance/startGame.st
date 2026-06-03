geoguessr
startGame

	self
		currentScreen: #playing;
		roundActive: true.
	self changed: #buildOverlayChildren
