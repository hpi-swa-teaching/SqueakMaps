accessing
buildingHasRoomOnVisibleLevel: aBuildingOverlay

	aBuildingOverlay updateVerticesForMap: self.

	^ self roomOverlaysForVisibleLevel anySatisfy: [:each |
		each updateVerticesForMap: self.
		aBuildingOverlay containsPoint: each centerOfVertices]