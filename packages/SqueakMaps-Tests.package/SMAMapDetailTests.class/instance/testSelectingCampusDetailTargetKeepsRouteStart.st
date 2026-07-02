as yet unclassified
testSelectingCampusDetailTargetKeepsRouteStart

	| application target |

	application := SMAApplication new.
	target := application routeTargets first value.
	application startRouteSelectionIndex: 0.
	application selectCampusDetailTarget: target.

	self assert: 0 equals: application startRouteSelectionIndex