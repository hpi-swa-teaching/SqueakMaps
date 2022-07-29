testing
testORSGetBoundingBoxFromJson

	| json expectedBoundingBox actualBoundingBox |
	
	json := self validRouteResponse.
	expectedBoundingBox := 13.128474 @ 52.39385 corner: 13.129373 @ 52.393877.			
	
	actualBoundingBox := self orsAPI getBoundingBoxFrom: json.
	
	self assert: actualBoundingBox class equals: Rectangle.
	self assert: actualBoundingBox equals: expectedBoundingBox.
	self assert: actualBoundingBox height > 0.
	self assert: actualBoundingBox width > 0