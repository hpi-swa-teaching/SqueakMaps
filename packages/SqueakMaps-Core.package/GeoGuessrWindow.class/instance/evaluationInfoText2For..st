game flow
evaluationInfoText2For: aResult

	gameOrchestrator currentPlayer ifFalse: [^ 'Total: ', gameOrchestrator totalScorep0 asString].
	^ 'Total: ', gameOrchestrator totalScorep1 asString.
	