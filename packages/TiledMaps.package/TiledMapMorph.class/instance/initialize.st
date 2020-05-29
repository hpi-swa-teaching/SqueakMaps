initialization
initialize
	super initialize.

	tileLoader := MapTileLoader instance.
	center := 0.5@0.5.
	zoom := 0.
	pins := Set new.
	tileSource := OpenStreetMapTileSource instance.
	geocoder := NominatimGeocoder new.

	self extent: 320@320.
