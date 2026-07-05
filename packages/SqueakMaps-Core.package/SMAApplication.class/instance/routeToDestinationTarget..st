building
routeToDestinationTarget: aRouteTarget

	| destinationIndex startIndex |

	destinationIndex := self
		routeSelectionIndexForTarget: aRouteTarget
		in: self destinationRouteTargets.
	startIndex := self startRouteSelectionIndex = 0
		ifTrue: [self defaultStartRouteIndex]
		ifFalse: [self startRouteSelectionIndex].
	(startIndex = 0 or: [destinationIndex = 0]) ifTrue: [^ false].
	self selectedCampusDetailTarget: nil.
	self switchToDirectionsView.
	self startRouteSelectionIndex: startIndex.
	self destinationRouteSelectionIndex: destinationIndex.
	self startSearchInput: (self routeSelectionLabels at: startIndex ifAbsent: ['']).
	self destinationSearchInput: (self destinationRouteSelectionLabels at: destinationIndex ifAbsent: ['']).
	^ true