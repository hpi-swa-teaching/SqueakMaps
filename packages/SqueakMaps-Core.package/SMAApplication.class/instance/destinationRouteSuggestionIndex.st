building
destinationRouteSuggestionIndex

	| target |

	self destinationRouteSelectionIndex = 0 ifTrue: [^ 0].
	target := self destinationRouteTargets
		at: self destinationRouteSelectionIndex
		ifAbsent: [^ 0].
	^ self
		routeSelectionIndexForTarget: target
		in: self destinationRouteSuggestionTargets
