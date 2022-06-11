initialization
initialize

	super initialize.
	self tiledMapMorph: SMATiledMapMorph new.
	self tiledMapMorph onDoubleClickAction: [:aLatLong | self setSelectedPinTo: aLatLong].
	self geocoder: SMANominatimGeocoder new.
	self currentView: #search.