pin management
setSelectedPin: aSMAPin

	self selectedPin: aSMAPin.
	self changed: #buildSearchPinPanelChildren.
	self switchToSearchView