game flow
startGame

	| wasMultiplayer |

	(self isStart or: [self isEnded]) ifFalse: [^ self].
	wasMultiplayer := isMultiplayer.
	self isEnded ifTrue: [self reset].
	self isMultiplayer: wasMultiplayer.
	self advanceToNextLevel
