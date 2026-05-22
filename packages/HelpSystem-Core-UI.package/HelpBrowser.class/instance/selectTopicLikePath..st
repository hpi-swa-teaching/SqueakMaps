accessing
selectTopicLikePath: referencePath

	| actualTopic |
	actualTopic := referencePath
		inject: (HelpTopic new subtopics: self toplevelTopics)
		into: [:parent :referenceSubtopic |
			(referenceSubtopic key ifNotNil: [parent subtopicAt: referenceSubtopic key])
				ifNil: [^ nil]].
	
	self currentTopic: actualTopic.
	self detect: [:topic | topic = actualTopic] ifFound: [:topic :path |
		self currentParentTopic: (path atLast: 1 ifAbsent: [nil]);
		currentTopicPath: path, {topic}.
		^ topic].
	^ nil