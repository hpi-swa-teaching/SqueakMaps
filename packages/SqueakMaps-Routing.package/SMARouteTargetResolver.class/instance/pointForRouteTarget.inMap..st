as yet unclassified
pointForRouteTarget: aTarget inMap: aMapMorph

	| routingPoint |
	(aTarget isKindOf: SMAPoint) ifTrue: [^ aTarget].
	(aTarget respondsTo: #points) ifFalse: [^ nil].
	routingPoint := self entrancePointForRouteTarget: aTarget.
	^ routingPoint ifNil: [SMARoutingGeometry centerPointOf: aTarget points]