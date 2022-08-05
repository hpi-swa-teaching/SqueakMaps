testing
testORSGetRouteDurationFromJson

	| json expectedDuration actualDuration |
	
	json := self validRouteResponseLongDistance.
	
	"Duration is in seconds."
	expectedDuration := 843.
	actualDuration := self orsAPI getRouteDurationFrom: json.
	
	self assert: actualDuration class equals: SmallInteger.
	self assert: actualDuration equals: expectedDuration
	
	