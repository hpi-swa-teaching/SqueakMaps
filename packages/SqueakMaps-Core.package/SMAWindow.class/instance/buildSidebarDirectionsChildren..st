building
buildSidebarDirectionsChildren: aBuilder

	| children |
	children := OrderedCollection new.
	children add: (self buildDirectionsTransportationRow: aBuilder).
	children add: (self buildDirectionsCancelButton: aBuilder).
	children add: (self buildDirectionsStartInput: aBuilder).
	children add: (self buildDirectionsDestinationInput: aBuilder).
	children add: (self buildDirectionsGoButton: aBuilder).
	^ children