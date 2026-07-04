accessing
routeSegmentIsVisible: aCollectionOfLevels ifTrue: visibleBlock ifFalse: hiddenBlock

	| shouldFilter |
	shouldFilter := (self respondsTo: #shouldDrawRoomOverlays)
		and: [self shouldDrawRoomOverlays].
	(self route isSegmentVisible: aCollectionOfLevels whenLevelFiltering: shouldFilter)
		ifTrue: [^ visibleBlock value]
		ifFalse: [^ hiddenBlock value]