accessing
currentParentTopic: aHelpTopic

	currentParentTopic := aHelpTopic ifNil: [self rootTopic].