accessing
drawMapContentsOn: aCanvas

	self
		drawTilesOn: aCanvas;
		drawRoute: self route On: aCanvas;
		updateRoomOverlayZoomState;
		drawVisibleOverlaysOn: aCanvas;
		drawPointsOfInterestOn: aCanvas;
		drawMarkersOn: aCanvas;
		drawRoomLabelOn: aCanvas;
		drawLevelSelectorOn: aCanvas