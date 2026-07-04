as yet unclassified
testRouteLineEncapsulatesSegmentVisibility

	| model route |
	model := SMALevelSelectionModel new.
	model visibleLevel: 1.
	route := SMARouteLine new.
	route levelSelectionModel: model.
	self assert: (route isSegmentVisible: #(1) whenLevelFiltering: true).
	self deny: (route isSegmentVisible: #(0) whenLevelFiltering: true).
	self assert: (route isSegmentVisible: #(0) whenLevelFiltering: false)