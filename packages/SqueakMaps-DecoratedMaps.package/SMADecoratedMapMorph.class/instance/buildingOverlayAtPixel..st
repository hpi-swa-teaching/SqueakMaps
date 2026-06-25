accessing
buildingOverlayAtPixel: aPoint

	| candidates |
	candidates := self shouldDrawRoomOverlays
		ifTrue: [self buildingOverlaysWithoutRoomsForVisibleLevel]
		ifFalse: [self buildingOverlays].

	^ candidates reversed
		detect: [:overlay |
			overlay updateVerticesForMap: self.
			overlay containsPoint: aPoint]
		ifNone: [nil]