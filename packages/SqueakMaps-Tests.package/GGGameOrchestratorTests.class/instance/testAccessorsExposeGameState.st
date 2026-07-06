testing
testAccessorsExposeGameState

	orchestrator startGame.
	self assert: orchestrator levelManager notNil.
	self assert: orchestrator totalRounds equals: orchestrator levelManager totalLevelCount.
	self assert: orchestrator roundResults isEmpty.
	self deny: orchestrator isMultiplayer.
	orchestrator isMultiplayer: true.
	self assert: orchestrator isMultiplayer
