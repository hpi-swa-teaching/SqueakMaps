testing
testDefaults

	| navigator |
	navigator := SMANavigator new.
	self assert: navigator routingAPI class equals: SMAORSRoutingAPI.
	self assert: navigator geocoder class equals: SMANominatimGeocoder
