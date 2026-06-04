building
buildEinloggenButton

	self einloggenButton: (PluggableButtonMorph new
		label: 'Lösung einloggen';
		target: [self stopTimer];
		actionSelector: #value;
		yourself)
