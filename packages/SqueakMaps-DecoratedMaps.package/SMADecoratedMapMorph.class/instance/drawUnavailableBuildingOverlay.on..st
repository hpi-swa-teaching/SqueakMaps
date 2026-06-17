accessing
drawUnavailableBuildingOverlay: anOverlay on: aCanvas

	| oldFill oldOutline oldWidth oldShowsLabel |
	oldFill := anOverlay fillColor.
	oldOutline := anOverlay outlineColor.
	oldWidth := anOverlay outlineWidth.
	oldShowsLabel := anOverlay showsLabel.

	anOverlay
		fillColor: (Color white alpha: 0.65);
		outlineColor: Color gray;
		outlineWidth: 2;
		showsLabel: anOverlay == self hoveredBuildingOverlay.
	anOverlay drawOn: aCanvas forMap: self.

	anOverlay
		fillColor: oldFill;
		outlineColor: oldOutline;
		outlineWidth: oldWidth;
		showsLabel: oldShowsLabel