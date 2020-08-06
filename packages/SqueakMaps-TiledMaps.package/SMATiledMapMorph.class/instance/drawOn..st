drawing
drawOn: aCanvas

	aCanvas clipBy: self bounds during: [ :gc |
		self drawTilesOn: gc.
		pins do: [:pin | self drawPin: pin on: gc].]