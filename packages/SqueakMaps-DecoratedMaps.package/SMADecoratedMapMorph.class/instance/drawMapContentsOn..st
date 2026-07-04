accessing
drawMapContentsOn: aCanvas

	self drawTilesOn: aCanvas.
	self drawRoute: self route On: aCanvas.
	self updateRoomOverlayZoomState.
	self drawVisibleOverlaysOn: aCanvas.
	self drawPointsOfInterestOn: aCanvas.
	self drawMarkersOn: aCanvas.
	self drawLevelSelectorOn: aCanvas