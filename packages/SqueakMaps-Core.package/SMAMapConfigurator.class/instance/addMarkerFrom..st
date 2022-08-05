helping
addMarkerFrom: aSMALocation
	
	| point |
	
	point := self class geoCoordinatesToWorldPos: aSMALocation coordinates.
	self tiledMapMorph addMarker: (SMAMarker newAt: point labeled: aSMALocation label)