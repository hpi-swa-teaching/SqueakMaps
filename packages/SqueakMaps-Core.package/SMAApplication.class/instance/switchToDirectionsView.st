user interface
switchToDirectionsView

	self destinationRouteSelectionIndex: 0.
	self setDestinationSearchInput.
	self searchInput: ''.
	self route: nil.
	self hasSearched: false.
	self currentView: #directions.
	self startRouteSelectionIndex: self defaultStartRouteIndex.
	self startSearchInput: (self routeSelectionLabels at: self defaultStartRouteIndex ifAbsent: ['']).
	self changed: #currentView.
	self changed: #buildSidebarTopChildren