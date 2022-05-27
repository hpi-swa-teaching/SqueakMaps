submorphs - search bars
searchBar
^ searchBar ifNil: 
		[searchBar := self basicSearchbar
						balloonText: 'Enter Search Location';
						name: 'Search Bar';
						target: [self owner search];
						yourself.
			self searchBar textMorph crAction: (MessageSend receiver: (self owner) selector: #search).
			^ searchBar].