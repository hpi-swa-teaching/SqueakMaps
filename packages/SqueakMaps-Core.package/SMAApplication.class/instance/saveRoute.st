route management
saveRoute

	| answer |
	(self hasNotSearchedOrHasChanged) ifTrue: [^self].
	
	answer := UIManager default request: 'Route Title'.
	(answer = '') 
		ifFalse: [ 
			self removeIdenticalRouteWith: answer.
			self createNewRouteWith: answer
		] 
		ifTrue: [self inform: 'Please provide a Title for the Route']