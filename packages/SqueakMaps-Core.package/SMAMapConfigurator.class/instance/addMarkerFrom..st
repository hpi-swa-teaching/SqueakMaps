helping
addMarkerFrom: aSMALocation
	
	| point |
	
	point := self class geoCoordinatesToWorldPos: aSMALocation coordinates.
	self tiledMapMorph markers add: (SMAMarker newAt: point labeled: aSMALocation label)