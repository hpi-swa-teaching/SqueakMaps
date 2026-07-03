as yet unclassified
testRouteLineObservesLevelSelection

	| model route observer |
	model := SMALevelSelectionModel new.
	model availableLevels: #(0 1).
	route := SMARouteLine new.
	route levelSelectionModel: model.
	observer := SMATestObserver new.
	route addDependent: observer.
	model visibleLevel: 1.
	self assert: (observer aspects includes: #visibility)