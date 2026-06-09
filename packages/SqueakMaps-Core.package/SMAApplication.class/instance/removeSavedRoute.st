category management
removeSavedRoute

	| savedRoutes selectedRouteIndex|
	savedRoutes := self class savedRoutes.
	savedRoutes isEmpty ifTrue: [^ self inform: 'No saved route to remove.'].
	selectedRouteIndex  := UIManager default
		chooseFrom: (savedRoutes collect: [:p | p routeTitle])
		title: 'Select saved route to remove.'.
		
	"pressed cancel"
	selectedRouteIndex = 0 ifTrue: [ ^ self ].	
	self class removeSavedRoute: (savedRoutes at: selectedRouteIndex).
	
	
	"self changed: #items."