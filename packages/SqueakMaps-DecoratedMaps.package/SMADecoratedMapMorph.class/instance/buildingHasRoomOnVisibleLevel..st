accessing
buildingHasRoomOnVisibleLevel: aBuildingOverlay

	aBuildingOverlay updateVerticesForMap: self.

	^ (self roomOverlaysForVisibleLevel
		detect: [:roomOverlay |
			roomOverlay updateVerticesForMap: self.
			aBuildingOverlay containsPoint: roomOverlay centerOfVertices]
		ifNone: [nil]) notNil