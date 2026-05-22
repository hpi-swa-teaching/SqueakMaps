accessing - ui
windowTitle

	^ '{1}: {2}' format: {
		self rootTopic
			ifNil: ['Help Browser' translated]
			ifNotNil: [:topic | topic title].
		(self currentTopicPath collect: [:topic | topic title])
			reversed joinSeparatedBy: ' > '}