displaying
focusLocation: aSMALocation

	| centerWorldPos |

	centerWorldPos := self class geoCoordinatesToWorldPos: aSMALocation coordinates.
	self tiledMapMorph center: centerWorldPos.
	self setZoomForBoundingBox: aSMALocation boundingBox.
	self tiledMapMorph layoutChanged