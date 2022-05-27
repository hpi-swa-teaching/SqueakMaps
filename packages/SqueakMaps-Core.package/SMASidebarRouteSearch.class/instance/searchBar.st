submorphs - search bars
searchBar
^ searchBar ifNil: 
		[searchBar := self basicSearchbar
						balloonText: 'Enter Search Location';
						name: 'Search Bar';
						yourself].