accessing
floorChangeLabelForLevels: aCollectionOfLevels

	| destinationLevel |
	destinationLevel := aCollectionOfLevels detect: [:level | level ~= self visibleLevel] ifNone: [nil].
	^ destinationLevel ifNil: ['Etage wechseln'] ifNotNil: ['Etage wechseln: ', destinationLevel asString]