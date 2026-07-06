building
destinationRouteSelectionIndex: anInteger

	self routingUiModel destinationRouteSelectionIndex: anInteger.
	self changed: #destinationRouteSelectionIndex.
	((self currentView = #directions
		and: [self selectedStartRouteTarget notNil])
		and: [self selectedDestinationRouteTarget notNil])
			ifTrue: [self searchDirections]