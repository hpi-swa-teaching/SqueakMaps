test
buildTestButton

	self testButton: (PluggableButtonMorph new
							label: 'test!';
							target: [self searchMultipleLocations];
							actionSelector: #value;
							yourself)