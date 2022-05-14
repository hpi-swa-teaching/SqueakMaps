test
buildTestButton

	self testButton: (PluggableButtonMorph new
							label: 'test!';
							target: [self testMultiSearch];
							actionSelector: #value;
							yourself)