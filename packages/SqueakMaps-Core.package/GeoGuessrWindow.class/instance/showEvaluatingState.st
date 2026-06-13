game flow
showEvaluatingState

	self roundActive: false.
	self timerMorph stop.
	self ensureMapLarge.
	self revealSolution.
	self einloggenButton label: 'Nächste Runde'.
	self infoMorph contents: (self evaluationInfoTextFor: gameOrchestrator lastResult)
