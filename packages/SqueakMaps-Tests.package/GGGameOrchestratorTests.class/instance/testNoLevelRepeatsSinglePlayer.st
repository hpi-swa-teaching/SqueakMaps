testing
testNoLevelRepeatsSinglePlayer
	"A full single-player game must never present the same level twice."

	| playedLevels steps |

	playedLevels := OrderedCollection new.
	steps := 0.
	orchestrator startGame.
	[orchestrator isEnded] whileFalse: [
		orchestrator isPlaying ifTrue: [
			playedLevels add: orchestrator currentLevel.
			orchestrator submitGuess: orchestrator currentLevel coordinates].
		orchestrator isEvaluating ifTrue: [orchestrator advanceRound].
		steps := steps + 1.
		steps > 100 ifTrue: [^ self assert: false description: 'Game did not end']].

	self assert: playedLevels size equals: orchestrator totalRounds.
	self assert: playedLevels asSet size equals: playedLevels size
