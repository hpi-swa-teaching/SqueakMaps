user interface
switchToDirectionsView

	self destinationSearchInput: self searchInput.
	self searchInput: ''.
	self hasSearched: false.
	self currentView: #directions.
	self changed: #currentView.
	self changed: #buildSidebarTopChildren.