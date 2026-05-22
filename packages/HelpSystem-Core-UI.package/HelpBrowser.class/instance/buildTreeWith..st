toolbuilder
buildTreeWith: builder

	^ builder pluggableTreeSpec new
		model: self;
		nodeClass: HelpTopicListItemWrapper;
		roots: #toplevelTopics;
		menu: #treeMenu:;
		keyPress: #treeKey:from:event:;
		getSelected: #currentTopic;
		setSelected: #currentTopic:;
		getSelectedPath: #currentTopicPath;
		setSelectedPath: #noteTopicPath:;
		setSelectedParent: #currentParentTopic:;
		dragItem: #dragTopic:;
		dragType: #dragTypeForTopicTypeAt:;
		dropAccept: #wantsToDropItem:type:from:morph:on:;
		dropItem: #dropTopic:on:copy:;
		autoDeselect: false;
		frame: (LayoutFrame
			fractions: (0@0 corner: 0.3@1)
			offsets: (0@ builder inputFieldHeight corner: 0@0));
		yourself