drawing
drawOn: aCanvas

	aCanvas clipBy: self bounds during: [ :clippedCanvas |
		self drawTilesOn: clippedCanvas.
		self drawRoute: self route on: clippedCanvas.
		self markers do: [:marker | self duplicateAndDrawMarker: marker on: clippedCanvas]]