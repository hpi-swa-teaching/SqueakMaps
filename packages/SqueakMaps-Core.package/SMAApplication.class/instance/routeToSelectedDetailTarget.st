building
routeToSelectedDetailTarget

	| target destinationIndex startIndex |
	target := self selectedCampusDetailTarget.
	target ifNil: [^ self].
	destinationIndex := self
		routeSelectionIndexForTarget: target
		in: self destinationRouteTargets.
	startIndex := self startRouteSelectionIndex = 0
		ifTrue: [self defaultStartRouteIndex]
		ifFalse: [self startRouteSelectionIndex].
	(startIndex = 0 or: [destinationIndex = 0]) ifTrue: [
		^ self inform: 'Für diese Auswahl konnte keine Route gefunden werden.'].
	self selectedCampusDetailTarget: nil.
	self destinationRouteSelectionIndex: 0.
	self switchToDirectionsView.
	self startRouteSelectionIndex: startIndex.
	self destinationRouteSelectionIndex: destinationIndex.
	self startSearchInput: (self routeSelectionLabels at: startIndex ifAbsent: ['']).
	self destinationSearchInput: (self destinationRouteSelectionLabels at: destinationIndex ifAbsent: [''])