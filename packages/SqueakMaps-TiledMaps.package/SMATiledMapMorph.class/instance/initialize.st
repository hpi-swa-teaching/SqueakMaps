initialization
initialize

	super initialize.
	tileLoader := SMAMapTileLoader new.
	tileSource := SMAMapTileSourceCombination new.
	self tileSize: self tileSource tileSize.
	center := 0.5364687276112747 @ 0.3285305068851402.
	zoom := 17.
	self route: SMARouteLine new.
	self layoutFrame: (LayoutFrame fractions: (0 @ 0 rect: 1 @ 1))