as yet unclassified
testSelectingCampusDetailTargetKeepsRouteStart

	| application target |

	application := SMAApplication new.
	application initializeMap.

	target := application routeTargets first value.
	application startRouteSelectionIndex: 0.
	application selectCampusDetailTarget: target.

	self assert: application startRouteSelectionIndex equals: 0