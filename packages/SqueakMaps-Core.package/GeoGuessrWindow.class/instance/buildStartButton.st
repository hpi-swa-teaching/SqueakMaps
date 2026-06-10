building
buildStartButton

	self startButton: (PluggableButtonMorph new
		label: 'Start';
		target: [self startTimer];
		actionSelector: #value;
		yourself)
