building
buildSidebarDirectionsChildren: aBuilder

	| children |
	
	children := OrderedCollection new.
	children 
		add: (self buildDirectionsTopRow: aBuilder);
		add: (self buildDirectionsGoButton: aBuilder);
		add: (self buildDirectionsOptimalRouteButton: aBuilder);
		add: (self buildDirectionsMoveUpButton: aBuilder);
		add: (self buildDirectionsMoveDownButton: aBuilder);
		add: (self buildDirectionsHopList: aBuilder);
		add: (self buildDirectionsAddHopButton: aBuilder);
		add: (self buildDirectionsHopSearchInput: aBuilder).
	self routes isEmpty ifFalse: [children add: (self buildDirectionsRouteInformation: aBuilder)].
	
	^ children