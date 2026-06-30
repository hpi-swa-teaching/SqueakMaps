as yet unclassified
reset

	running := false.
	remainingSeconds := self defaultSeconds.

	"Drop the countdown tint from updateColor so every round starts in the neutral text colour."
	label color: StringMorph new color.
	self formatTime
