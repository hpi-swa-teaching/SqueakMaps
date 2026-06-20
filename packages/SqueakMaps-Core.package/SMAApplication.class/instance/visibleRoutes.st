accessing
visibleRoutes

	^ visibleRoutes
		ifNil: [ visibleRoutes := OrderedCollection new ]