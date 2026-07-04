accessing
drawBuildingOverlaysOn: aCanvas

	self buildingOverlays do: [:each |
		each
			drawOn: aCanvas
			forMap: self]