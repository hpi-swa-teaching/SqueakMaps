helping
clampCenterY: aNumber

	(aNumber > 0.5)
		ifTrue: [
			^ aNumber min: (0.5 + self maxWorldPosHeight)]
		ifFalse: [
			^ aNumber max: (0.5 - self maxWorldPosHeight)].