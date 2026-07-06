running - areas
runUIAndMap
	^ self
		runAreaNamed: 'UI- und Karteninteraktionen'
		testClassNames: #(
			SMAAPISettingsTests
			SMAGuessMarkerTests
			SMAMapDetailTests
			SMAPinManagementTests
			SMATests
			SMAApiAndTileSourceTests
			GGViewComponentTests
			GGWindowBehaviorTests
			SMADecoratedMapBehaviorTests
			SMATiledMapBehaviorTests
			SMAApplicationBehaviorTests)
		targetClasses: self uiAndMapClasses
