game flow
startGame

	(self isStart or: [self isEnded]) ifFalse: [^ self].
	self isEnded ifTrue: [self reset].
	currentLevel := levelManager nextLevel.
	currentPlayer:= false. 
	state := #playing
