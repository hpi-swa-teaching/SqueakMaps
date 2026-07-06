building
routeLineFrom: aStartTarget to: aDestinationTarget

	| resolved |
	resolved := self
		resolveRouteTarget: aDestinationTarget
		from: aStartTarget.
	resolved ifNil: [^ nil].
	^ self routingFacade
		routeFrom: aStartTarget place
		to: resolved place
