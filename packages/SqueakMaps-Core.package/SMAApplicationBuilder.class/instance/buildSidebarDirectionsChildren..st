building
buildSidebarDirectionsChildren: aBuilder

	| children |
	
	children := OrderedCollection new.
	children 
		add: (self buildDirectionsTopRow: aBuilder);
		add: (self buildDirectionsGoButton: aBuilder);
		add: (self buildDirectionsOptimalRouteButton: aBuilder);
		add: (self buildSaveRouteButton: aBuilder);
		add: (self buildDirectionsHopList: aBuilder);
		add: (self buildDirectionsAddHopButton: aBuilder);
		add: (self buildDirectionsAddSelectedPinButton: aBuilder);
		add: (self buildDirectionsRemoveHopButton: aBuilder);
		add: (self buildDirectionsHopSearchInput: aBuilder).
	self model routes isEmpty ifFalse: [children add: (self buildDirectionsRouteInformation: aBuilder)].
	
	^ children