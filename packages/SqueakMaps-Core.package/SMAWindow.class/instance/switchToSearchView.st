user interface
switchToSearchView

	self currentView: #search.
	self hasSearched: false.
	self changed: #currentView.
	self changed: #buildSidebarTopChildren.