testing
testRoutingWayDefaultsAndLevelParsing

	| way points |
	way := SMARoutingWay new.
	self assert: way points isEmpty.
	way levels: nil.
	self assert: way levels isEmpty.
	way levels: '-1;0;2'.
	self assert: way levels asArray equals: #(-1 0 2).
	points := OrderedCollection with: 1 with: 2.
	way points: points.
	self assert: way points == points
