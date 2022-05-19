build buttons and input fields
buildSearchBar

	self searchBar: (PluggableTextMorphPlus new
						balloonText: 'Enter Search Location';
						setText: '';
						wrapFlag: true;
						name: 'Search Bar';
						yourself).
	self searchBar textMorph crAction: (MessageSend receiver: self selector: #search)