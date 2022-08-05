accessing
zoomClamped: anInteger

	self zoom: (self tileSource clampZoom: anInteger)