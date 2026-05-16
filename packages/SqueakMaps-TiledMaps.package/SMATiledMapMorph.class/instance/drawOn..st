drawing
drawOn: aCanvas

	aCanvas clipBy: self bounds during: [ :clippedCanvas |
		self drawTilesOn: clippedCanvas.
		self routes do: [:r | self drawRoute: r On: clippedCanvas].
		self markers do: [:marker | self duplicateAndDrawMarker: marker On: clippedCanvas]]