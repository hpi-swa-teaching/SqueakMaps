user interface
switchToDirectionsView

	self setDestinationSearchInput.
	self searchInput: ''.
	self hasSearched: false.
	self currentView: #directions.
	self changed: #currentView.
	self changed: #buildSidebarTopChildren.