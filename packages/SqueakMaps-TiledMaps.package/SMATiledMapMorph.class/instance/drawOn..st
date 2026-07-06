drawing
drawOn: aCanvas

	aCanvas clipBy: self bounds during: [:clippedCanvas |
		self
			drawTilesOn: clippedCanvas;
			drawRoute: self route On: clippedCanvas.
		self markers do: [:marker | self duplicateAndDrawMarker: marker On: clippedCanvas]]