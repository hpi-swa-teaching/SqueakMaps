accessing
zoom: anInteger
	zoom := tileSource clampZoom: anInteger.
	self layoutChanged.
	self changed.