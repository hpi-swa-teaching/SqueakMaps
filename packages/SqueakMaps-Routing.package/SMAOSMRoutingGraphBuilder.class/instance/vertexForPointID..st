private
vertexForPointID: aPointID

	| point |
	(pointIDToVertexIndex includesKey: aPointID) ifTrue: [^ pointIDToVertexIndex at: aPointID].
	point := points at: aPointID ifAbsent: [nil].
	point ifNil: [^ nil].
	^ self addVertex: point levels: OrderedCollection new
