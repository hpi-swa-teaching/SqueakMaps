displaying
displayRoutes: aCollectionOfSMARoutes

	| bBox center |
	
	bBox := aCollectionOfSMARoutes first boundingBox.
	aCollectionOfSMARoutes allButFirst do: [:m |
    			bBox := bBox merge: m boundingBox].
	
	aCollectionOfSMARoutes do: [:r | 
			self setRouteLineFrom: r;
				addAllMarkersFrom: r.].
	
	self setZoomForBoundingBox: bBox.
	center := bBox bottomLeft + ((bBox topRight - bBox bottomLeft) / 2).
	self tiledMapMorph center: (self class geoCoordinatesToWorldPos: (SMAGeoCoordinate newFrom: center)).
	self tiledMapMorph layoutChanged
	
