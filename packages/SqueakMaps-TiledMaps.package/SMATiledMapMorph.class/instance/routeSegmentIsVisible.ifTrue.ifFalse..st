private
routeSegmentIsVisible: aCollectionOfLevels ifTrue: visibleBlock ifFalse: hiddenBlock

	(self respondsTo: #shouldDrawRoomOverlays) ifFalse: [^ visibleBlock value].
	self shouldDrawRoomOverlays ifFalse: [^ visibleBlock value].
	aCollectionOfLevels isEmpty ifTrue: [^ visibleBlock value].
	(aCollectionOfLevels includes: self visibleLevel)
		ifTrue: [^ visibleBlock value]
		ifFalse: [^ hiddenBlock value]