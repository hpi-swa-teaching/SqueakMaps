build buttons and input fields
buildApiInputField
	self apiKeyInputField: (TextMorph new 
		backgroundColor: self defaultInputFieldColor; 
		contents: '';
		balloonText: 'enter bing api key').