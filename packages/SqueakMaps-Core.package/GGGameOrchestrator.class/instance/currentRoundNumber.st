accessing
currentRoundNumber

	self isMultiplayer ifTrue: [
		^roundResults size + (self isPlaying ifTrue: [
			self currentPlayer ifFalse: [1] ifTrue: [0]] ifFalse: [0])]
		ifFalse: [^roundResults size + (self isPlaying ifTrue: [1] ifFalse: [0])].