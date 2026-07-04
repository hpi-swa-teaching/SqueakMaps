stepping
step

	running ifFalse: [^ self].
	remainingSeconds > 0
		ifTrue: [
			remainingSeconds := remainingSeconds - 1.
			self formatTime.
			self updateColor]
		ifFalse: [self timeOut]