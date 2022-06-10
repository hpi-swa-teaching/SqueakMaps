initialization
initialize

	super initialize.
	self tiledMapMorph: SMATiledMapMorph new.
	self tiledMapMorph onDoubleClickAction: [:aLatLong | self tiledMapMorph placePinAt: aLatLong labeled: (self geocoder reverse: aLatLong withZoom: self tiledMapMorph zoom)].
	self geocoder: SMANominatimGeocoder new.
	self currentView: #directions.