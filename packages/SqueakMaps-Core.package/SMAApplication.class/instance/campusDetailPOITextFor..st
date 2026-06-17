building
campusDetailPOITextFor: aCollectionOfPOIs

	^ String streamContents: [:stream |
		| first |
		first := true.
		aCollectionOfPOIs do: [:poi |
			first
				ifTrue: [first := false]
				ifFalse: [stream nextPutAll: ', '].
			stream nextPutAll: poi displayName]]