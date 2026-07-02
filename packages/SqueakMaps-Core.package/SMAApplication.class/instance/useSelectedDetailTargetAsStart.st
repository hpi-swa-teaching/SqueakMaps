building
useSelectedDetailTargetAsStart

	| target startIndex destinationIndex destinationLabel |
	target := self selectedCampusDetailTarget.
	target ifNil: [^ self].
	startIndex := self
		routeSelectionIndexForTarget: target
		in: self routeTargets.
	startIndex = 0 ifTrue: [
		^ self inform: 'Dieser Ort kann nicht als Start verwendet werden.'].
	destinationIndex := self destinationRouteSelectionIndex.
	destinationLabel := self destinationSearchInput.
	self selectedCampusDetailTarget: nil.
	self switchToDirectionsView.
	self startRouteSelectionIndex: startIndex.
	self startSearchInput: (self routeSelectionLabels at: startIndex ifAbsent: ['']).
	destinationIndex = 0 ifFalse: [
		self destinationRouteSelectionIndex: destinationIndex.
		self destinationSearchInput: destinationLabel]