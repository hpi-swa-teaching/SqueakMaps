build buttons and input fields
buildSearchBar
	self searchBar: (PluggableTextMorphPlus new
						balloonText: 'Enter Search Location';
						setText: '';
						wrapFlag: true).
	self searchBar textMorph crAction: (MessageSend receiver: self selector: #searchLocation)