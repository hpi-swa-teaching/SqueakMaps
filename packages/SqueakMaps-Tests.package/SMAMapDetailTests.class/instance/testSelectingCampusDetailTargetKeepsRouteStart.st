as yet unclassified
testSelectingCampusDetailTargetKeepsRouteStart

	| application target |

	application := SMAApplication new.
	application initializeMap.

	target := application routeTargets first.
	application startRouteSelectionIndex: 0.
	application selectCampusDetailTarget: target place.

	self assert: application startRouteSelectionIndex equals: 0
