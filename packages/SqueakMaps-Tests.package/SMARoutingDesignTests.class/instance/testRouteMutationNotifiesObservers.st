as yet unclassified
testRouteMutationNotifiesObservers

	| route observer |
	route := SMARouteLine new.
	observer := SMATestObserver new.
	route addDependent: observer.
	route points: #(1 2).
	self assert: (observer aspects includes: #route)