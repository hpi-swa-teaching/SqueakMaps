user interface
switchToSearchViewWith: aSMALocation

	self currentView: #search.
	self hasSearched: false.
	self setSelectedPin: aSMALocation.
	self changed: #currentView.
	self changed: #buildSidebarTopChildren