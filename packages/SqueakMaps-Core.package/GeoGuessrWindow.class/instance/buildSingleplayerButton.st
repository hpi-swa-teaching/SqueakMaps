building
buildSingleplayerButton

	self singleplayerButton: (self buttonLabeled: 'Singleplayer' action: [self initializeWindowOnClick. gameOrchestrator isMultiplayer: false])
