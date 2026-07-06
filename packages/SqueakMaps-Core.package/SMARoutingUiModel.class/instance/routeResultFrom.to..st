building
routeResultFrom: aStartTarget to: aDestinationTarget

	| resolved routeLine routeLocations |
	resolved := self
		resolveRouteTarget: aDestinationTarget
		from: aStartTarget.
	resolved ifNil: [^ nil].
	routeLine := self routingFacade
		routeFrom: aStartTarget place
		to: resolved place.
	routeLine ifNil: [^ nil].
	routeLocations := {
		self locationForRouteTarget: aStartTarget.
		self locationForRouteTarget: resolved } select: [:each | each notNil].
	^ { routeLine. routeLocations }
