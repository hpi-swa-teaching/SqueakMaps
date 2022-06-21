initialization
initialize

	super initialize.
	self tiledMapMorph: SMATiledMapMorph new.
	self tiledMapMorph onDoubleClickAction: [:aLatLong | self setSelectedPinTo: aLatLong].
	self geocoder: SMANominatimGeocoder new.
	self searchManager: SMASearchManager new.
	"TODO: Think of a nicer way!!!"
	self searchManager routingAPI apikey: self class openrouteserviceApiKey.
	self currentView: #search.