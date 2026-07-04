route management
displayRoutesIfComplete

	self routes size = (self hopLocations size - 1) ifTrue: [
		self mapConfigurator displayRoutes: self routes.
	]
	ifFalse: [
		self clear.
		self clearRoutes.
	]