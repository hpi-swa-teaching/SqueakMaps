accessing
drawPointsOfInterestOn: aCanvas

	self pointsOfInterest do: [:each |
		each
			drawOn: aCanvas
			forMap: self]