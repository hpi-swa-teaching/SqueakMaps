accessing
drawOn: aCanvas

	aCanvas clipBy: self bounds during: [:clippedCanvas |
		self drawTilesOn: clippedCanvas.
		self drawRoute: self route On: clippedCanvas.

		self overlays do: [:overlay |
			overlay drawOn: clippedCanvas forMap: self].

		self markers do: [:marker |
			self duplicateAndDrawMarker: marker On: clippedCanvas]]