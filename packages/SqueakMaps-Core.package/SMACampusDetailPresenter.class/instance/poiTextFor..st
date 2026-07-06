building
poiTextFor: aCollectionOfPOIs

	^ String streamContents: [:stream |
		aCollectionOfPOIs
			do: [:poi | stream nextPutAll: (self campusLookup routeLabelForPOI: poi)]
			separatedBy: [stream nextPutAll: ', ']]
