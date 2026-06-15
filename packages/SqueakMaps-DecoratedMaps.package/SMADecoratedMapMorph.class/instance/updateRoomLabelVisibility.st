accessing
updateRoomLabelVisibility

	| hovered |
	hovered := self hoveredRoomOverlay.

	self roomOverlays do: [:roomOverlay |
		roomOverlay showsLabel: roomOverlay == hovered]