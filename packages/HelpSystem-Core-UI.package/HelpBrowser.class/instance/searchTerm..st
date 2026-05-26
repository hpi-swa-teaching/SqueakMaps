searching
searchTerm: aTextOrString
	"Spawn a new search topic."	

	| topic term |
	self okToChange ifFalse: [^ self].
	aTextOrString ifEmpty: [^ self]. "do not bother SearchTopic with empty search terms"
	
	term := aTextOrString asString.
	topic := self searchTopic subtopics
		detect: [:t | t term = term]
		ifNone: [ | newTopic |
			newTopic := SearchTopic new
				term: term;
				yourself.
			self searchTopic addSubtopic: newTopic.
			newTopic addDependent: self. "Tell me about your updates."
			newTopic].
		
	"self changed: #searchTerm."
	
	"Select results and expand searches node if necessary."
	self currentTopicPath: {self searchTopic. topic}.
	self assert: self currentTopic == topic.
	
	topic
		topicsToSearch: self toplevelTopics allButLast;
		startSearch.