building
destinationRouteSuggestionIndex

	| association |
	self destinationRouteSelectionIndex = 0 ifTrue: [^ 0].
	association := self destinationRouteTargets
		at: self destinationRouteSelectionIndex
		ifAbsent: [^ 0].
	^ self
		routeSelectionIndexForTarget: association value
		in: self destinationRouteSuggestionTargets