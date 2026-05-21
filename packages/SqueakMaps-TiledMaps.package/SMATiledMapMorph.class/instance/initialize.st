initialization
initialize

	super initialize.

	tileLoader := SMAMapTileLoader new.
	tileSource := SMAOpenStreetMapTileSource new.
	self tileSize: self tileSource tileSize.

	center := 0.5 @ 0.5.
	zoom := self zoomMin.
	self clearRoutes.

	self layoutFrame: (LayoutFrame fractions: (0 @ 0 rect: 1 @ 1))