testing
testNoLevelRepeatsMultiplayer
	"In multiplayer each level is shown to both players, but a level never reappears in a later round."

	| playedLevels steps |

	playedLevels := OrderedCollection new.
	steps := 0.
	orchestrator isMultiplayer: true.
	orchestrator startGame.
	[orchestrator isEnded] whileFalse: [
		orchestrator isPlaying ifTrue: [
			playedLevels add: orchestrator currentLevel.
			orchestrator submitGuess: orchestrator currentLevel coordinates].
		orchestrator isEvaluating ifTrue: [orchestrator advanceRound].
		steps := steps + 1.
		steps > 100 ifTrue: [^ self assert: false description: 'Game did not end']].

	self assert: playedLevels size equals: orchestrator totalRounds * 2.
	self assert: playedLevels asSet size equals: orchestrator totalRounds
