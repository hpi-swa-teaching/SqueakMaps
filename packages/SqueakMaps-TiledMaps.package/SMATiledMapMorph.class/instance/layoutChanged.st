layout
layoutChanged

	super layoutChanged.
	zoom := (self clampZoom: self zoom).
	center := (self center x) @ (self clampCenterY: (self center y)).
	self computeTileMetrics