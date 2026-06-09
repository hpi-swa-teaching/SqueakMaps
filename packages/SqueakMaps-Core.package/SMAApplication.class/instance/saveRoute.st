route management
saveRoute

	| savedRoute answer |
	
	answer := UIManager default request: 'Route Title'.
	(answer = '') 
		ifFalse: [ 
			savedRoute := SMASavedRoute new.
			savedRoute routeCollection: self routes.
			savedRoute routeTitle: answer.
			savedRoute hops: self hopLocations shallowCopy.
			self class addSavedRoute: savedRoute.] 
		ifTrue: [self inform: 'Please provide a Title for the Route']