drawing
drawOn: aCanvas

	aCanvas clipBy: self bounds during: [ :clippedCanvas |
		self drawTilesOn: clippedCanvas.
		pins do: [:pin | self drawPin: pin on: clippedCanvas].
		self drawRoute: route On: clippedCanvas]
