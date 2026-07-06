testing
testRoutingGraphEdgeAccessorsAndLevelParsing

	| edge collectionLevels |
	edge := SMARoutingGraphEdge new
		u: 2;
		v: 7;
		levels: '0;2';
		yourself.
	self assert: edge u equals: 2.
	self assert: edge v equals: 7.
	self assert: (edge otherVertex: 2) equals: 7.
	self assert: (edge otherVertex: 7) equals: 2.
	self assert: edge levels asArray equals: #(0 2).

	edge levels: nil.
	self assert: edge levels isEmpty.
	collectionLevels := OrderedCollection with: 3.
	edge levels: collectionLevels.
	self assert: edge levels == collectionLevels
