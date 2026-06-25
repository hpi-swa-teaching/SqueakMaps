as yet unclassified
extractPoints: anXMLRoot in: aDictionary

	anXMLRoot tagsNamed: #node do: [:p | | point |
		point := SMAPoint new
			id: (p attributeAt: #id) asInteger;
			lat: (p attributeAt: #lat) asNumber;
			lon: (p attributeAt: #lon) asNumber.
		
		(aDictionary includesKey: point id) ifTrue: [aDictionary at: point id put: point]]