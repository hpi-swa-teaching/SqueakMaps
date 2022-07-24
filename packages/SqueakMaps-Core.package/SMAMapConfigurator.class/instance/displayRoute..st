displaying
displayRoute: aSMARoute

	| centerWorldPos zoom |

	centerWorldPos := self class geoCoordinatesToWorldPos: aSMARoute getCenterGeoCoordinates.
	self tiledMapMorph center: centerWorldPos.
	self setRouteLineFrom: aSMARoute.

	zoom := self calculateZoomForBoundingBox: aSMARoute boundingBox.
	self tiledMapMorph zoom: zoom.

	self setAllMarkersFrom: aSMARoute.

	self tiledMapMorph 
		layoutChanged;
		changed