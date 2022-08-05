initialization
initialize

	super initialize.

	self tileLoader: SMAMapTileLoader new;
		center: 0.5 @ 0.5;
		zoom: 0;
		route: SMARouteLine new;
		tileSource: SMAOpenStreetMapTileSource new;
		layoutFrame: (LayoutFrame fractions: (0 @ 0 rect: 1 @ 1))
	