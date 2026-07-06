game flow
showEvaluatingState

	self roundActive: false.
	self timerMorph stop.
	self viewSwapper showMapLarge.
	self revealSolution.
	self infoMorph contents: (self evaluationInfoTextFor: self gameOrchestrator lastResult).
	self infoMorph2 contents: (self evaluationInfoText2For: self gameOrchestrator lastResult).
	self refreshControls
