layout
layoutChanged

	super layoutChanged.
	self 
		zoomClamped: self zoom;
		center: (self center x) @ (self clampWorldPosHeight: (self center y));
		computeTileMetrics