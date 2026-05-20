calculating
getDurationMinutes
	"Calculates minutes from seconds and returns as Number."

	^ self duration isNil
		ifTrue: [0]
		ifFalse: [(self duration / 60) rounded]