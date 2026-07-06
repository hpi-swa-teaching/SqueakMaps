testing
testRouteLineAccessorsAndColors

	| route bounds segments |
	route := SMARouteLine new.
	bounds := 1 @ 2 corner: 3 @ 4.
	segments := OrderedCollection with: {1 @ 1. 2 @ 2. #(0)}.
	route boundingBox: bounds.
	route color: Color green.
	route segments: segments.

	self assert: route boundingBox equals: bounds.
	self assert: route color equals: Color green.
	self assert: route segments == segments.
	self assert: route visibleColor notNil.
	self assert: route hiddenColor notNil
