accessing
zoom: anInteger

	zoom := self clampZoom: anInteger.
	self layoutChanged.
	self changed