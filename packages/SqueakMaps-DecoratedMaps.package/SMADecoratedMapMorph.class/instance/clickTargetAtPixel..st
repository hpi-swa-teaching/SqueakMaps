accessing
clickTargetAtPixel: aPoint

	^ (self pointOfInterestAtPixel: aPoint)
		ifNil: [self overlayAtPixel: aPoint]
