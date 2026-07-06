running - areas
runAPIGeoservices
	^ self
		runAreaNamed: 'API und Geoservices'
		testClassNames: #(
			SMAGeoServiceTests
			SMANominatimGeocoderTests
			SMAOpenMensaMenuAPITests
			SMAOrsRoutingAPITests)
		targetClasses: (self classesInPackageNamed: 'SqueakMaps-GeoServices')
