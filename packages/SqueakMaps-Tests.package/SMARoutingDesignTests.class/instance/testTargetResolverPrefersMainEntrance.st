testing
testTargetResolverPrefersMainEntrance

	| mainEntrance otherEntrance corner building builder graph endpoint |
	mainEntrance := self pointId: 10 lat: 0 lon: 0.
	mainEntrance entrance: 'main'.
	otherEntrance := self pointId: 11 lat: 0 lon: 1.
	otherEntrance entrance: 'yes'.
	corner := self pointId: 12 lat: 1 lon: 1.
	building := SMABuilding new points: {mainEntrance. otherEntrance. corner}; yourself.

	builder := SMARoutingGraphBuilder new.
	builder addVertex: mainEntrance levels: #().
	builder addVertex: otherEntrance levels: #().
	graph := builder build.
	endpoint := (SMARouteTargetResolver forGraph: graph) resolve: building.

	self assert: endpoint point == mainEntrance.
	self assert: endpoint vertex equals: 1
