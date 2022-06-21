pin management
setSelectedPin: aSMAPin

	self clearRoute.
	self selectedPin: aSMAPin.
	self changed: #buildSearchPinPanelChildren.
	self tiledMapMorph removeAllMarkers.
	self tiledMapMorph placeMarkerAt: (aSMAPin latLong) labeled: (aSMAPin label).
	self tiledMapMorph center: (SMAMapTileLoader latLongToWorldPos: aSMAPin latLong).
	self tiledMapMorph zoom: self tiledMapMorph defaultZoom.
	self switchToSearchView.

	