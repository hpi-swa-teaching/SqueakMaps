game flow
showEndedState

	self roundActive: false.
	self timerMorph stop.
	self infoMorph contents: 'Game ended!'.
	self gameOrchestrator isMultiplayer 
		ifTrue:[ self infoMorph2 contents: 'Player 0: ', self gameOrchestrator totalScorep0 asString, ' | Player 1: ', 	self gameOrchestrator totalScorep1 asString.]
		ifFalse:[self infoMorph2 contents: 'Total score: ', self gameOrchestrator totalScorep0 asString ].
	self endGame.
	self refreshControls