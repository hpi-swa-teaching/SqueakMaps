scoring
scoreForDistance: aDistanceInMeters weight: aWeight
	"Linear falloff from maxRoundScore at 0 m to 0 at maxScoringDistance, times the difficulty weight."

	^ ((self maxRoundScore * (1 - (aDistanceInMeters / self maxScoringDistance)) max: 0) * aWeight) rounded
