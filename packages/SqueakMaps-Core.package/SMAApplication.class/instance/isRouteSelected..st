category management
isRouteSelected: index
	"Returns a boolean whether the index-th item of the multi select is chosen"
	
	(self routeSelectionList isNil or: [self routeSelectionList size ~= self savedRoutes size]) ifTrue: [
		self routeSelectionList: (Array
            new: self savedRoutes size
            withAll: false).
		].
	^ self routeSelectionList at: index