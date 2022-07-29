accessing
zoom: anInteger

	zoom := self tileSource clampZoom: anInteger.
	self layoutChanged