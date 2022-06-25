as yet unclassified
displayLocation: aSMAGeocoderResult

	| zoom |

	self tiledMapMorph center: aSMAGeocoderResult worldPos.
	
	zoom := self calculateZoomForBoundingBox: aSMAGeocoderResult boundingBox.
	self tiledMapMorph zoom: (self tiledMapMorph tileSource clampZoom: zoom).
	
	self makeMarkerOfLocation: aSMAGeocoderResult.
	
	self tiledMapMorph layoutChanged.
	self tiledMapMorph changed