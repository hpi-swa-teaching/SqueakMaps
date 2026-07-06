building
treeNodeForBuilding: aBuilding

	| node |
	node := SMAListNode new
		label: (self campusLookup routeLabelForBuilding: aBuilding);
		target: aBuilding;
		yourself.
	(self roomsForBuilding: aBuilding) do: [:room |
		node addChild: (self treeNodeForRoom: room)].
	^ node
