accessing
updateHoveredBuildingAt: aPoint

	| newHoveredBuilding |
	newHoveredBuilding := self buildingOverlayAtPixel: aPoint.
	newHoveredBuilding == self hoveredBuildingOverlay ifTrue: [^ self].

	self hoveredBuildingOverlay: newHoveredBuilding.
	self updateBuildingLabelVisibility.
	self changed