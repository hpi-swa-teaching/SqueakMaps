route management
removeIdenticalRouteWith: aTitle
	
	| identical |
	identical := self class savedRoutes select: [:p | p routeTitle = aTitle].
			identical ifNotEmpty: [:r | identical := r first].
			self class removeSavedRoute: identical.