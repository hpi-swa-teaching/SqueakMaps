initialization
initialize

	super initialize.

	self tileLoader: SMAMapTileLoader new.
	self center: 0.5 @ 0.5.
	self zoom: 0.
	self route: SMARouteLine new.
	self tileSource: SMAOpenStreetMapTileSource new.
	self layoutFrame: (LayoutFrame fractions: (0 @ 0 rect: 1 @ 1)).
	