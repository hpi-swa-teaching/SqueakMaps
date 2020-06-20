build buttons and input fields
buildApiButton
	self apiMenuButton: (PluggableButtonMorph new
							label: 'select api';
							target: [self apiSelection];
							actionSelector: #value)