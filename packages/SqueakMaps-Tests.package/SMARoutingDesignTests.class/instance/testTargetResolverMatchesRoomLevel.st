testing
testTargetResolverMatchesRoomLevel

	| levelZero levelTwo door room builder graph endpoint |
	levelZero := self pointId: 1 lat: 0 lon: 0.
	levelTwo := self pointId: 2 lat: 0 lon: 0.
	door := self pointId: 3 lat: 0 lon: 0.
	door door: 'yes'.
	room := SMARoom new points: {door}; level: 2; yourself.

	builder := SMARoutingGraphBuilder new.
	builder addVertex: levelZero levels: #(0).
	builder addVertex: levelTwo levels: #(2).
	graph := builder build.
	endpoint := (SMARouteTargetResolver forGraph: graph) resolve: room.

	self assert: endpoint vertex equals: 2.
	self assert: endpoint levels equals: {2}
