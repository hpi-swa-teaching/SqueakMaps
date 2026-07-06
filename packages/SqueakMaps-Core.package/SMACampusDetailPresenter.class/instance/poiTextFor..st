building
poiTextFor: aCollectionOfPOIs

	^ String streamContents: [:stream |
		aCollectionOfPOIs
			do: [:poi | stream nextPutAll: (self routeLabelForPOI: poi)]
			separatedBy: [stream nextPutAll: ', ']]
