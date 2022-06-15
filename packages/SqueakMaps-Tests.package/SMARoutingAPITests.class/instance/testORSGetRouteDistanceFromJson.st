as yet unclassified
testORSGetRouteDistanceFromJson

	| json distance |
	
	json := self orsAPI contentSource validRoute.
	distance := self orsAPI getRouteDistanceFrom: json.
	
	self assert: SmallInteger equals: distance class.
	self assert: distance > 0.
	
	