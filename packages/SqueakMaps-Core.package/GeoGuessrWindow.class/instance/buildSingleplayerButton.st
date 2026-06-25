building
buildSingleplayerButton

	self singleplayerButton: (PluggableButtonMorph new
		label: 'Singleplayer';
		target: [self initializeWindowOnClick. gameOrchestrator isMultiplayer: false];
		actionSelector: #value;
		yourself).
	
