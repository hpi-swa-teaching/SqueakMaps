building
buildMultiplayerButton

	self multiplayerButton: (PluggableButtonMorph new
		label: 'Multiplayer';
		target: [self initializeWindowOnClick. gameOrchestrator isMultiplayer: true];
		actionSelector: #value;
		yourself).
	