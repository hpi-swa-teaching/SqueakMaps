testing
testORSGetRouteDistanceFromJson

	| json expectedDistance actualDistance |
	
	json := self validRouteResponseLongDistance.
	
	"Distance is in meters."
	expectedDistance := 6506.
	actualDistance := self orsAPI getRouteDistanceFrom: json.
	
	self assert: actualDistance class equals: SmallInteger.
	self assert: actualDistance equals: expectedDistance
	
	