displaying
displayRoute: aSMARoute

	| centerWorldPos |
	
	centerWorldPos := self class geoCoordinatesToWorldPos: aSMARoute getCenterGeoCoordinates.
	self tiledMapMorph center: centerWorldPos.
	self setRouteLineFrom: aSMARoute;
		setZoomForBoundingBox: aSMARoute boundingBox;
		setAllMarkersFrom: aSMARoute.
	self tiledMapMorph layoutChanged