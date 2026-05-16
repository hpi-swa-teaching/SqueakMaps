displaying
displayRoute: aSMARoute

	| centerWorldPos |
	
	centerWorldPos := self class geoCoordinatesToWorldPos: aSMARoute getCenterGeoCoordinates.
	self tiledMapMorph center: centerWorldPos.
	self setRouteLineFrom: aSMARoute;
		setZoomForBoundingBox: aSMARoute boundingBox;
		addAllMarkersFrom: aSMARoute.
	self tiledMapMorph layoutChanged