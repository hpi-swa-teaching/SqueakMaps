drag'n'drop
wantsToDropItem: anObject type: aSymbol from: source morph: aTransferMorph on: parentTopicOrNil

	aSymbol = #helpTopic ifFalse: [^ false].
	^ parentTopicOrNil notNil and: [parentTopicOrNil canAddSubtopic: anObject]