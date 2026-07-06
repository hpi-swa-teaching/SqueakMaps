testing
testTargetResolverRejectsUnsupportedTarget

	self assert: ((SMARouteTargetResolver forGraph: self routingGraph) resolve: Object new) isNil
