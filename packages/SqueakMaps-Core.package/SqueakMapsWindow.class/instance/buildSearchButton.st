build buttons and input fields
buildSearchButton
	self searchButton: (
		SimpleButtonMorph new 
			color: self defaultButtonColor; 
			label: 'go!'; 
			target: [
				self searchLocation
			]; 
			actionSelector: #value)