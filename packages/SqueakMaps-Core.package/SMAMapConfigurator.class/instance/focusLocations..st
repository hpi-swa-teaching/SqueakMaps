displaying
focusLocations: aCollectionOfSMALocations

	| centerGeoCoord centerWorldPos boundingBox |
	
	boundingBox := self boundingBoxFor: aCollectionOfSMALocations.
	centerGeoCoord := SMAGeoCoordinate newFrom: boundingBox center.
	centerWorldPos := self class geoCoordinatesToWorldPos: centerGeoCoord.
	self tiledMapMorph center: centerWorldPos.
	self setZoomForBoundingBox: boundingBox.
	self tiledMapMorph layoutChanged