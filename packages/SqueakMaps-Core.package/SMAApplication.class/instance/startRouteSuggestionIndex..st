building
startRouteSuggestionIndex: anInteger

	| association |
	anInteger = 0 ifTrue: [
		self startRouteSelectionIndex: 0.
		^ self].
	association := self startRouteSuggestionTargets at: anInteger ifAbsent: [^ self].
	self startRouteSelectionIndex: (self
		routeSelectionIndexForTarget: association value
		in: self routeTargets).
	self startSearchInput: association key