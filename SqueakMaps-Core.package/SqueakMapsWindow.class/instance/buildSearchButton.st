as yet unclassified
buildSearchButton
	self searchButton: (
		SimpleButtonMorph new 
			color: self defaultButtonColor; 
			label: 'go!'; 
			target: [
				self tiledMapMorph locate: self searchBar contents asString
			]; 
			actionSelector: #value)