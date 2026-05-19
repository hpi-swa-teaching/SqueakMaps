menus
treeKey: aChar from: aView event: anEvent

	anEvent anyModifierKeyPressed ifFalse: [^ false].
	^ (self currentTopic topicMenuKey: aChar fromParent: self currentParentTopic)