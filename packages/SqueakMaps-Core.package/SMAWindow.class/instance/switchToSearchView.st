user interface
switchToSearchView

	self currentView: #search.
	self changed: #currentView.
	self changed: #buildSidebarTopChildren.