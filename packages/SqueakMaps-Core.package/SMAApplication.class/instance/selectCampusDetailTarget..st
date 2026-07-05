building
selectCampusDetailTarget: aCampusDetailTarget

	self selectedCampusDetailTarget: aCampusDetailTarget.
	self selectedCampusDetailImageIndex: 1.
	self changed: #buildCampusDetailPanelChildren.
	self changed: #buildSidebarTopChildren