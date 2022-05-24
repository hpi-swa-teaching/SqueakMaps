as yet unclassified
testORSGetBoundingBoxFromJson

	| json bbox |
	
	json := self orsAPI contentSource validRoute.
	bbox := self orsAPI getBoundingBoxFrom: json.
	
	self assert: bbox size equals: 2.
	bbox do: [:longLat | self assert: Point equals: longLat class].