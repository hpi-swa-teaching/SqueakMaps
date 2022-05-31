user interface
switchToDirectionsView

	self destinationSearchInput: self searchInput.
	self searchInput: ''.
	self currentView: #directions.
	self changed: #currentView.
	self changed: #buildSidebarTopChildren.