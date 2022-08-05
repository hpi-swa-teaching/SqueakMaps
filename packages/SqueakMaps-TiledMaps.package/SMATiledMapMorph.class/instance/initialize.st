initialization
initialize

	super initialize.

	self 
		tileLoader: SMAMapTileLoader new;
		tileSource: SMAOpenStreetMapTileSource new;
		center: 0.5 @ 0.5;
		tileSize: self tileSource tileSize;
		zoom: self zoomMin;
		route: SMARouteLine new;
		layoutFrame: (LayoutFrame fractions: (0 @ 0 rect: 1 @ 1))
	