building
buildEinloggenButton

	self einloggenButton: (PluggableButtonMorph new
		label: 'Log in guess';
		target: [self handleEinloggenButton];
		actionSelector: #value;
		yourself)
