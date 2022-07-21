displaying
displayRoute: aSMARoute

	| centerWorldPos zoom |
	
	centerWorldPos := self class latLongToWorldPos: aSMARoute getCenterLatLong.
	self tiledMapMorph center: centerWorldPos.
	self setRouteLineFrom: aSMARoute.

	zoom := self calculateZoomForBoundingBox: aSMARoute boundingBox.
	self tiledMapMorph zoom: zoom.
	
	self setAllMarkersFrom: aSMARoute.
	
	self tiledMapMorph layoutChanged.
	self tiledMapMorph changed