building
selectCampusDetailTarget: aCampusDetailTarget

	self mapConfigurator clear.
	self selectedCampusDetailTarget: aCampusDetailTarget.
	self selectedCampusDetailImageIndex: 1.
	self changed: #buildCampusDetailPanelChildren.
	self changed: #buildSidebarTopChildren