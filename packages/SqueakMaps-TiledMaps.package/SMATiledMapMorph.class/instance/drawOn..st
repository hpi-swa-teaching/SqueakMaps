drawing
drawOn: aCanvas

	aCanvas clipBy: self bounds during: [ :clippedCanvas |
		self drawTilesOn: clippedCanvas.
		self drawRoute: (self route) On: clippedCanvas.
		self pins do: [:pin | self drawPin: pin on: clippedCanvas]]
		
