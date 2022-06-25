initialize-release
initialize

	super initialize.
	self routingAPI: SMAORSRoutingAPI new.
	self geocoder: SMANominatimGeocoder new.