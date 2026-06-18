as yet unclassified
poiWithId: anId in: aCollectionOfPOIs

	^ aCollectionOfPOIs
		detect: [:poi | poi id = anId]
		ifNone: [nil]