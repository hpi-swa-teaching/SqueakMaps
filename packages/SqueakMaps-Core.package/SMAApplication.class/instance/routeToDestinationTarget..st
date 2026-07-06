building
routeToDestinationTarget: aRouteTarget

	| destinationIndex startIndex target |

	target := self
		routeTargetFor: aRouteTarget
		in: self destinationRouteTargets.
	destinationIndex := self
		routeSelectionIndexForTarget: target
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
