accessing
drawIndoorOverlaysOn: aCanvas

	self buildingOverlaysWithoutRoomsForVisibleLevel do: [:each |
		self
			drawUnavailableBuildingOverlay: each
			on: aCanvas].

	self roomOverlaysForVisibleLevel do: [:each |
		each
			drawOn: aCanvas
			forMap: self]