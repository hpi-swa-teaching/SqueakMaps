initialization
initialize

	super initialize.
	self tiledMapMorph: SMATiledMapMorph new.
	self tiledMapMorph onDoubleClickAction: [:aLatLong | self setSelectedPinTo: aLatLong.
																			self changed: #getPinInformationLabel.].
	self geocoder: SMANominatimGeocoder new.
	self currentView: #search.