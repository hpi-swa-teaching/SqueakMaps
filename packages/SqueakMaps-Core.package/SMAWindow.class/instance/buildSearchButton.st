build buttons and input fields
buildSearchButton

	self searchButton: (PluggableButtonMorph new
							label: 'go!';
							target: [self searchLocation];
							actionSelector: #value;
							yourself)