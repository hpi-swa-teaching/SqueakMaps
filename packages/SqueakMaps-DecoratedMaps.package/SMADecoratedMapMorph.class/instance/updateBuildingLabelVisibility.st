accessing
updateBuildingLabelVisibility

	| hovered |
	hovered := self hoveredBuildingOverlay.
	self buildingOverlays do: [:buildingOverlay |
		buildingOverlay showsLabel: buildingOverlay == hovered]