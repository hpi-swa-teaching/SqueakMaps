user interface
switchToSearchViewWith: aSMALocation

	self currentView: #search.
	self hasSearched: false.
	self selectedPin: aSMALocation.
	self changed: #currentView.
	self changed: #buildSidebarTopChildren