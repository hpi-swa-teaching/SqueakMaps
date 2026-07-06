building
startRouteSuggestionTargets

	| query |

	query := self startSearchInput asLowercase.
	query isEmpty ifTrue: [^ self routeTargets].
	^ self routeTargets select: [:target |
		(target label asLowercase findString: query startingAt: 1) > 0]
