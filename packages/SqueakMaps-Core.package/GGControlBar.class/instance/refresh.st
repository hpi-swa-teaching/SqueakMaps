updating
refresh

	self window gameOrchestrator isPlaying ifTrue: [^ self showPlaying].
	self window gameOrchestrator isEvaluating ifTrue: [^ self showEvaluating].
	self window gameOrchestrator isEnded ifTrue: [^ self showEnded].
	self showStart
