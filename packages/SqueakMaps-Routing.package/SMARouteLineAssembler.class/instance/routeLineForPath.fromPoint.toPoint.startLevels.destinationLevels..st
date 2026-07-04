building
routeLineForPath: aCollectionOfVertices fromPoint: startPoint toPoint: destinationPoint startLevels: startLevels destinationLevels: destinationLevels

	| routeLine points segments firstWorld lastWorld startWorld destWorld |
	routeLine := SMARouteLine new.
	points := OrderedCollection new.
	segments := OrderedCollection new.

	aCollectionOfVertices do: [:vertex |
		points add: (SMARoutingGeometry worldPointFor: (graph pointAtVertex: vertex))].

	(startPoint notNil and: [aCollectionOfVertices notEmpty]) ifTrue: [
		startWorld := SMARoutingGeometry worldPointFor: startPoint.
		firstWorld := points first.
		startWorld ~= firstWorld ifTrue: [
			points addFirst: startWorld.
			segments add: {startWorld. firstWorld. startLevels}]].

	aCollectionOfVertices overlappingPairsDo: [:u :v |
		| edge uWorld vWorld |
		edge := graph edgeFrom: u to: v.
		uWorld := SMARoutingGeometry worldPointFor: (graph pointAtVertex: u).
		vWorld := SMARoutingGeometry worldPointFor: (graph pointAtVertex: v).
		segments add: {uWorld. vWorld. edge levels}].

	(destinationPoint notNil and: [aCollectionOfVertices notEmpty]) ifTrue: [
		destWorld := SMARoutingGeometry worldPointFor: destinationPoint.
		lastWorld := points last.
		destWorld ~= lastWorld ifTrue: [
			points add: destWorld.
			segments add: {lastWorld. destWorld. destinationLevels}]].

	^ routeLine points: points; segments: segments; yourself
