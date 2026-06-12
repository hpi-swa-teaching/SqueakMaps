displaying
displayRoutes: aCollectionOfSMARoutes

	| bBox center n r |
	
	n := aCollectionOfSMARoutes size.
	bBox := aCollectionOfSMARoutes first boundingBox.
	aCollectionOfSMARoutes allButFirst do: [:m |
    			bBox := bBox merge: m boundingBox].
	
	0 to: n-1 do: [:i |
		r := aCollectionOfSMARoutes at: i+1.
		self setRouteLineFrom: r withColorIndex: (i \\ (SMARouteLine routeColorCollection size)+1);
		addAllMarkersFrom: r.].
	
	self setZoomForBoundingBox: bBox.
	center := bBox bottomLeft + ((bBox topRight - bBox bottomLeft) / 2).
	self tiledMapMorph center: (self class geoCoordinatesToWorldPos: (SMAGeoCoordinate newFrom: center)).
	self tiledMapMorph layoutChanged
	
