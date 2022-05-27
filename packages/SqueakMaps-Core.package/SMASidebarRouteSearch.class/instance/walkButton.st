submorphs - buttons
walkButton
	^ walkButton ifNil: 
		[walkButton := self basicButton 
						label: 'Walk'; 
						setBalloonText: 
							'Choose walking as mode of transportation for route calculation.';
						target: [self owner search]; "TODO: ADJUST TO DO THE RIGHT THING"
						actionSelector: #value;
						yourself.]