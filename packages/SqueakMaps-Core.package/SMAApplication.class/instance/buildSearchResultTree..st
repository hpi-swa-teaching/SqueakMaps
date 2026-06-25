building
buildSearchResultTree: aBuilder

	^ aBuilder pluggableTreeSpec new
		model: self;
		roots: #searchTreeRoots;
		getChildren: #childrenOfTreeNode:;
		hasChildren: #treeNodeHasChildren:;
		label: #labelOfTreeNode:;
		getSelected: #selectedTreeNode;
		setSelected: #selectedTreeNode:;
		autoDeselect: true;
		frame: (0 @ 0.08 corner: 1 @ 0.9);
		yourself