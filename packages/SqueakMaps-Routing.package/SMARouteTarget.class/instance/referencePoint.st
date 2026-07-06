routing
referencePoint

	(self place respondsTo: #coordinates) ifTrue: [
		^ self referencePointForLocation: self place].
	((self place respondsTo: #isDirectRoutingPoint)
		and: [self place isDirectRoutingPoint]) ifTrue: [
			^ self place].
	^ SMARoutingGeometry centerPointOf: self place points
