initialization
initialize

	super initialize.
	self tiledMapMorph: SMATiledMapMorph new.
	self mapConfigurator: (SMAMapConfigurator newWith: self tiledMapMorph).
	self geocoder: SMANominatimGeocoder new.
	self searchManager: SMASearchManager new.
	self currentView: #search.
	
	self tiledMapMorph onDoubleClickAction: [:aLatLong | self setSelectedPinTo: aLatLong].
	
	