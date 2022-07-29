running
setUp

	super setUp.
	self geocoder: SMANominatimGeocoder new.
	self geocoder contentSource: SMAMockJsonUrlReader new