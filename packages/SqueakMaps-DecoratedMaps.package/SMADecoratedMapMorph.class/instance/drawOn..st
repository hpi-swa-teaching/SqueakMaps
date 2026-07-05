accessing
drawOn: aCanvas

	aCanvas
		clipBy: self bounds
		during: [:clippedCanvas |
			self drawMapContentsOn: clippedCanvas]