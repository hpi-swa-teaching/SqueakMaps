route management
resizeRouteSelectionList

	(self routeSelectionList isNil or: [self routeSelectionList size ~= self savedRoutes size]) ifTrue: [
		self routeSelectionList: (Array
		new: self savedRoutes size
		withAll: false)
	].
