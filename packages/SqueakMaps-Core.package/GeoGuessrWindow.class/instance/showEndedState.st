game flow
showEndedState

	self roundActive: false.
	self timerMorph stop.
	self infoMorph contents: 'Game ended!'.
	self infoMorph2 contents: 'Total points: ', gameOrchestrator totalScore asString.
	self endGame.
	self refreshControls