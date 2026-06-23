building
buildQuitButton

	self quitButton: (PluggableButtonMorph new
		label: 'Quit game';
		target: [self handleQuitButton];
		actionSelector: #value;
		yourself)
