submorphs - buttons
cancelButton
	^ cancelButton ifNil: 
		[cancelButton := self basicButton 
						label: ' X '; 
						setBalloonText: 
							'Click to leave the Route Calculation View.';
						target: [self owner search]; "TODO: ADJUST TO DO THE RIGHT THING"
						actionSelector: #value;
						yourself.]