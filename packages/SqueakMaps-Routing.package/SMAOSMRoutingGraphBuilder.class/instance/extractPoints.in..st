private
extractPoints: anXMLRoot in: aDictionary

	anXMLRoot tagsNamed: #node do: [:element |
		| point |
		point := SMAPoint new
			id: (element attributeAt: #id) asInteger;
			lat: (element attributeAt: #lat) asNumber;
			lon: (element attributeAt: #lon) asNumber.
		(aDictionary includesKey: point id) ifTrue: [aDictionary at: point id put: point]]
