building
buildSingleplayerButton

	self singleplayerButton: (PluggableButtonMorph new
		label: 'Singleplayer';
		target: [self initializeWindowOnClick];
		actionSelector: #value;
		yourself)
