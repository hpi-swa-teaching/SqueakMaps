building
startRouteSelectionIndex: anInteger

	self routingUiModel startRouteSelectionIndex: anInteger.
	self changed: #startRouteSelectionIndex.
	((self currentView = #directions
		and: [self selectedStartRouteTarget notNil])
		and: [self selectedDestinationRouteTarget notNil])
			ifTrue: [self searchDirections]