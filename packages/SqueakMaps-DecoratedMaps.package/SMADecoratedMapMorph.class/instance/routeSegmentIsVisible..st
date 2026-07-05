accessing
routeSegmentIsVisible: aCollectionOfLevels

	self shouldDrawRoomOverlays ifFalse: [^ true].
	aCollectionOfLevels isEmpty ifTrue: [^ true].
	self levelSelectionModel ifNil: [^ true].
	
	^ aCollectionOfLevels includes: self levelSelectionModel visibleLevel