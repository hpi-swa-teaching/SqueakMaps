accessing
currentTopic: aHelpTopic

	self okToChange ifFalse: [^ self].
	self currentTopic == aHelpTopic ifTrue: [^ self].

	((self currentTopic notNil
		and: [aHelpTopic notNil])
		and: [self currentTopic key ~= aHelpTopic key]) ifTrue: [
			"Clear selection, we have new contents."
			self topicContentsSelection: (1 to: 0)].
	
	currentTopic := aHelpTopic.
	topicPath := nil.
	topicContentsSelection := nil.
	
	self changed: #currentTopic.
	self changed: #topicContents.
	self changed: #showContents.