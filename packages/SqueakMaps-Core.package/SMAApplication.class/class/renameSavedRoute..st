accessing
renameSavedRoute: aSavedRoute

	| answer existing |
	answer := UIManager default request: 'New Name'.
	
	existing := SavedRoutes anySatisfy: [:r | r routeTitle = answer].
	existing ifTrue: [ ^ self inform: 'A route with that name already exists.' ].
	
	(answer = '') ifFalse: [ 
			aSavedRoute routeTitle: answer.
		].		
	
	"self changed: #items."