building
selectCampusDetailTarget: aCampusDetailTarget

	self selectedCampusDetailTarget: aCampusDetailTarget.
	self changed: #buildCampusDetailPanelChildren.
	self changed: #buildSidebarTopChildren