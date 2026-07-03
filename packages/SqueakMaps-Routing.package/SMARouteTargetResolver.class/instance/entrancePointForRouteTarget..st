as yet unclassified
entrancePointForRouteTarget: aTarget

	| points candidates center |
	points := aTarget points.
	points isEmpty ifTrue: [^ nil].

	(aTarget isKindOf: SMABuilding) ifTrue: [
		candidates := points select: [:point | point isMainEntranceNode].
		candidates isEmpty ifTrue: [candidates := points select: [:point | point isEntranceNode]].
		candidates isEmpty ifTrue: [candidates := points select: [:point | point isDoorNode]]].

	(aTarget isKindOf: SMARoom) ifTrue: [
		candidates := points select: [:point | point isDoorNode]].

	candidates ifNil: [
		candidates := points select: [:point | point isEntranceNode or: [point isDoorNode]]].
	candidates isEmpty ifTrue: [^ nil].

	center := SMARoutingGeometry centerPointOf: points.
	^ candidates inject: candidates first into: [:nearest :candidate |
		(SMARoutingGeometry distanceFrom: candidate to: center)
			< (SMARoutingGeometry distanceFrom: nearest to: center)
				ifTrue: [candidate]
				ifFalse: [nearest]]