user interface
switchToDirectionsView

	self hopSearchInput: ''.
	self clearRoutes.
	self hasSearched: false.
	self currentView: #directions.
	self changed: #currentView.
	self changed: #buildSidebarTopChildren.
	self hopLocations: OrderedCollection new.
	self selectedPin ifNotNil: [
		self hopLocations add: selectedPin.
	].
	self changed: #hopLocations.
	self changed: #hopLocationLabels.