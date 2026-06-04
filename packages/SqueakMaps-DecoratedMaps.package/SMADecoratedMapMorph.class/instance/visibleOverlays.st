accessing
visibleOverlays

	self shouldDrawRoomOverlays
		ifTrue: [^ self roomOverlaysForVisibleLevel].

	^ self buildingOverlays