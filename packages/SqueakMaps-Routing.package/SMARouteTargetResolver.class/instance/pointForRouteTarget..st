private
pointForRouteTarget: aTarget

	(aTarget isDirectRoutingPoint) ifTrue: [^ aTarget].
	(aTarget respondsTo: #points) ifFalse: [^ nil].
	^ (self entrancePointForRouteTarget: aTarget)
		ifNil: [SMARoutingGeometry centerPointOf: aTarget points]
