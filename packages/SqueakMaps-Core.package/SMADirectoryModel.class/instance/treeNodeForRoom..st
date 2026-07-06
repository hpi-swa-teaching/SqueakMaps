building
treeNodeForRoom: aRoom

	^ SMAListNode new
		label: (self campusLookup routeLabelForRoom: aRoom);
		target: aRoom;
		yourself
