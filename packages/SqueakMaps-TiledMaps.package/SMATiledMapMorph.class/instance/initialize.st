initialization
initialize

	super initialize.

	tileLoader := SMAMapTileLoader new.
	center := 0.5@0.5.
	zoom := 0.
	pins := OrderedCollection new.
	tileSource := SMAOpenStreetMapTileSource new.
	geocoder := SMANominatimGeocoder new.
	route := SMARoute new.

	self layoutFrame: (LayoutFrame fractions: (0@0 rect: 1@1)).