submorphs - buttons
searchButton
	^ searchButton ifNil: 
		[searchButton := self basicButton 
						label: 'go!'; 
						setBalloonText: 
							'Click here search for a Location or get the Route from one Point to another.';
						target: [self owner search];
						actionSelector: #value;
						yourself.]