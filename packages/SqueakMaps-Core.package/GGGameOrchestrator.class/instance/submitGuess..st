game flow
submitGuess: aGuessCoordinate
	"Evaluate the guess for the current round, record the result and enter the evaluation state."

	| result |

	self isPlaying ifFalse: [^ nil].
	result := self buildResultFor: aGuessCoordinate.
	self roundResults add: result.
	self currentPlayer addScore: result score.
	self state: #evaluating.
	^ result
