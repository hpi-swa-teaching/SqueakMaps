build buttons and input fields
buildSavePinButton
	self savePinButton: (PluggableButtonMorph new
						label: 'save a pin';
						target: [(self tiledMapMorph pins)
									ifNotEmpty: [self savePin]];
						actionSelector: #value)