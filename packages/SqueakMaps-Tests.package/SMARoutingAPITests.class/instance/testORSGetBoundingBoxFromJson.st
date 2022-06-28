as yet unclassified
testORSGetBoundingBoxFromJson

	| json bbox |
	
	json := self orsAPI contentSource validRoute.
	bbox := self orsAPI getBoundingBoxFrom: json.
	
	self assert: Rectangle equals: bbox class.
	self assert: bbox height > 0.
	self assert: bbox width > 0