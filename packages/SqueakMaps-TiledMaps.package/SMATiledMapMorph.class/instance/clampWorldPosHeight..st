helping
clampWorldPosHeight: aNumber
	"Clamps a number to be in the range of the allowed maximum value for the height of the center position"

	(aNumber > 0.5)
		ifTrue: [
			^ aNumber min: (0.5 + self maxWorldPosHeight)]
		ifFalse: [
			^ aNumber max: (0.5 - self maxWorldPosHeight)]