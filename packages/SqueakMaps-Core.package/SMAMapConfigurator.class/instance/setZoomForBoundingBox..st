helping
setZoomForBoundingBox: aRectangle

	| zoom |
	zoom := self calculateZoomForBoundingBox: aRectangle.
	self tiledMapMorph zoom: (self tiledMapMorph tileSource clampZoom: zoom).
	self tiledMapMorph layoutChanged