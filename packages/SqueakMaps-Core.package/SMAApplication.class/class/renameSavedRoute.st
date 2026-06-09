accessing
renameSavedRoute

	| savedRoutes selectedRouteIndex answer|
	savedRoutes := self class savedRoutes.
	savedRoutes isEmpty ifTrue: [^ self inform: 'No saved route to rename.'].
	selectedRouteIndex  := UIManager default
		chooseFrom: (savedRoutes collect: [:p | p routeTitle])
		title: 'Select saved route to rename.'.
		
	"pressed cancel"
	selectedRouteIndex = 0 ifTrue: [ ^ self ].	
		
		
	answer := UIManager default request: 'New Name'.
	(answer = '') ifFalse: [ 
			(savedRoutes at: selectedRouteIndex) routeTitle: answer.
		].		
	
	"self changed: #items."