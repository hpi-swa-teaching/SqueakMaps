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

	self extent: 320@320