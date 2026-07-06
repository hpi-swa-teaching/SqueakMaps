areas
geoGuessrCoreClasses
	| coreNames |
	coreNames := #(
		GGEasyLevel GGGameOrchestrator GGGuess GGHardLevel GGLevel
		GGLevelManager GGMediumLevel GGNoGuess GGPlayer GGRoundResult
		GGLeaderboard GGLeaderboardEntry).
	^ coreNames collect: [:className | Smalltalk at: className]
