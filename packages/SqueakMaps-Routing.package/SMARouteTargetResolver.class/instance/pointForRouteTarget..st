private
pointForRouteTarget: aTarget

	(aTarget isKindOf: SMALocation) ifTrue: [
		^ SMAPoint new
			id: nil;
			lon: aTarget coordinates long;
			lat: aTarget coordinates lat;
			yourself].
	((aTarget respondsTo: #isDirectRoutingPoint) and: [aTarget isDirectRoutingPoint])
		ifTrue: [^ aTarget].
	(aTarget respondsTo: #points) ifFalse: [^ nil].
	^ (self entrancePointForRouteTarget: aTarget)
		ifNil: [SMARoutingGeometry centerPointOf: aTarget points]
