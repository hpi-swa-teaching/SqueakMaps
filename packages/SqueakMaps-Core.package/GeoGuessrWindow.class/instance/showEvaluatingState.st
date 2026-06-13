game flow
showEvaluatingState

	self roundActive: false.
	self timerMorph stop.
	self ensureMapLarge.
	self revealSolution.
	self infoMorph contents: (self evaluationInfoTextFor: gameOrchestrator lastResult).
	self refreshControls
