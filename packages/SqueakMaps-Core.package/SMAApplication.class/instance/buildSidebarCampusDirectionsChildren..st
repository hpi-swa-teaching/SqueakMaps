building
buildSidebarCampusDirectionsChildren: aBuilder

	| children |
	
	children := OrderedCollection new.
	children 
		add: (self buildCampusDirectionsTopRow: aBuilder);
		add: (self buildDirectionsStartInput: aBuilder);
		add: (aBuilder pluggableListSpec new
			model: self;
			list: #startRouteSuggestionLabels;
			getIndex: #startRouteSuggestionIndex;
			setIndex: #startRouteSuggestionIndex:;
			frame: (0 @ 0.2 corner: 1 @ 0.42);
			yourself);
		add: (self buildCampusDirectionsDestinationInput: aBuilder);
		add: (aBuilder pluggableListSpec new
			model: self;
			list: #destinationRouteSuggestionLabels;
			getIndex: #destinationRouteSuggestionIndex;
			setIndex: #destinationRouteSuggestionIndex:;
			frame: (0 @ 0.52 corner: 1 @ 0.78);
			yourself).
	self route ifNotNil: [children add: (self buildCampusDirectionsRouteInformation: aBuilder)].
	
	^ children