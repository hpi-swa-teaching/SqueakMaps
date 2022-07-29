displaying
focusLocations: aCollectionOfSMALocations


	| zoom centerGeoCoord centerWorldPos boundingBox |
	
	centerGeoCoord := self calculateCenterGeoCoordinatesFrom: aCollectionOfSMALocations.
	centerWorldPos := self class geoCoordinatesToWorldPos: centerGeoCoord.
	self tiledMapMorph center: centerWorldPos.
	
	boundingBox := self calculateBoundingBoxFrom: aCollectionOfSMALocations.
	zoom := self calculateZoomForBoundingBox: boundingBox.
	self tiledMapMorph zoom: (self tiledMapMorph tileSource clampZoom: zoom).
	self tiledMapMorph layoutChanged