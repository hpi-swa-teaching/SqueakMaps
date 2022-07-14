testing
testORSIsApiKeyValid
	
	self orsAPI contentSource expectedReturn: #noApiKey.
	self should: [self orsAPI getRouteFrom: 0 @ 0 To: 0 @ 0 By: orsAPI defaultTransportationMode] 
		raise: SMAInvalidApiKeyError 
		description: 'Wrong error thrown'.
		
	self orsAPI contentSource expectedReturn: #wrongApiKey.
	self should: [self orsAPI getRouteFrom: 0 @ 0 To: 0 @ 0 By: orsAPI defaultTransportationMode] 
		raise: SMAInvalidApiKeyError
		description: 'Wrong error thrown'.
		
	self orsAPI contentSource expectedReturn: #correctApiKey.
	self should: [self orsAPI getRouteFrom: 0 @ 0 To: 0 @ 0 By: orsAPI defaultTransportationMode] 
		raise: SMAUnreachableDestinationError 
		description: 'Wrong error thrown'.
		
	