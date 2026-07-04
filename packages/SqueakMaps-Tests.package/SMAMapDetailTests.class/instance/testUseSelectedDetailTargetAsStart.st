as yet unclassified
testUseSelectedDetailTargetAsStart

	| application target startIndex |

	application := SMAApplication new.
	application initializeMap.

	target := application routeTargets first value.
	startIndex := application
		routeSelectionIndexForTarget: target
		in: application routeTargets.

	application selectCampusDetailTarget: target.
	application useSelectedDetailTargetAsStart.

	self assert: application currentView equals: #directions.
	self assert: application startRouteSelectionIndex equals: startIndex.
	self assert: application destinationRouteSelectionIndex equals: 0.
	self assert: application selectedCampusDetailTarget isNil