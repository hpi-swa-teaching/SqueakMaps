submorphs - buttons
bikeButton
	^ bikeButton ifNil: 
		[bikeButton := self basicButton 
						label: 'Bike'; 
						setBalloonText: 
							'Choose bike as mode of transportation for route calculation.';
						target: [self owner search]; "TODO: ADJUST TO DO THE RIGHT THING"
						actionSelector: #value;
						yourself.]