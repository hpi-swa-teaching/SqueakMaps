building
selectedDestinationRouteTarget

	| selectedTarget |
	self destinationRouteSelectionIndex = 0 ifTrue: [^ nil].
	selectedTarget := (self destinationRouteTargets at: self destinationRouteSelectionIndex ifAbsent: [^ nil]) value.
	^ self resolveDestinationRouteTarget: selectedTarget