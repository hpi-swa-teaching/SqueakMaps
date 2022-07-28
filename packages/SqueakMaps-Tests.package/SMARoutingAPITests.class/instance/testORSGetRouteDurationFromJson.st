testing
testORSGetRouteDurationFromJson

	| json duration |
	
	json := self validRouteResponse.
	duration := self orsAPI getRouteDurationFrom: json.
	
	self assert: SmallInteger equals: duration class.
	self assert: duration > 0
	
	