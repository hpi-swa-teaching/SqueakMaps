testing - routing
testRouteSearchUsesSelectedTargetsAndCanBeCleared

	| targets start destination facade route |
	targets := application routeTargets.
	start := targets first value.
	destination := (application destinationRouteTargets detect: [:each | each value ~~ start]) value.
	facade := SMATestRoutingFacade new.
	route := SMARouteLine new
		points: {0.5 @ 0.5. 0.51 @ 0.51};
		segments: {{0.5 @ 0.5. 0.51 @ 0.51. #()}};
		yourself.
	facade route: route; distance: 10; point: (SMAPoint new lat: 52.39; lon: 13.13; yourself).
	application routingFacade: facade.
	application startRouteSelectionIndex:
		(application routeSelectionIndexForTarget: start in: application routeTargets).
	application destinationRouteSelectionIndex:
		(application routeSelectionIndexForTarget: destination in: application destinationRouteTargets).
	application searchDirections.
	self assert: application route == route.
	self assert: application hasSearched.
	application clearRoute.
	self assert: application route isNil.
	self deny: application hasSearched
