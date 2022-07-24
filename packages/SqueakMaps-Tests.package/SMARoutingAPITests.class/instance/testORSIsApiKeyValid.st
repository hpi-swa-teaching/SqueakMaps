testing
testORSIsApiKeyValid
	
	| coordinates |
	
	self orsAPI contentSource expectedReturn: #noApiKey.
	coordinates := SMAGeoCoordinate newFrom: 0 @ 0.
	self should: [self orsAPI getRouteFrom: coordinates To: coordinates By: orsAPI defaultTransportationMode] 
		raise: SMAInvalidApiKeyError 
		description: 'Wrong error thrown'.
		
	self orsAPI contentSource expectedReturn: #wrongApiKey.
	self should: [self orsAPI getRouteFrom: coordinates To: coordinates By: orsAPI defaultTransportationMode] 
		raise: SMAInvalidApiKeyError
		description: 'Wrong error thrown'.
		
	self orsAPI contentSource expectedReturn: #correctApiKey.
	self should: [self orsAPI getRouteFrom: coordinates To: coordinates By: orsAPI defaultTransportationMode] 
		raise: SMAUnreachableDestinationError 
		description: 'Wrong error thrown'
		
	