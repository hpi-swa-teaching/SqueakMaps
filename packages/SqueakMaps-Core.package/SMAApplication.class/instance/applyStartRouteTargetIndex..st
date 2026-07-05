building
applyStartRouteTargetIndex: startIndex

	self switchToDirectionsView.
	self startRouteSelectionIndex: startIndex.
	self startSearchInput: (self routeSelectionLabels at: startIndex ifAbsent: [''])