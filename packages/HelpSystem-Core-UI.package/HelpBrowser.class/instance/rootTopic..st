accessing
rootTopic: aHelpTopic
	"set the root topic and work out the top level sub-topics that it implies. Add the search topic at the end of the list"
	rootTopic := aHelpTopic asHelpTopic. 
	
	self toplevelTopics: ((rootTopic ifNil: [#()] ifNotNil: [rootTopic subtopics ifEmpty: [{rootTopic}]]) sorted, {self searchTopic}).
	self changed: #windowTitle.