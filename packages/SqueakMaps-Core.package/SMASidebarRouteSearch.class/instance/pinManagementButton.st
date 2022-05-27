submorphs - buttons
pinManagementButton
	^ pinManagementButton ifNil: 
		[pinManagementButton := self basicButton 
						label: 'manage pins'; 
						setBalloonText: 
							'Click manage your pins.';
						target: [self owner managePins];
						actionSelector: #value;
						yourself.]