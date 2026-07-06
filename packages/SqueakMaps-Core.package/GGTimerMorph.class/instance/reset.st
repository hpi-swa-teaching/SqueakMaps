actions
reset

	self running: false.
	self remainingSeconds: self defaultSeconds.

	"Drop the countdown tint from updateColor so every round starts in the neutral text colour."
	self label color: StringMorph new color.
	self formatTime
