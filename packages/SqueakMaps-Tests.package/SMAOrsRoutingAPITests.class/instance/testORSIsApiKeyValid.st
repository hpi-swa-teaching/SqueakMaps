testing
testORSIsApiKeyValid
	
	| coordinates |
	
	self orsAPI contentSource mockGetJsonFromWith: [SMAInvalidApiKeyError signal].
	coordinates := SMAGeoCoordinate newFrom: 0 @ 0.
	self should: [self orsAPI getRouteFrom: coordinates to: coordinates by: self orsAPI defaultTransportationMode] 
		raise: SMAInvalidApiKeyError 
		description: 'Wrong error thrown'.
		
	self orsAPI contentSource mockGetJsonFromWith: [SMAInvalidApiKeyError signal].
	self should: [self orsAPI getRouteFrom: coordinates to: coordinates by: self orsAPI defaultTransportationMode] 
		raise: SMAInvalidApiKeyError
		description: 'Wrong error thrown'.
		
	self orsAPI contentSource mockGetJsonFromWith: [^ self nonRoutableResponse].
	self should: [self orsAPI getRouteFrom: coordinates to: coordinates by: self orsAPI defaultTransportationMode] 
		raise: SMAUnreachableDestinationError 
		description: 'Wrong error thrown'
		
	