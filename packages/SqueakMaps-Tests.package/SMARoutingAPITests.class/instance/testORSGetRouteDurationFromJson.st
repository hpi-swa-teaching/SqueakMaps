testing
testORSGetRouteDurationFromJson

	| json duration |
	
	json := self orsAPI contentSource validRoute.
	duration := self orsAPI getRouteDurationFrom: json.
	
	self assert: SmallInteger equals: duration class.
	self assert: duration > 0
	
	