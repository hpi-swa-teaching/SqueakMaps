accessing
addRoute: aSMARoute

	self routes add: aSMARoute.
	self hasSearched: true;
		changed: #buildSidebarTopChildren