building
startRouteSuggestionIndex: anInteger

	| target |

	anInteger = 0 ifTrue: [
		self startRouteSelectionIndex: 0.
		^ self].
	target := self startRouteSuggestionTargets at: anInteger ifAbsent: [^ self].
	self startRouteSelectionIndex: (self
		routeSelectionIndexForTarget: target
		in: self routeTargets).
	self startSearchInput: target label
