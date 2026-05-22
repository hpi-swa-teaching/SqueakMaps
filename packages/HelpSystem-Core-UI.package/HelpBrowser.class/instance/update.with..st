updating
update: aspect with: object

	aspect == #contents ifTrue: [
		object == self currentTopic ifTrue: [self changed: #topicContents]].
	aspect == #searchResultSelected ifTrue: [
		self currentTopicPath: object].
	aspect == #searchResultContentsSelected ifTrue: [
		self topicContentsSelection: object].