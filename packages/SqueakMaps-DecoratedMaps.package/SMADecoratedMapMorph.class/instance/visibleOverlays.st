accessing
visibleOverlays

	| visible |
	self updateRoomOverlayZoomState.

	self shouldDrawRoomOverlays ifFalse: [^ self buildingOverlays].

	visible := OrderedCollection new.
	visible addAll: self buildingOverlaysWithoutRoomsForVisibleLevel.
	visible addAll: self roomOverlaysForVisibleLevel.
	^ visible