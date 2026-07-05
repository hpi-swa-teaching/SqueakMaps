game flow
showEndedState

	self roundActive: false.
	self timerMorph stop.
	self infoMorph contents: 'Game ended!'.
	gameOrchestrator isMultiplayer 
		ifTrue:[ self infoMorph2 contents: 'Player 0: ', gameOrchestrator totalScorep0 asString, ' | Player 1: ', 	gameOrchestrator totalScorep1 asString.]
		ifFalse:[self infoMorph2 contents: 'Total score: ', gameOrchestrator totalScorep0 asString ].
	self endGame.
	self refreshControls