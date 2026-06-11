accessing
overlayAtPixel: aPoint

	^ self visibleOverlays reversed
		detect: [:overlay |
			overlay updateVerticesForMap: self.
			overlay containsOverlayPixel: aPoint]
		ifNone: [nil]