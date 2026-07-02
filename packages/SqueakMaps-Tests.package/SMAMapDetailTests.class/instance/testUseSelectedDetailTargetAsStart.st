as yet unclassified
testUseSelectedDetailTargetAsStart

	| application target startIndex |

	application := SMAApplication new.
	target := application routeTargets first value.
	startIndex := application
		routeSelectionIndexForTarget: target
		in: application routeTargets.
	application selectCampusDetailTarget: target.
	application useSelectedDetailTargetAsStart.

	self assert: #directions equals: application currentView.
	self assert: startIndex equals: application startRouteSelectionIndex.
	self assert: 0 equals: application destinationRouteSelectionIndex.
	self assert: application selectedCampusDetailTarget isNil