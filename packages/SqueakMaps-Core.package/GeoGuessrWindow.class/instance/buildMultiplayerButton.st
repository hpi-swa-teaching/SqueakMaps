building
buildMultiplayerButton

	self multiplayerButton: (PluggableButtonMorph new
		label: 'Multiplayer';
		target: [self handleStartButton];
		actionSelector: #value;
		yourself)
