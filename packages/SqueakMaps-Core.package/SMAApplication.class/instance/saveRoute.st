route management
saveRoute

	| savedRoute answer identical |
	
	(self hasSearched)
		ifFalse: [UIManager default inform: 'Please click Go before saving a route'.
				^self].
	
	(self routes size +1 = (self hopLocations size))
		ifFalse: [UIManager default inform: 'There have been changes to your route. Please click Go before saving.'.
				^self].
	
	answer := UIManager default request: 'Route Title'.
	
	(answer = '') 
		ifFalse: [ 
			identical := self class savedRoutes select: [:p | p routeTitle = answer].
			identical ifNotEmpty: [:r | identical := r first].
			self class removeSavedRoute: identical.
			
			savedRoute := SMASavedRoute new.
			savedRoute routeCollection: self routes.
			savedRoute routeTitle: answer.
			savedRoute hops: self hopLocations shallowCopy.
			self class addSavedRoute: savedRoute.] 
		ifTrue: [self inform: 'Please provide a Title for the Route']