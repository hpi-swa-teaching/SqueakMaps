displaying
focusLocation: aSMALocation

	| zoom centerWorldPos |

	centerWorldPos := self class latLongToWorldPos: aSMALocation latLong.
	self tiledMapMorph center: centerWorldPos.
	
	zoom := self calculateZoomForBoundingBox: aSMALocation boundingBox.
	self tiledMapMorph zoom: (self tiledMapMorph tileSource clampZoom: zoom).
	
	self tiledMapMorph layoutChanged.
	self tiledMapMorph changed