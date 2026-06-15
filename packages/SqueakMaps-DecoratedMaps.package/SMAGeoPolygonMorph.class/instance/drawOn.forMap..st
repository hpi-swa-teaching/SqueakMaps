as yet unclassified
drawOn: aCanvas forMap: aMapMorph

	self updateVerticesForMap: aMapMorph.
	aCanvas drawMorph: self.
	self showsLabel ifTrue: [self drawLabelOn: aCanvas]