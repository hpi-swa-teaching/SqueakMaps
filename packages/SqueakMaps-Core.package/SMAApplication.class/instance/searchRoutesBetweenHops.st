search
searchRoutesBetweenHops

	| previous |
	self hopLocations do: [:hop |
		previous ifNotNil: [
			self searchDirectionsFrom: previous to: hop
			].
		previous := hop.
	]