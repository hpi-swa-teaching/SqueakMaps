building
routeSelectionIndexForTarget: aRouteTarget in: aCollectionOfRouteTargets

	| index |
	index := 1.
	aCollectionOfRouteTargets do: [:association |
		association value == aRouteTarget ifTrue: [^ index].
		index := index + 1].
	^ 0