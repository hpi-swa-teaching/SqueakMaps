testing
testFacadeDistanceFactoriesAndNilRoutes

	| graph facade start destination distance nilStrategy nilFacade |
	graph := self routingGraph.
	facade := SMARoutingFacade forGraph: graph using: SMADijkstraRoutingStrategy new.
	start := graph pointAtVertex: (graph vertexOfPointID: 1).
	destination := graph pointAtVertex: (graph vertexOfPointID: 3).
	distance := facade routeDistanceFrom: start to: destination.
	self assert: distance equals: 2.
	self assert: (facade pointForTarget: start) == start.
	self assert: (facade routeFrom: Object new to: destination) isNil.
	self assert: (facade routeDistanceFrom: start to: Object new) isNil.

	nilStrategy := SMATestRoutingStrategy new.
	nilFacade := SMARoutingFacade forGraph: graph using: nilStrategy.
	self assert: (nilFacade routeFrom: start to: destination) isNil.
	self assert: nilStrategy wasCalled.

	self assert: (SMARoutingFacade fromOSMFile: self simpleRoutingOSM) notNil
