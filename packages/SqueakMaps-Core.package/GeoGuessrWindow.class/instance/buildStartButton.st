building
buildStartButton

	self startButton: (PluggableButtonMorph new
		label: 'Start game';
		target: [self handleStartButton];
		actionSelector: #value;
		yourself)
