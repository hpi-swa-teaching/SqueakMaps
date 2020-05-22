build buttons and input fields
buildApiButton
	self apiKeyButton: (
		SimpleButtonMorph new 
			color: self defaultButtonColor; 
			label: 'choose api key'; 
			target: [self buildApiMenu
			]; 
			actionSelector: #value)