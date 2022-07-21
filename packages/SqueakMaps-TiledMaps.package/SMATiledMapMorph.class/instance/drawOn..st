private
drawOn: aCanvas

	aCanvas clipBy: self bounds during: [ :clippedCanvas |
		self drawTilesOn: clippedCanvas.
		self drawRoute: (self route) On: clippedCanvas.
		self markers do: [:marker | self duplicateAndDrawMarker: marker On: clippedCanvas]]
		
