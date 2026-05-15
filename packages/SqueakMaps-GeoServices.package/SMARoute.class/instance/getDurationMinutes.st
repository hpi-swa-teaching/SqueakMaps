calculating
getDurationMinutes
	"Calculates hours and minutes from seconds and returns as String."

	^ self duration isNil
		ifTrue: [0]
		ifFalse: [(self duration / 60) rounded]