user interface
switchToDirectionsView

	self setDestinationSearchInput.
	self startSearchInput: ''.
	self searchInput: ''.
	self clearRoutes.
	self hasSearched: false.
	self currentView: #directions.
	self changed: #currentView.
	self changed: #buildSidebarTopChildren