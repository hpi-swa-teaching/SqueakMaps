game flow
refreshForState

	self gameOrchestrator isPlaying ifTrue: [^ self showPlayingState].
	self gameOrchestrator isEvaluating ifTrue: [^ self showEvaluatingState].
	self gameOrchestrator isEnded ifTrue: [^ self showEndedState].
	self showStartState
