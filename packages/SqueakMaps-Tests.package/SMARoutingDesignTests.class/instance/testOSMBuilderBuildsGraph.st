as yet unclassified
testOSMBuilderBuildsGraph

	| graph firstVertex secondVertex |
	graph := self routingGraph.
	firstVertex := graph vertexOfPointID: 1.
	secondVertex := graph vertexOfPointID: 2.
	self assert: graph size equals: 4.
	self assert: firstVertex notNil.
	self assert: (graph vertexOfPointID: 4) notNil.
	self assert: (graph edgeFrom: firstVertex to: secondVertex) notNil