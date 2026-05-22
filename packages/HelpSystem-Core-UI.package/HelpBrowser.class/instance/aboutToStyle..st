styling
aboutToStyle: aStyler

	^ self currentTopic
		ifNil: [false]
		ifNotNil: [:topic | topic usesCodeStyling]