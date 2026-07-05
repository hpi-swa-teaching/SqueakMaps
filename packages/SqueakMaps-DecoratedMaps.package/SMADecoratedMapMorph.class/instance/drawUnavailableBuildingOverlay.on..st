accessing
drawUnavailableBuildingOverlay: anOverlay on: aCanvas

	| oldFill oldOutline oldWidth oldShowsLabel |
	oldFill := anOverlay fillColor.
	oldOutline := anOverlay outlineColor.
	oldWidth := anOverlay outlineWidth.
	oldShowsLabel := anOverlay showsLabel.

	anOverlay
		fillColor: self class unavailableBuildingFillColor;
		outlineColor: Color gray;
		outlineWidth: SMAGeoPolygonMorph defaultOutlineWidth;
		showsLabel: anOverlay == self hoveredBuildingOverlay.
	anOverlay drawOn: aCanvas forMap: self.

	anOverlay
		fillColor: oldFill;
		outlineColor: oldOutline;
		outlineWidth: oldWidth;
		showsLabel: oldShowsLabel