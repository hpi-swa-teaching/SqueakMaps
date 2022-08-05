helping
setZoomForBoundingBox: aRectangle

	self tiledMapMorph zoomClamped: (self calculateZoomForBoundingBox: aRectangle).
	self tiledMapMorph layoutChanged