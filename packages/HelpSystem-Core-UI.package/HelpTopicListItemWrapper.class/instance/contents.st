accessing
contents
	
	^self item subtopics sorted collect: [ :each | 
		HelpTopicListItemWrapper with: each model: self model parent: self]
