accessing
handleLevelSelectorClick: aPoint

	self shouldDrawRoomOverlays ifFalse: [^ false].
	(self levelSelectorBounds containsPoint: aPoint) ifFalse: [^ false].

	(self levelSelectorUpBounds containsPoint: aPoint) ifTrue: [
		self selectNextLevel.
		^ true].

	(self levelSelectorDownBounds containsPoint: aPoint) ifTrue: [
		self selectPreviousLevel.
		^ true].

	^ true