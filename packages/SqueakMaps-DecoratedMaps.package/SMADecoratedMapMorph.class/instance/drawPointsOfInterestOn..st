accessing
drawPointsOfInterestOn: aCanvas

	self pointsOfInterest do: [:each |
		(self isModelVisible: each model) ifTrue: [
			each
				drawOn: aCanvas
				forMap: self]]