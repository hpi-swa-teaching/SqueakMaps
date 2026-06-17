as yet unclassified
step

	running ifFalse: [^ self].
	remainingSeconds > 0
		ifTrue: [
			remainingSeconds := remainingSeconds - 1.
			self formatTime]
		ifFalse: [self timeOut]