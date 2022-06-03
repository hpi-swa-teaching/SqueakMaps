building
buildSidebarDirectionsChildren: aBuilder

	| children |
	children := OrderedCollection new.
	children add: (self buildDirectionsTopRow: aBuilder).
	children add: (self buildDirectionsStartInput: aBuilder).
	children add: (self buildDirectionsDestinationInput: aBuilder).
	children add: (self buildDirectionsGoButton: aBuilder).
	children add: (self buildDirectionsRouteInformation: aBuilder).
	^ children