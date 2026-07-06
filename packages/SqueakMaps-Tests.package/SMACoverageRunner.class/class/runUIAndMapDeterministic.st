running - areas
runUIAndMapDeterministic
	^ self
		runAreaNamed: 'UI- und Karteninteraktionen'
		testClassNames: #(
			SMAAPISettingsTests
			SMAGuessMarkerTests
			SMAApiAndTileSourceTests
			GGViewComponentTests
			GGWindowCompletionTests
			SMADecoratedMapCompletionTests
			SMATiledMapCompletionTests
			SMAApplicationCompletionTests
			SMAFinalCoverageCompletionTests)
		targetClasses: self uiAndMapClasses
