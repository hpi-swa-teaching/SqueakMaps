category management
collectSelectedRoutes

	| result |
	result := OrderedCollection new.
	1 to: (self class savedRoutes size) do:[:i |
			(self isRouteSelected: i ) ifTrue: [
					result add: (self class savedRoutes at: i).
				]
		].
	
	^ result