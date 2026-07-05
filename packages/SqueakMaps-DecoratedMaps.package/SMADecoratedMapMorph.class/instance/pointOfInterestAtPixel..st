accessing
pointOfInterestAtPixel: aPoint

	^ self pointsOfInterest reversed
		detect: [:poi |
			(self isModelVisible: poi model)
				and: [poi containsPixel: aPoint forMap: self]]
		ifNone: [nil]