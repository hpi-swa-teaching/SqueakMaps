accessing
roomOverlayAtPixel: aPoint

	self shouldDrawRoomOverlays ifFalse: [^ nil].

	^ self roomOverlaysForVisibleLevel reversed
		detect: [:overlay |
			overlay updateVerticesForMap: self.
			overlay containsPoint: aPoint]
		ifNone: [nil]