game flow
submitGuess: aGuessCoordinate
	"Evaluate the guess for the current round, record the result and enter the evaluation state."

	| result |

	self isPlaying ifFalse: [^ nil].
	result := self buildResultFor: aGuessCoordinate.
	roundResults add: result.
	totalScore := totalScore + result score.
	state := #evaluating.
	^ result
