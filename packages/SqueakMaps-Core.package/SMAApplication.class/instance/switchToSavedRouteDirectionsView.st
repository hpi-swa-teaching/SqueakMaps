user interface
switchToSavedRouteDirectionsView

	self hopSearchInput: ''.
	self hasSearched: true.
	self currentView: #directions.
	self changed: #currentView.
	self changed: #buildSidebarTopChildren.
	self changed: #hopLocations.
	self changed: #hopLocationLabels.