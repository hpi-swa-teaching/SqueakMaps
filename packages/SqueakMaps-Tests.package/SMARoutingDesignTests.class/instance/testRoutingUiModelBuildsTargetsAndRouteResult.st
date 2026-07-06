as yet unclassified
testRoutingUiModelBuildsTargetsAndRouteResult

	| map printer model facade routeLine start destination result |

	map := SMADecoratedMapMorph new.
	printer := SMAPOIPrinter new
		lat: 1;
		lon: 1;
		yourself.
	map pointsOfInterest: { printer } asOrderedCollection.
	routeLine := Object new.
	facade := SMARoutingFacadeMock new
		routeLine: routeLine;
		yourself.
	model := SMARoutingUiModel new
		targetSource: map;
		routingFacade: facade;
		yourself.
	start := model defaultStartRouteTarget.
	destination := model destinationRouteTargets first.
	result := model routeResultFrom: start to: destination.

	self assert: model routeTargets size equals: 2.
	self assert: result first equals: routeLine.
	self assert: result second size equals: 2.
	self assert: facade startTarget equals: start place.
	self assert: facade destinationTarget equals: printer
