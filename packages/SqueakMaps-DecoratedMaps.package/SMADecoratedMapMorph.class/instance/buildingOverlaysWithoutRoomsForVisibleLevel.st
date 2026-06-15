accessing
buildingOverlaysWithoutRoomsForVisibleLevel

	^ self buildingOverlays select: [:buildingOverlay |
		(self buildingHasRoomOnVisibleLevel: buildingOverlay) not]