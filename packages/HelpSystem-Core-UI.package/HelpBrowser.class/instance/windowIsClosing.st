updating
windowIsClosing

	super windowIsClosing.
	
	self searchTopic subtopics do: [:topic |
		topic stopSearch].