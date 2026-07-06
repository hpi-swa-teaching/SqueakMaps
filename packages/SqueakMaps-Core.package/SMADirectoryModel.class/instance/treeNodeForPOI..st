building
treeNodeForPOI: aPOI

	^ SMAListNode new
		label: (self campusLookup routeLabelForPOI: aPOI);
		target: aPOI;
		yourself
