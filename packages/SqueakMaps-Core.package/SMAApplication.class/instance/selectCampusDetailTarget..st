building
selectCampusDetailTarget: aCampusDetailTarget

	self selectedCampusDetailTarget: aCampusDetailTarget.
	self startRouteSelectionIndex: (self
		routeSelectionIndexForTarget: aCampusDetailTarget
		in: self routeTargets).
	self changed: #buildCampusDetailPanelChildren.
	self changed: #buildSidebarTopChildren