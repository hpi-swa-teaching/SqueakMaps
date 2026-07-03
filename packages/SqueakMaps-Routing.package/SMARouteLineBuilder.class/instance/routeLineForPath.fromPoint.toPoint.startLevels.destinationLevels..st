as yet unclassified
routeLineForPath: aCollectionOfVertices fromPoint: startPoint toPoint: destinationPoint startLevels: startLevels destinationLevels: destinationLevels

	| routeLine points segments firstWorld lastWorld |
	routeLine := SMARouteLine new.
	points := OrderedCollection new.
	segments := OrderedCollection new.

	startPoint ifNotNil: [points add: (SMARoutingGeometry worldPointFor: startPoint)].
	aCollectionOfVertices do: [:vertex |
		points add: (SMARoutingGeometry worldPointFor: (graph pointAtVertex: vertex))].
	destinationPoint ifNotNil: [points add: (SMARoutingGeometry worldPointFor: destinationPoint)].

	(startPoint notNil and: [aCollectionOfVertices notEmpty]) ifTrue: [
		firstWorld := SMARoutingGeometry worldPointFor: (graph pointAtVertex: aCollectionOfVertices first).
		segments add: {(SMARoutingGeometry worldPointFor: startPoint). firstWorld. startLevels}].
	aCollectionOfVertices overlappingPairsDo: [:u :v |
		| edge startWorld endWorld |
		edge := graph edgeFrom: u to: v.
		startWorld := SMARoutingGeometry worldPointFor: (graph pointAtVertex: u).
		endWorld := SMARoutingGeometry worldPointFor: (graph pointAtVertex: v).
		segments add: {startWorld. endWorld. edge levels}].
	(destinationPoint notNil and: [aCollectionOfVertices notEmpty]) ifTrue: [
		lastWorld := SMARoutingGeometry worldPointFor: (graph pointAtVertex: aCollectionOfVertices last).
		segments add: {lastWorld. (SMARoutingGeometry worldPointFor: destinationPoint). destinationLevels}].

	^ routeLine points: points; segments: segments; yourself