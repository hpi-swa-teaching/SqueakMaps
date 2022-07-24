building
buildSidebarDirectionsChildren: aBuilder

	| children |
	
	children := OrderedCollection new.
	children add: (self buildDirectionsTopRow: aBuilder).
	children add: (self buildDirectionsStartInput: aBuilder).
	children add: (self buildDirectionsDestinationInput: aBuilder).
	self route ifNotNil: [children add: (self buildDirectionsRouteInformation: aBuilder)].
	
	^ children