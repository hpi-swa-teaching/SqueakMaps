game flow
handleStartButton

	self initializeWindowOnClick.
	(gameOrchestrator isStart or: [gameOrchestrator isEnded]) ifFalse: [^ self].
	gameOrchestrator startGame.
	self refreshForState
