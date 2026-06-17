building
buildEinloggenButton

	self einloggenButton: (PluggableButtonMorph new
		label: 'Lösung einloggen';
		target: [self handleEinloggenButton];
		actionSelector: #value;
		yourself)
