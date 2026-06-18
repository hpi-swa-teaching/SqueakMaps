testing
testScoreWeightsIncreaseWithDifficulty

	self assert: GGEasyLevel new scoreWeight < GGMediumLevel new scoreWeight.
	self assert: GGMediumLevel new scoreWeight < GGHardLevel new scoreWeight
