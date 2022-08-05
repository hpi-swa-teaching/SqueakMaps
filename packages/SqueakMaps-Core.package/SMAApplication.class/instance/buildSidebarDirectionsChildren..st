building
buildSidebarDirectionsChildren: aBuilder

	| children |
	
	children := OrderedCollection new.
	children 
		add: (self buildDirectionsTopRow: aBuilder);
		add: (self buildDirectionsStartInput: aBuilder);
		add: (self buildDirectionsDestinationInput: aBuilder);
		add: (self buildDirectionsGoButton: aBuilder).
	self route ifNotNil: [children add: (self buildDirectionsRouteInformation: aBuilder)].
	
	^ children