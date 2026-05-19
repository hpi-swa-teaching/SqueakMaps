menus
treeListMenu: aMenu
	<treeListMenu>
	
	| topic |
	topic := self currentTopic ifNil: [^ aMenu].
	
	^ topic == self searchTopic
		ifFalse:
			[topic
				topicMenu: aMenu
				parentTopic: self currentParentTopic]
		ifTrue:
			[topic basicTopicMenu: aMenu]