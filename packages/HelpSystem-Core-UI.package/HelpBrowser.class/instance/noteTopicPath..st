accessing
noteTopicPath: someTopics
	"Keep track of the current topic path as reported by the view through manual selection."

	topicPath := someTopics.
	self changed: #windowTitle.
