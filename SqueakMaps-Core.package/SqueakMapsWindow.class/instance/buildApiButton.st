build buttons and input fields
buildApiButton
	self apiKeyButton: (
		SimpleButtonMorph new 
			color: self defaultButtonColor; 
			label: 'select api'; 
			target: [self buildApiMenu
			]; 
			actionSelector: #value)