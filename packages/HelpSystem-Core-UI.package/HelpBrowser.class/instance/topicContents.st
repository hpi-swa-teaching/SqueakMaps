accessing - ui
topicContents

	^ (self currentTopic ifNil: [self rootTopic]) ifNil: '' ifNotNil: #contents