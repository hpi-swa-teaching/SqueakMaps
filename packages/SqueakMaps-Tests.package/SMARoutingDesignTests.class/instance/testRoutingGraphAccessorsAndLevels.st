testing
testRoutingGraphAccessorsAndLevels

	| graph one two edges edge |
	graph := self routingGraph.
	one := graph vertexOfPointID: 1.
	two := graph vertexOfPointID: 2.

	self assert: graph size equals: 4.
	self assert: (graph pointAtVertex: one) id equals: 1.
	self assert: (graph levelsAtVertex: one) asArray equals: #(0).
	self assert: (graph vertexOfPointID: 999) isNil.

	edges := OrderedCollection new.
	graph incidentEdgesOf: one do: [:each | edges add: each].
	self assert: edges size equals: 2.
	edge := graph edgeFrom: one to: two.
	self assert: edge notNil.
	self assert: edge u equals: one.
	self assert: edge v equals: two.
	self assert: edge levels asArray equals: #(0)
