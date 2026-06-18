as yet unclassified
fromOSMFile: aReadStream forMapMorph: aMapMorph

	| root xmldoc points ways adjacencyList vertices pointIDToVertex vertexLevels addVertex |
	xmldoc := XMLDOMParser parseDocumentFrom: aReadStream.
	root := xmldoc root.
	
	points := Dictionary new.
	ways := self extractWays: root andFillNeededPoints: points.
	self extractPoints: root in: points.
	
	vertices := OrderedCollection new.
	adjacencyList := OrderedCollection new.
	pointIDToVertex := Dictionary new.
	vertexLevels := OrderedCollection new.
	
	addVertex := [:pointId | | vertex |
		vertex := pointIDToVertex at: pointId ifAbsentPut: [
			vertices add: (points at: pointId).
			adjacencyList add: OrderedCollection new.
			vertexLevels add: OrderedCollection new.
			vertices size].
		vertex].
	
	ways do: [:way |
		way points overlappingPairsDo: [:id1 :id2 | | u v |
			u := addVertex value: id1.
			v := addVertex value: id2.
			self addLevels: way levels toVertex: u in: vertexLevels.
			self addLevels: way levels toVertex: v in: vertexLevels.
			self addEdgeFrom: u to: v levels: way levels adjacencyList: adjacencyList]].
	
	^ self new
		withVertices: vertices asArray
		adjacencyList: adjacencyList asArray
		pointToVertexDict: pointIDToVertex
		vertexLevels: vertexLevels asArray