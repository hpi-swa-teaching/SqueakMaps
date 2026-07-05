game flow
handleStartButton

	(gameOrchestrator isStart or: [gameOrchestrator isEnded]) ifFalse: [^ self].
	gameOrchestrator startGame.
	self refreshForState
