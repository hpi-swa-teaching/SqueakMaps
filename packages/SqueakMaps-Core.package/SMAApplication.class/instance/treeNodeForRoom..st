building
treeNodeForRoom: aRoom

	^ SMAListNode new
		label: (self routeLabelForRoom: aRoom);
		target: aRoom;
		yourself