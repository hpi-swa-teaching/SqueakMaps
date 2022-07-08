helping
setAllMarkersFrom: aSMARoute
	
	| startLocation destinationLocation startMarker destinationMarker markers |
	
	markers := Set new.
	startLocation := aSMARoute points first.
	destinationLocation := aSMARoute points last.
	startMarker := SMAMarker newAt: startLocation labeled: aSMARoute startLabel.
	destinationMarker := SMAMarker newAt: destinationLocation labeled: aSMARoute destinationLabel.
	
	markers addAll: { startMarker . destinationMarker }.
	self tiledMapMorph markers: markers