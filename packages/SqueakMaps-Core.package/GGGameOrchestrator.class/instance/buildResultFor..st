game flow
buildResultFor: aGuessCoordinate
	"A nil guess (e.g. timeout without a pin) scores zero."

	| distance score |

	aGuessCoordinate ifNil: [
		^ GGRoundResult newLevel: currentLevel guess: nil distance: nil score: 0].
	distance := aGuessCoordinate distanceInMetersTo: currentLevel coordinates.
	score := self scoreForDistance: distance weight: currentLevel scoreWeight.
	^ GGRoundResult newLevel: currentLevel guess: aGuessCoordinate distance: distance score: score
