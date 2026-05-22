accessing
currentTopicPath: someTopics
	"Use the tree structure to select a nested topic."
	
	topicPath := someTopics.
	self changed: #currentTopicPath.