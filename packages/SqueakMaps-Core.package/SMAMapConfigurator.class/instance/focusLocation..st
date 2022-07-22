displaying
focusLocation: aSMALocation

	| zoom centerWorldPos |

	centerWorldPos := self class geoCoordinatesToWorldPos: aSMALocation coordinates.
	self tiledMapMorph center: centerWorldPos.
	
	zoom := self calculateZoomForBoundingBox: aSMALocation boundingBox.
	self tiledMapMorph zoom: (self tiledMapMorph tileSource clampZoom: zoom).
	
	self tiledMapMorph 
		layoutChanged;
		changed