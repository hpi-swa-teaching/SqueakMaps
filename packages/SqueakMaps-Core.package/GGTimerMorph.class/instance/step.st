stepping
step

	self running ifFalse: [^ self].
	self remainingSeconds > 0
		ifTrue: [
			self remainingSeconds: self remainingSeconds - 1.
			self formatTime.
			self updateColor]
		ifFalse: [self timeOut]