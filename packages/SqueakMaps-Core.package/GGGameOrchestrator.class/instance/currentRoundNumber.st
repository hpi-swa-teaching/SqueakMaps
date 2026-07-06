accessing
currentRoundNumber

	self isMultiplayer 
		ifTrue: [^self roundResults size // 2 +1]
		ifFalse: [^self roundResults size + (self isPlaying ifTrue: [1] ifFalse: [0])].