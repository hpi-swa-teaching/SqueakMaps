updating
changed: aspect

	(isUpdating == true and: [aspect == #topicContents]) ifTrue: [^ self].
	super changed: aspect.