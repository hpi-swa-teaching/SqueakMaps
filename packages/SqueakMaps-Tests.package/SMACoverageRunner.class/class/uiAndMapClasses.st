areas
uiAndMapClasses
	| classes excludedNames |
	classes := OrderedCollection new.
	#('SqueakMaps-Core' 'SqueakMaps-DecoratedMaps' 'SqueakMaps-TiledMaps') do: [:packageName |
		classes addAll: (self classesInPackageNamed: packageName)].
	excludedNames := #(
		SMANavigator SMARouteLine
		GGEasyLevel GGGameOrchestrator GGGuess GGHardLevel GGLevel
		GGLevelManager GGMediumLevel GGNoGuess GGPlayer GGRoundResult
		GGLeaderboard GGLeaderboardEntry
		SMAWindow SqueakMapsWindow).
	^ classes asSet select: [:class |
		(excludedNames includes: class name) not]
