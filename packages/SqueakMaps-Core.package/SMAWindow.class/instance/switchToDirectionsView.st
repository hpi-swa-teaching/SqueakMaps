user interface
switchToDirectionsView

	self destinationSearchInput: self selectedPin label.
	self searchInput: ''.
	self currentView: #directions.
	self changed: #currentView.
	self changed: #buildSidebarTopChildren.