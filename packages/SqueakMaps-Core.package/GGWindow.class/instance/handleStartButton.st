game flow
handleStartButton

	(self gameOrchestrator isStart or: [self gameOrchestrator isEnded]) ifFalse: [^ self].
	self gameOrchestrator startGame.
	self refreshForState
