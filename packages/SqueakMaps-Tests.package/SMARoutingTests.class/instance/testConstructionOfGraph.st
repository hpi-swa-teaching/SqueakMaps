as yet unclassified
testConstructionOfGraph

	| root xmldoc points ways way graph |
	
	xmldoc := XMLDOMParser parseDocumentFrom: self singlePathOSMXMLFile.
	root := xmldoc root.
	points := SMARoutingGraph extractPoints: root.
	self assert: 6 equals: points size.
	ways := SMARoutingGraph extractWays: root.
	self assert: 1 equals: ways size.	
	way := ways first.
	{-34267. -30168. -35447.-30173.-34274} do: [:id | self assert: (way points includes: id)].


	
	graph := SMARoutingGraph fromOSMFile: self singlePathOSMXMLFile.
	{-34267. -30168. -35447.-30173.-34274} do: [:id | self assert: (graph vertexOfPointID: id) ~= nil].
	self assert: {2. 4} asOrderedCollection equals: (graph neighbors: 3).
	self assert: {4} asOrderedCollection equals: (graph neighbors: 5).
	self assert: (points at: -30168) equals: (graph vertices at: 2).