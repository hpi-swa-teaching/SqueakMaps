drawing
drawOn: aCanvas
	aCanvas clipBy: self bounds during: [ :gc |
		self drawTilesOn: gc.
		pins do: [:pin | self drawPin: pin on: gc].
		"gc fillOval: (bounds center - 2 extent: 4@4) color: Color red."
		"gc frameRectangle: bounds color: Color blue,"].