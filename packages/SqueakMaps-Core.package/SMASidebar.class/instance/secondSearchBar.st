submorphs - search bars
secondSearchBar
^ secondSearchBar ifNil: 
		[secondSearchBar := self basicSearchbar
						balloonText: 'Enter Destination Location';
						name: 'Second Search Bar';
						target: [self owner search];
						yourself.
			self secondSearchBar textMorph crAction: (MessageSend receiver: (self owner) selector: #search).
			^ secondSearchBar].