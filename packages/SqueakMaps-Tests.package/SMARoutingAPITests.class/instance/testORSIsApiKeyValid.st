testing
testORSIsApiKeyValid
	
	self orsAPI contentSource expectedReturn: #noApiKey.
	self should: [self orsAPI getRouteFrom: 0 @ 0 To: 0 @ 0 By: orsAPI defaultTransportationMode] 
		raise: Error
		whoseDescriptionIncludes: 'Authorization field missing'
		description: 'Wrong error thrown'.
		
	self orsAPI contentSource expectedReturn: #wrongApiKey.
	self should: [self orsAPI getRouteFrom: 0 @ 0 To: 0 @ 0 By: orsAPI defaultTransportationMode] 
		raise: Error
		whoseDescriptionIncludes: 'Access to this API has been disallowed'
		description: 'Wrong error thrown'.
		
	self orsAPI contentSource expectedReturn: #correctApiKey.
	self should: [self orsAPI getRouteFrom: 0 @ 0 To: 0 @ 0 By: orsAPI defaultTransportationMode] 
		raise: Error
		whoseDescriptionIncludes: 'Could not find routable point'
		description: 'Wrong error thrown'.
		
	