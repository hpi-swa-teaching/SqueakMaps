running
setUp

	super setUp.
	self geocoder: (SMANominatimGeocoder new
		contentSource: SMAMockJsonUrlReader new;
		yourself)