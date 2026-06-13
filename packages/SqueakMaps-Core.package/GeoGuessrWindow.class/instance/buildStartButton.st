building
buildStartButton

	self startButton: (PluggableButtonMorph new
		label: 'Spiel starten';
		target: [self handleStartButton];
		actionSelector: #value;
		yourself)
