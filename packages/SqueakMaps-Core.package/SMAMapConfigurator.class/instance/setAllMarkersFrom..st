helping
setAllMarkersFrom: aSMARoute
	
	| startPoint destinationPoint startMarker destinationMarker markers |
	
	markers := Set new.
	
	startPoint := self class geoCoordinatesToWorldPos: aSMARoute points first.
	destinationPoint := self class geoCoordinatesToWorldPos: aSMARoute points last.
	startMarker := SMAMarker newAt: startPoint labeled: aSMARoute startLabel.
	destinationMarker := SMAMarker newAt: destinationPoint labeled: aSMARoute destinationLabel.
	
	markers addAll: { startMarker . destinationMarker }.
	self tiledMapMorph markers: markers