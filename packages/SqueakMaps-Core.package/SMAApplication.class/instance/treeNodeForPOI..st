building
treeNodeForPOI: aPOI

	^ SMAListNode new
		label: (self routeLabelForPOI: aPOI);
		target: aPOI;
		yourself