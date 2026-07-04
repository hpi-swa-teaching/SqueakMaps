game flow
advanceRound

	self isEvaluating ifFalse: [^ self].

	self isMultiplayer
		ifTrue: [self advanceMultiplayerRound]
		ifFalse: [self advanceSingleplayerRound]