testing
testStartGameEntersPlaying

	orchestrator startGame.
	self assert: orchestrator isPlaying.
	self assert: orchestrator currentLevel notNil
