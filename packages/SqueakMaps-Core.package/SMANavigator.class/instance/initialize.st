initialize-release
initialize

	super initialize.
	self
		routingAPI: SMAORSRoutingAPI new;
		geocoder: SMANominatimGeocoder new