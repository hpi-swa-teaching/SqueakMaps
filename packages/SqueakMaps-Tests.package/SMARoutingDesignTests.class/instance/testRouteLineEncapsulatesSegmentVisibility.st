as yet unclassified
testRouteLineEncapsulatesSegmentVisibility

	| map route |
	map := SMADecoratedMapMorph new zoom: 20.
	map levelSelectionModel visibleLevel: 1.
	route := SMARouteLine new.

	self assert: (map routeSegmentIsVisible: #(1)).
	self deny: (map routeSegmentIsVisible: #(0)).
	map zoom: 17.
	self assert: (map routeSegmentIsVisible: #(0)).