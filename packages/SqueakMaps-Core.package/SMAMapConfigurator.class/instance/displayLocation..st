as yet unclassified
displayLocation: aSMAPin

	| zoom centerWorldPos |

	centerWorldPos := self class latLongToWorldPos: aSMAPin latLong.
	self tiledMapMorph center: centerWorldPos.
	
	zoom := self calculateZoomForBoundingBox: aSMAPin boundingBox.
	self tiledMapMorph zoom: (self tiledMapMorph tileSource clampZoom: zoom).
	
	self makeMarkerOfLocation: aSMAPin.
	self clearRoute.
	
	self tiledMapMorph layoutChanged.
	self tiledMapMorph changed