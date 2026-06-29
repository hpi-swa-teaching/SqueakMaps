category management
isRouteSelected: index put: aBoolean

	| mergedRoutes |

	(self routeSelectionList isNil or: [self routeSelectionList size ~= self savedRoutes size]) ifTrue: [
		self routeSelectionList: (Array
		new: self savedRoutes size
		withAll: false)
	].
	
	self routeSelectionList at: index put: aBoolean.
	self visibleRoutes: self collectSelectedRoutes.
	self clear.
	self changed: #SavedRoutes.
	mergedRoutes := OrderedCollection new.
	self visibleRoutes isEmpty ifFalse: [
		self visibleRoutes do: [:r | mergedRoutes addAll: r routeCollection].
		self mapConfigurator displayRoutes: mergedRoutes.
	].