accessing
renameSavedRoute: aSavedRoute

	| answer|

	
	answer := UIManager default request: 'New Name'.
	(answer = '') ifFalse: [ 
			aSavedRoute routeTitle: answer.
		].		