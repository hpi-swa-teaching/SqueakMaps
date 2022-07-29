testing
testGetBoundingBoxFromJson

	| json boundingBox validBoundingBox |
	
	json := self validLocateResponse first.
	boundingBox := self geocoder getBoundingBoxFrom: json.
	validBoundingBox := 13.088345 @ 52.3382448 corner: 13.7611609 @ 52.6755087.
	
	self assert: Rectangle equals: boundingBox class.
	self assert: boundingBox equals: validBoundingBox.
	self assert: boundingBox height > 0.
	self assert: boundingBox width > 0