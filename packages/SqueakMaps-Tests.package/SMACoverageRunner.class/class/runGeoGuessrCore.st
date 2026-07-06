running - areas
runGeoGuessrCore
	^ self
		runAreaNamed: 'GeoGuessr-Kernlogik'
		testClassNames: #(
			GGGameOrchestratorTests
			GGGuessTests
			GGLevelManagerTests
			GGLevelTests
			GGPlayerTests
			GGRoundResultTests
			GGLeaderboardTests
			GGLeaderboardEntryTests)
		targetClasses: self geoGuessrCoreClasses
