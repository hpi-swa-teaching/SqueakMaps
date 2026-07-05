game flow
refreshForState

	gameOrchestrator isPlaying ifTrue: [^ self showPlayingState].
	gameOrchestrator isEvaluating ifTrue: [^ self showEvaluatingState].
	gameOrchestrator isEnded ifTrue: [^ self showEndedState].
	self showStartState
