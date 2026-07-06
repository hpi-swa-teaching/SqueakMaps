game flow
buildResultFor: aGuessCoordinate
	"A nil guess (e.g. timeout without a pin) scores zero."

	| distance score |

	aGuessCoordinate ifNil: [
		^ GGRoundResult newLevel: self currentLevel guess: nil distance: nil score: 0].
	distance := aGuessCoordinate distanceInMetersTo: self currentLevel coordinates.
	score := self scoreForDistance: distance weight: self currentLevel scoreWeight.
	 ^ GGRoundResult newLevel: self currentLevel guess: aGuessCoordinate distance: distance score: score
