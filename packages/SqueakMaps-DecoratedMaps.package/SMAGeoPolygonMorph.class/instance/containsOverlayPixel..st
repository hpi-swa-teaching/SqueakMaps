as yet unclassified
containsOverlayPixel: aPoint

	^ (self containsPoint: aPoint)
		or: [
			self labelBounds
				ifNil: [false]
				ifNotNil: [:bounds | bounds containsPoint: aPoint]]