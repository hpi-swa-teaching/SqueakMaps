helping
setZoomForBoundingBox: aRectangle

	| zoom |
	zoom := self calculateZoomForBoundingBox: aRectangle.
	self tiledMapMorph zoomClamped: zoom.
	self tiledMapMorph layoutChanged