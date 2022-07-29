helping
setAllMarkersFrom: aSMARoute
	
	| startPoint destinationPoint startMarker destinationMarker markers |
	
	startPoint := self class geoCoordinatesToWorldPos: aSMARoute waypoints first.
	destinationPoint := self class geoCoordinatesToWorldPos: aSMARoute waypoints last.
	startMarker := SMAMarker newAt: startPoint labeled: aSMARoute startLabel.
	destinationMarker := SMAMarker newAt: destinationPoint labeled: aSMARoute destinationLabel.
	
	markers := Set newFrom: { startMarker . destinationMarker }.
	self tiledMapMorph markers: markers