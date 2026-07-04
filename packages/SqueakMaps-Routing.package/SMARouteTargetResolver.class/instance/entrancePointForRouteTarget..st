private
entrancePointForRouteTarget: aTarget

	| candidates center |
	candidates := aTarget routingEntranceCandidates.
	candidates isEmpty ifTrue: [^ nil].

	center := SMARoutingGeometry centerPointOf: aTarget points.
	^ candidates inject: candidates first into: [:nearest :candidate |
		(SMARoutingGeometry distanceFrom: candidate to: center)
			< (SMARoutingGeometry distanceFrom: nearest to: center)
				ifTrue: [candidate]
				ifFalse: [nearest]]
