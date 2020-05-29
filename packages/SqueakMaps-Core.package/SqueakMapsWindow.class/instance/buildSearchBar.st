build buttons and input fields
buildSearchBar
	self searchBar: (TextMorph new
		backgroundColor: self defaultInputFieldColor;
		contents: '';
		balloonText: 'enter search location').
	self searchBar crAction: (MessageSend receiver: self selector: #searchLocation)