running
setUp
	
	super setUp.
	
	self routingAPIMock: SMARoutingAPIMock new.
	self geocoderMock: SMAGeocoderMock new.
	
	self berlinLocation: (SMALocation new
		label: 'Berlin';
		coordinates: (SMAGeoCoordinate newLong: 1 Lat: 1);
		boundingBox: (1 @ 1 corner: 2 @ 2);
		yourself).
	self londonLocation: (SMALocation new
		label: 'London';
		coordinates: (SMAGeoCoordinate newLong: 2 Lat: 2);
		boundingBox: (2 @ 2 corner: 3 @ 3);
		yourself).
	
	self model: SMAApplication new.
	self model navigator routingAPI: self routingAPIMock.
	self model navigator geocoder: self geocoderMock
	