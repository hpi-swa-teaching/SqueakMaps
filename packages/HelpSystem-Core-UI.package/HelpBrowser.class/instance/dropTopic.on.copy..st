drag'n'drop
dropTopic: aHelpTopic on: parentTopic copy: aBoolean

	| oldParent newTopic newTopicPath |
	oldParent := self currentParentTopic.
	newTopic := parentTopic addSubtopic: aHelpTopic confirming: aBoolean.
	self detect: [:t | t = parentTopic] ifFound: [:t :path | newTopicPath := path , {t. newTopic}].
	newTopic ifNil: [^ self].
	aBoolean ifFalse: [
		| oldTopic |
		(oldTopic := oldParent refresh; subtopicAt: aHelpTopic key) notNil "maybe #addSubtopic:confirming: already moved it (class based topics)"
			 ==> [oldParent removeSubtopic: oldTopic confirming: false ignoreUsers: {parentTopic -> newTopic}]
				ifTrue: [
					"any ancestors in the hierarchy have potentially been refreshed, so find the parent again through its path."
					newTopicPath ifNotNil: [
						self selectTopicLikePath: newTopicPath]]].