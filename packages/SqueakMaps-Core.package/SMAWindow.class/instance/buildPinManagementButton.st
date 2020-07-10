build buttons and input fields
buildPinManagementButton
	self pinManagementButton: (PluggableButtonMorph new
							label: 'manage pins and saved pins';
							target: [self managePins];
							actionSelector: #value)