building
selectCampusDetailTarget: aCampusDetailTarget

	self mapConfigurator clear.
	self campusDetailModel selectTarget: aCampusDetailTarget.
	self changed: #buildCampusDetailPanelChildren.
	self changed: #buildSidebarTopChildren