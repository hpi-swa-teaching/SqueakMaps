accessing
updateHoveredRoomAt: aPoint

	| newHoveredRoom |
	newHoveredRoom := self roomOverlayAtPixel: aPoint.
	newHoveredRoom == self hoveredRoomOverlay ifTrue: [^ self].

	self hoveredRoomOverlay: newHoveredRoom.
	self updateRoomLabelVisibility.
	self changed