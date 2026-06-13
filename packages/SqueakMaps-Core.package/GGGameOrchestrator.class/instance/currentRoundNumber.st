accessing
currentRoundNumber

	^ roundResults size + (self isPlaying ifTrue: [1] ifFalse: [0])
