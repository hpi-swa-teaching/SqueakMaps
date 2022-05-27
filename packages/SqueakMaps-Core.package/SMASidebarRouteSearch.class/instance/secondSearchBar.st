submorphs - search bars
secondSearchBar
^ secondSearchBar ifNil: 
		[secondSearchBar := self basicSearchbar
						balloonText: 'Enter Destination Location';
						name: 'Second Search Bar';
						yourself].