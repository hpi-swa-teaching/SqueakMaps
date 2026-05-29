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
	self parisLocation: (SMALocation new
		label: 'Paris';
		coordinates: (SMAGeoCoordinate newLong: 3 Lat: 3);
		boundingBox: (3 @ 3 corner: 4 @ 4);
		yourself).
		
	self model: SMAApplication new.
	self wantsToTest: self model build.
	self model navigator routingAPI: self routingAPIMock.
	self model navigator geocoder: self geocoderMock.
	self savedPinsBefore: self model class savedPins.