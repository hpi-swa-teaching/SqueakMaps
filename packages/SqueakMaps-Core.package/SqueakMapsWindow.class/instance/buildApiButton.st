build buttons and input fields
buildApiButton
	self apiKeyButton: (PluggableButtonMorph new
							label: 'select api';
							target: [self buildApiMenu];
							actionSelector: #value)