testing
testSingleplayerRoundMovesFromPlayingToEvaluation

	| exact result |
	window initializeWindowOnClick.
	window handleStartButton.
	self assert: window gameOrchestrator isPlaying.
	self assert: window roundActive.
	self assert: window timerMorph running.

	window viewSwapper showMapLarge.
	exact := window gameOrchestrator currentLevel coordinates.
	window currentGuess: (GGGuess coordinates: exact).
	window handleEinloggenButton.

	self assert: window gameOrchestrator isEvaluating.
	self deny: window roundActive.
	result := window gameOrchestrator lastResult.
	self assert: result score > 0.
	self assert: (window evaluationInfoTextFor: result) notEmpty.
	self assert: window solutionLocation coordinates equals: exact
