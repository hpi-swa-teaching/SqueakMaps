accessing
pointOfInterestAtPixel: aPoint

	^ self pointsOfInterest reversed
		detect: [:poi | poi containsPixel: aPoint forMap: self]
		ifNone: [nil]