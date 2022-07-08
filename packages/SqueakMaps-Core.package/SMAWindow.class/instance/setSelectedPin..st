pin management
setSelectedPin: aSMALocation

	self selectedPin: aSMALocation.
	self changed: #buildSearchPinPanelChildren.
	self switchToSearchView