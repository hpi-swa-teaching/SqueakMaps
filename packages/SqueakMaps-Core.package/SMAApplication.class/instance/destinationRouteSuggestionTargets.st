building
destinationRouteSuggestionTargets

	| query |
	query := self destinationSearchInput asLowercase.
	query isEmpty ifTrue: [^ self destinationRouteTargets].
	^ self destinationRouteTargets select: [:association |
		(association key asLowercase findString: query startingAt: 1) > 0]