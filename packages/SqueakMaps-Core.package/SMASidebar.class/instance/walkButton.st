submorphs - buttons
walkButton
	^ walkButton ifNil: 
		[walkButton := self basicButton 
						label: 'Walk'; 
						setBalloonText: 
							'Choose walking as mode of transportation for route calculation.';
						target: [self owner search];
						actionSelector: #value;
						yourself.]