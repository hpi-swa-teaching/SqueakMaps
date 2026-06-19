helping
addAllMarkersFrom: aSMARoute
	
	| startPoint destinationPoint startMarker destinationMarker |
	
	startPoint := self class geoCoordinatesToWorldPos: aSMARoute waypoints first.
	destinationPoint := self class geoCoordinatesToWorldPos: aSMARoute waypoints last.
	startMarker := SMAMarker newAt: startPoint labeled: aSMARoute startLabel.
	destinationMarker := SMAMarker newAt: destinationPoint labeled: aSMARoute destinationLabel.
	
	self tiledMapMorph markers add: startMarker.
	self tiledMapMorph markers add: destinationMarker.