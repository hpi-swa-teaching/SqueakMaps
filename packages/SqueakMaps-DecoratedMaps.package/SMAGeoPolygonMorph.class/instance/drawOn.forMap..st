drawing
drawOn: aCanvas forMap: aMapMorph

	self updateVerticesForMap: aMapMorph.
	aCanvas drawMorph: self.
