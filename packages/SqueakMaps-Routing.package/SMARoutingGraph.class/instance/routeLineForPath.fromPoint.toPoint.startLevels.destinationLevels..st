as yet unclassified
routeLineForPath: aCollectionOfVertices fromPoint: startPoint toPoint: destinationPoint startLevels: startLevels destinationLevels: destinationLevels

	| routeLine points segments firstWorld lastWorld |
	routeLine := SMARouteLine new.
	points := OrderedCollection new.
	segments := OrderedCollection new.
	
	startPoint ifNotNil: [points add: (self worldPointFor: startPoint)].
	aCollectionOfVertices do: [:vertex | points add: (self worldPointFor: (vertices at: vertex))].
	destinationPoint ifNotNil: [points add: (self worldPointFor: destinationPoint)].
	
	(startPoint notNil and: [aCollectionOfVertices notEmpty]) ifTrue: [
		firstWorld := self worldPointFor: (vertices at: aCollectionOfVertices first).
		segments add: {(self worldPointFor: startPoint). firstWorld. startLevels}].
	aCollectionOfVertices overlappingPairsDo: [:u :v |
		| edge startWorld endWorld |
		edge := self edgeFrom: u to: v.
		startWorld := self worldPointFor: (vertices at: u).
		endWorld := self worldPointFor: (vertices at: v).
		segments add: {startWorld. endWorld. edge levels}].
	(destinationPoint notNil and: [aCollectionOfVertices notEmpty]) ifTrue: [
		lastWorld := self worldPointFor: (vertices at: aCollectionOfVertices last).
		segments add: {lastWorld. (self worldPointFor: destinationPoint). destinationLevels}].
	
	^ routeLine
		points: points;
		segments: segments;
		yourself