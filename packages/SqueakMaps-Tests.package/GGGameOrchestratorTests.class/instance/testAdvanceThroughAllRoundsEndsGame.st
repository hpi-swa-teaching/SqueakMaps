testing
testAdvanceThroughAllRoundsEndsGame

	| steps |

	orchestrator startGame.
	steps := 0.
	[orchestrator isEnded] whileFalse: [
		orchestrator isPlaying ifTrue: [orchestrator submitGuess: orchestrator currentLevel coordinates].
		orchestrator isEvaluating ifTrue: [orchestrator advanceRound].
		steps := steps + 1.
		steps > 100 ifTrue: [^ self assert: false description: 'Game did not end']].
	self assert: orchestrator isEnded
