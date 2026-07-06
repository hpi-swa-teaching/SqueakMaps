testing - control bar
testControlBarReflectsAllGameStates
	| bar orchestrator |
	bar := GGControlBar new.
	orchestrator := GGGameOrchestrator new.
	bar setWindow: window with: orchestrator.
	self assert: bar window == window.
	self assert: bar gameOrchestrator == orchestrator.
	self assert: bar startButton notNil.
	self assert: bar backButton notNil.
	self assert: bar einloggenButton notNil.
	self assert: bar quitButton notNil.
	bar layOut.
	bar showStart.
	self assert: bar startButton visible.
	self deny: bar backButton visible.
	self deny: bar einloggenButton visible.
	self deny: bar quitButton visible.

	orchestrator startGame.
	window gameOrchestrator: orchestrator.
	window currentGuess: GGNoGuess new.
	bar refresh.
	self deny: bar einloggenButton visible.
	window currentGuess: (GGGuess coordinates: orchestrator currentLevel coordinates).
	bar showPlaying.
	self assert: bar einloggenButton visible.
	orchestrator submitGuess: orchestrator currentLevel coordinates.
	bar showEvaluating.
	self assert: bar backButton visible.
	self assert: bar einloggenButton visible.
	orchestrator state: #ended.
	bar showEnded.
	self assert: bar startButton visible.
	self assert: bar quitButton visible.
	bar refresh.
	bar tearDown
