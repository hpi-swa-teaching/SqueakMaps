testing
testORSGetRouteDistanceFromJson

	| json distance |
	
	json := self validRouteResponse.
	distance := self orsAPI getRouteDistanceFrom: json.
	
	self assert: SmallInteger equals: distance class.
	self assert: distance > 0
	
	