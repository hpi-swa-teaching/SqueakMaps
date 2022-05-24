build buttons and input fields
buildSearchButton

	self searchButton: (PluggableButtonMorph new
							label: 'go!';
							target: [self search];
							actionSelector: #value;
							yourself)