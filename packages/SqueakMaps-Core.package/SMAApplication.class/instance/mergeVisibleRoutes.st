route management
mergeVisibleRoutes
	
	| mergedRoutes |
	mergedRoutes := OrderedCollection new.
	self visibleRoutes isEmpty ifFalse: [
		self visibleRoutes do: [:r | mergedRoutes addAll: r routeCollection].
		self mapConfigurator displayRoutes: mergedRoutes.
	].