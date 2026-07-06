building
routeSelectionIndexForTarget: aRouteTarget in: aCollectionOfRouteTargets

	| index target |
	target := self
		routeTargetFor: aRouteTarget
		in: aCollectionOfRouteTargets.
	target ifNil: [^ 0].
	index := 1.
	aCollectionOfRouteTargets do: [:routeTarget |
		(self routeTarget: routeTarget equals: target)
			ifTrue: [^ index].
		index := index + 1].
	^ 0
