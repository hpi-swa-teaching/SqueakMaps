building
destinationRouteSuggestionIndex: anInteger

	| target |

	anInteger = 0 ifTrue: [
		self destinationRouteSelectionIndex: 0.
		^ self].
	target := self destinationRouteSuggestionTargets
		at: anInteger
		ifAbsent: [^ self].
	self destinationRouteSelectionIndex: (self
		routeSelectionIndexForTarget: target
		in: self destinationRouteTargets).
	self destinationSearchInput: target label
