layout
layoutChanged

	super layoutChanged.
	self zoom: (self clampZoom: self zoom).
	self center: (self center x) @ (self clampWorldPosHeight: (self center y)).
	self computeTileMetrics