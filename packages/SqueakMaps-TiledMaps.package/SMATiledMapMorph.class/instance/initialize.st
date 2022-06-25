initialization
initialize

	super initialize.

	tileLoader := SMAMapTileLoader new.
	center := 0.5@0.5.
	zoom := 0.
	tileSource := SMAOpenStreetMapTileSource new.
	route := SMARoute new.

	self layoutFrame: (LayoutFrame fractions: (0@0 rect: 1@1)).