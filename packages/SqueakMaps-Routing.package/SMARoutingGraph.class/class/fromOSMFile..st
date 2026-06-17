as yet unclassified
fromOSMFile: aReadStream

	| root xmldoc points ways adjacencyList vertices pointIDToVertex |
	xmldoc := XMLDOMParser parseDocumentFrom: aReadStream.
	root := xmldoc root.
	
	points := Dictionary new.
	ways := self extractWays: root andFillNeededPoints: points.
	self extractPoints: root in: points.
	
	vertices := Array new: points size.
	adjacencyList := Array new: points size.
	1 to: points size do: [:i | adjacencyList at: i put: OrderedCollection new].
	pointIDToVertex := Dictionary new.
	
	ways do: [:way |
		way points overlappingPairsDo: [:id1 :id2 | | u v edge |
			u := pointIDToVertex at: id1 ifAbsentPut: [pointIDToVertex size + 1].
			v := pointIDToVertex at: id2 ifAbsentPut: [pointIDToVertex size + 1].
			edge := SMARoutingGraphEdge new
				u: u;
				v: v;
				levels: way levels;
				length: ((points at: id1) distanceTo: (points at: id2)).
			(adjacencyList at: u) add: edge.
			(adjacencyList at: v) add: edge]].
	
	pointIDToVertex associationsDo: [:a | vertices at: a value put: (points at: a key)].
	
	^ self new withVertices: vertices adjacencyList: adjacencyList andPointToVertexDict: pointIDToVertex