submorphs - buttons
carButton
	^ carButton ifNil: 
		[carButton := self basicButton 
						label: 'Car'; 
						setBalloonText: 
							'Choose car as mode of transportation for route calculation.';
						target: [self owner search];
						actionSelector: #value;
						yourself.]