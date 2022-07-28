testing
testORSGetBoundingBoxFromJson

	| json bbox |
	
	json := self validRouteResponse.
	bbox := self orsAPI getBoundingBoxFrom: json.
	
	self assert: Rectangle equals: bbox class.
	self assert: bbox height > 0.
	self assert: bbox width > 0