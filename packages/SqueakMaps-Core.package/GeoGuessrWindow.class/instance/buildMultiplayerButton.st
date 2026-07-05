building
buildMultiplayerButton

	self multiplayerButton: (self buttonLabeled: 'Multiplayer' action: [self initializeWindowOnClick. gameOrchestrator isMultiplayer: true])
