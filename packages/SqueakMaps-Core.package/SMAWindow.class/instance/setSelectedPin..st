pin management
setSelectedPin: aSMAPin

	self clearRoute.
	self selectedPin: aSMAPin.
	self changed: #buildSearchPinPanelChildren.
	self tiledMapMorph removeAllPins.
	self tiledMapMorph placePinAt: (aSMAPin latLong) labeled: (aSMAPin label).
	self switchToSearchView.

	