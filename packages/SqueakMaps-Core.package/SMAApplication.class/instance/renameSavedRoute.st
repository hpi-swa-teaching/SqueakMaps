category management
renameSavedRoute

	| savedRoutes selectedRouteIndex |
	savedRoutes := self class savedRoutes.
	savedRoutes isEmpty ifTrue: [^ self inform: 'No saved route to rename.'].
	selectedRouteIndex  := UIManager default
		chooseFrom: (savedRoutes collect: [:p | p routeTitle])
		title: 'Select saved route to rename.'.
		
	"pressed cancel"
	selectedRouteIndex = 0 ifTrue: [ ^ self ].	
	
	self class renameSavedRoute: (savedRoutes at: selectedRouteIndex).
		
		
		