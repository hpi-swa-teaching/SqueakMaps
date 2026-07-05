building
destinationRouteSuggestionIndex: anInteger

	| association |
	anInteger = 0 ifTrue: [
		self destinationRouteSelectionIndex: 0.
		^ self].
	association := self destinationRouteSuggestionTargets at: anInteger ifAbsent: [^ self].
	self destinationRouteSelectionIndex: (self
		routeSelectionIndexForTarget: association value
		in: self destinationRouteTargets).
	self destinationSearchInput: association key