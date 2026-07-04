building
routeSelectionIndexForTarget: aRouteTarget in: aCollectionOfRouteTargets

	| index |
	index := 1.
	aCollectionOfRouteTargets do: [:association |
		(self routeTarget: association value equals: aRouteTarget)
			ifTrue: [^ index].
		index := index + 1].
	^ 0