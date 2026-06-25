accessing
currentRoundNumber

	self isMultiplayer 
		ifTrue: [^roundResults size // 2 +1]
		ifFalse: [^roundResults size + (self isPlaying ifTrue: [1] ifFalse: [0])].